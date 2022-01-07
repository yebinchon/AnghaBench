
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct link {int b_ptr; } ;


 scalar_t__ PUSH_FAILED ;
 scalar_t__ tipc_bearer_congested (int ,struct link*) ;
 int tipc_bearer_schedule (int ,struct link*) ;
 scalar_t__ tipc_link_push_packet (struct link*) ;

void tipc_link_push_queue(struct link *l_ptr)
{
 u32 res;

 if (tipc_bearer_congested(l_ptr->b_ptr, l_ptr))
  return;

 do {
  res = tipc_link_push_packet(l_ptr);
 } while (!res);

 if (res == PUSH_FAILED)
  tipc_bearer_schedule(l_ptr->b_ptr, l_ptr);
}
