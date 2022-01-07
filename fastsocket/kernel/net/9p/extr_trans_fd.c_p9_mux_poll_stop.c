
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_poll_wait {int * wait_addr; int wait; } ;
struct p9_conn {int poll_pending_link; struct p9_poll_wait* poll_wait; } ;


 int ARRAY_SIZE (struct p9_poll_wait*) ;
 int list_del_init (int *) ;
 int p9_poll_lock ;
 int remove_wait_queue (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void p9_mux_poll_stop(struct p9_conn *m)
{
 unsigned long flags;
 int i;

 for (i = 0; i < ARRAY_SIZE(m->poll_wait); i++) {
  struct p9_poll_wait *pwait = &m->poll_wait[i];

  if (pwait->wait_addr) {
   remove_wait_queue(pwait->wait_addr, &pwait->wait);
   pwait->wait_addr = ((void*)0);
  }
 }

 spin_lock_irqsave(&p9_poll_lock, flags);
 list_del_init(&m->poll_pending_link);
 spin_unlock_irqrestore(&p9_poll_lock, flags);
}
