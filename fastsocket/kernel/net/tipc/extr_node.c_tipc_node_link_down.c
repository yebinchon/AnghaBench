
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_node {struct link** active_links; int working_links; } ;
struct link {TYPE_1__* b_ptr; int name; } ;
struct TYPE_2__ {int net_plane; } ;


 int info (char*,int ,int ) ;
 int node_lost_contact (struct tipc_node*) ;
 int node_select_active_links (struct tipc_node*) ;
 int tipc_link_changeover (struct link*) ;
 int tipc_link_is_active (struct link*) ;
 scalar_t__ tipc_node_is_up (struct tipc_node*) ;

void tipc_node_link_down(struct tipc_node *n_ptr, struct link *l_ptr)
{
 struct link **active;

 n_ptr->working_links--;

 if (!tipc_link_is_active(l_ptr)) {
  info("Lost standby link <%s> on network plane %c\n",
       l_ptr->name, l_ptr->b_ptr->net_plane);
  return;
 }
 info("Lost link <%s> on network plane %c\n",
  l_ptr->name, l_ptr->b_ptr->net_plane);

 active = &n_ptr->active_links[0];
 if (active[0] == l_ptr)
  active[0] = active[1];
 if (active[1] == l_ptr)
  active[1] = active[0];
 if (active[0] == l_ptr)
  node_select_active_links(n_ptr);
 if (tipc_node_is_up(n_ptr))
  tipc_link_changeover(l_ptr);
 else
  node_lost_contact(n_ptr);
}
