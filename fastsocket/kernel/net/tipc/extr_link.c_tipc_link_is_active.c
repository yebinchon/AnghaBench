
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {TYPE_1__* owner; } ;
struct TYPE_2__ {struct link** active_links; } ;



int tipc_link_is_active(struct link *l_ptr)
{
 return ((l_ptr->owner->active_links[0] == l_ptr) ||
  (l_ptr->owner->active_links[1] == l_ptr));
}
