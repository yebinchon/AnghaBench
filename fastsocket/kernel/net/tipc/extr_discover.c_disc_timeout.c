
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_req {int timer_intv; TYPE_3__* bearer; int timer; int dest; int buf; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_7__ {TYPE_4__ publ; TYPE_2__ nodes; TYPE_1__* media; } ;
struct TYPE_5__ {int (* send_msg ) (int ,TYPE_4__*,int *) ;} ;


 int TIPC_LINK_REQ_FAST ;
 int TIPC_LINK_REQ_SLOW ;
 int k_start_timer (int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,TYPE_4__*,int *) ;

__attribute__((used)) static void disc_timeout(struct link_req *req)
{
 spin_lock_bh(&req->bearer->publ.lock);

 req->bearer->media->send_msg(req->buf, &req->bearer->publ, &req->dest);

 if ((req->timer_intv == TIPC_LINK_REQ_SLOW) ||
     (req->timer_intv == TIPC_LINK_REQ_FAST)) {

 } else {
  req->timer_intv *= 2;
  if (req->timer_intv > TIPC_LINK_REQ_FAST)
   req->timer_intv = TIPC_LINK_REQ_FAST;
  if ((req->timer_intv == TIPC_LINK_REQ_FAST) &&
      (req->bearer->nodes.count))
   req->timer_intv = TIPC_LINK_REQ_SLOW;
 }
 k_start_timer(&req->timer, req->timer_intv);

 spin_unlock_bh(&req->bearer->publ.lock);
}
