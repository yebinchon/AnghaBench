
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int dummy; } ;


 scalar_t__ link_working_unknown (struct link*) ;
 scalar_t__ link_working_working (struct link*) ;

int tipc_link_is_up(struct link *l_ptr)
{
 if (!l_ptr)
  return 0;
 return (link_working_working(l_ptr) || link_working_unknown(l_ptr));
}
