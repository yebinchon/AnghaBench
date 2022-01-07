
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tipc_node {int link_cnt; int ** links; } ;
struct link {int addr; TYPE_1__* b_ptr; } ;
struct TYPE_6__ {TYPE_2__** zones; } ;
struct TYPE_5__ {int links; } ;
struct TYPE_4__ {size_t identity; } ;


 TYPE_3__ tipc_net ;
 size_t tipc_zone (int ) ;

void tipc_node_detach_link(struct tipc_node *n_ptr, struct link *l_ptr)
{
 n_ptr->links[l_ptr->b_ptr->identity] = ((void*)0);
 tipc_net.zones[tipc_zone(l_ptr->addr)]->links--;
 n_ptr->link_cnt--;
}
