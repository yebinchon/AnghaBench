
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int dummy; } ;


 int STARTING_EVT ;
 int dbg (char*,struct link*) ;
 int link_state_event (struct link*,int ) ;

void tipc_link_start(struct link *l_ptr)
{
 dbg("tipc_link_start %x\n", l_ptr);
 link_state_event(l_ptr, STARTING_EVT);
}
