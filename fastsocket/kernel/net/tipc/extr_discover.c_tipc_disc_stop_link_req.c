
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_req {int buf; int timer; } ;


 int buf_discard (int ) ;
 int k_cancel_timer (int *) ;
 int k_term_timer (int *) ;
 int kfree (struct link_req*) ;

void tipc_disc_stop_link_req(struct link_req *req)
{
 if (!req)
  return;

 k_cancel_timer(&req->timer);
 k_term_timer(&req->timer);
 buf_discard(req->buf);
 kfree(req);
}
