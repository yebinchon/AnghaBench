
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct link_req {scalar_t__ timer_intv; int timer; TYPE_2__* bearer; } ;
struct TYPE_3__ {scalar_t__ count; } ;
struct TYPE_4__ {TYPE_1__ nodes; } ;


 scalar_t__ TIPC_LINK_REQ_FAST ;
 scalar_t__ TIPC_LINK_REQ_SLOW ;
 int k_start_timer (int *,scalar_t__) ;

void tipc_disc_update_link_req(struct link_req *req)
{
 if (!req)
  return;

 if (req->timer_intv == TIPC_LINK_REQ_SLOW) {
  if (!req->bearer->nodes.count) {
   req->timer_intv = TIPC_LINK_REQ_FAST;
   k_start_timer(&req->timer, req->timer_intv);
  }
 } else if (req->timer_intv == TIPC_LINK_REQ_FAST) {
  if (req->bearer->nodes.count) {
   req->timer_intv = TIPC_LINK_REQ_SLOW;
   k_start_timer(&req->timer, req->timer_intv);
  }
 } else {

 }
}
