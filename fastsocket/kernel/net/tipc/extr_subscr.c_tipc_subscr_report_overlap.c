
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct subscription {int filter; int (* event_cb ) (struct subscription*,int ,int ,int ,int ,int ) ;} ;


 int TIPC_SUB_PORTS ;
 int stub1 (struct subscription*,int ,int ,int ,int ,int ) ;
 int tipc_subscr_overlap (struct subscription*,int ,int ) ;

void tipc_subscr_report_overlap(struct subscription *sub,
    u32 found_lower,
    u32 found_upper,
    u32 event,
    u32 port_ref,
    u32 node,
    int must)
{
 if (!tipc_subscr_overlap(sub, found_lower, found_upper))
  return;
 if (!must && !(sub->filter & TIPC_SUB_PORTS))
  return;

 sub->event_cb(sub, found_lower, found_upper, event, port_ref, node);
}
