
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_rmh {int dummy; } ;
struct pcxhr_mgr {int msg_lock; } ;


 int pcxhr_send_msg_nolock (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pcxhr_send_msg(struct pcxhr_mgr *mgr, struct pcxhr_rmh *rmh)
{
 unsigned long flags;
 int err;
 spin_lock_irqsave(&mgr->msg_lock, flags);
 err = pcxhr_send_msg_nolock(mgr, rmh);
 spin_unlock_irqrestore(&mgr->msg_lock, flags);
 return err;
}
