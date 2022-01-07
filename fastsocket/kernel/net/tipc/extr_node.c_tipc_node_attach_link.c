
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct tipc_node {int link_cnt; struct link** links; int addr; } ;
struct link {int addr; TYPE_3__* b_ptr; } ;
struct TYPE_8__ {TYPE_1__** zones; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {size_t identity; TYPE_2__ publ; } ;
struct TYPE_5__ {int links; } ;


 int addr_string_fill (char*,int ) ;
 int err (char*,int ,...) ;
 TYPE_4__ tipc_net ;
 struct tipc_node* tipc_node_create (int ) ;
 struct tipc_node* tipc_node_find (int ) ;
 size_t tipc_zone (int ) ;

struct tipc_node *tipc_node_attach_link(struct link *l_ptr)
{
 struct tipc_node *n_ptr = tipc_node_find(l_ptr->addr);

 if (!n_ptr)
  n_ptr = tipc_node_create(l_ptr->addr);
 if (n_ptr) {
  u32 bearer_id = l_ptr->b_ptr->identity;
  char addr_string[16];

  if (n_ptr->link_cnt >= 2) {
   err("Attempt to create third link to %s\n",
       addr_string_fill(addr_string, n_ptr->addr));
   return ((void*)0);
  }

  if (!n_ptr->links[bearer_id]) {
   n_ptr->links[bearer_id] = l_ptr;
   tipc_net.zones[tipc_zone(l_ptr->addr)]->links++;
   n_ptr->link_cnt++;
   return n_ptr;
  }
  err("Attempt to establish second link on <%s> to %s \n",
      l_ptr->b_ptr->publ.name,
      addr_string_fill(addr_string, l_ptr->addr));
 }
 return ((void*)0);
}
