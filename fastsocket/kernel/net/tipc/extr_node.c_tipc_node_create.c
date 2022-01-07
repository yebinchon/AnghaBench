
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_node {scalar_t__ addr; int last_router; struct tipc_node* next; struct cluster* owner; int nsub; int lock; } ;
struct cluster {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct tipc_node*) ;
 struct tipc_node* kzalloc (int,int ) ;
 int node_create_lock ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_cltr_attach_node (struct cluster*,struct tipc_node*) ;
 struct cluster* tipc_cltr_create (scalar_t__) ;
 struct cluster* tipc_cltr_find (scalar_t__) ;
 struct tipc_node* tipc_nodes ;
 int warn (char*) ;

struct tipc_node *tipc_node_create(u32 addr)
{
 struct cluster *c_ptr;
 struct tipc_node *n_ptr;
 struct tipc_node **curr_node;

 spin_lock_bh(&node_create_lock);

 for (n_ptr = tipc_nodes; n_ptr; n_ptr = n_ptr->next) {
  if (addr < n_ptr->addr)
   break;
  if (addr == n_ptr->addr) {
   spin_unlock_bh(&node_create_lock);
   return n_ptr;
  }
 }

 n_ptr = kzalloc(sizeof(*n_ptr),GFP_ATOMIC);
 if (!n_ptr) {
  spin_unlock_bh(&node_create_lock);
  warn("Node creation failed, no memory\n");
  return ((void*)0);
 }

 c_ptr = tipc_cltr_find(addr);
 if (!c_ptr) {
  c_ptr = tipc_cltr_create(addr);
 }
 if (!c_ptr) {
  spin_unlock_bh(&node_create_lock);
  kfree(n_ptr);
  return ((void*)0);
 }

 n_ptr->addr = addr;
  spin_lock_init(&n_ptr->lock);
 INIT_LIST_HEAD(&n_ptr->nsub);
 n_ptr->owner = c_ptr;
 tipc_cltr_attach_node(c_ptr, n_ptr);
 n_ptr->last_router = -1;


 for (curr_node = &tipc_nodes; *curr_node;
      curr_node = &(*curr_node)->next) {
  if (addr < (*curr_node)->addr) {
   n_ptr->next = *curr_node;
   break;
  }
 }
 (*curr_node) = n_ptr;
 spin_unlock_bh(&node_create_lock);
 return n_ptr;
}
