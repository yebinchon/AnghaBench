
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct netlbl_unlhsh_iface {int ifindex; int valid; int list; int rcu; int addr6_list; int addr4_list; } ;
struct TYPE_2__ {int * tbl; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RCU_HEAD (int *) ;
 int kfree (struct netlbl_unlhsh_iface*) ;
 struct netlbl_unlhsh_iface* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int netlbl_unlhsh ;
 int netlbl_unlhsh_def ;
 size_t netlbl_unlhsh_hash (int) ;
 int netlbl_unlhsh_lock ;
 int * netlbl_unlhsh_search_iface (int) ;
 int rcu_assign_pointer (int ,struct netlbl_unlhsh_iface*) ;
 TYPE_1__* rcu_dereference (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct netlbl_unlhsh_iface *netlbl_unlhsh_add_iface(int ifindex)
{
 u32 bkt;
 struct netlbl_unlhsh_iface *iface;

 iface = kzalloc(sizeof(*iface), GFP_ATOMIC);
 if (iface == ((void*)0))
  return ((void*)0);

 iface->ifindex = ifindex;
 INIT_LIST_HEAD(&iface->addr4_list);
 INIT_LIST_HEAD(&iface->addr6_list);
 iface->valid = 1;
 INIT_RCU_HEAD(&iface->rcu);

 spin_lock(&netlbl_unlhsh_lock);
 if (ifindex > 0) {
  bkt = netlbl_unlhsh_hash(ifindex);
  if (netlbl_unlhsh_search_iface(ifindex) != ((void*)0))
   goto add_iface_failure;
  list_add_tail_rcu(&iface->list,
      &rcu_dereference(netlbl_unlhsh)->tbl[bkt]);
 } else {
  INIT_LIST_HEAD(&iface->list);
  if (rcu_dereference(netlbl_unlhsh_def) != ((void*)0))
   goto add_iface_failure;
  rcu_assign_pointer(netlbl_unlhsh_def, iface);
 }
 spin_unlock(&netlbl_unlhsh_lock);

 return iface;

add_iface_failure:
 spin_unlock(&netlbl_unlhsh_lock);
 kfree(iface);
 return ((void*)0);
}
