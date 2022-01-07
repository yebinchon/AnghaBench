
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_neh {scalar_t__ context; struct uwb_rc* rc; } ;
struct uwb_rc {int neh_lock; } ;


 int ETIMEDOUT ;
 int __uwb_rc_neh_rm (struct uwb_rc*,struct uwb_rc_neh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uwb_rc_neh_cb (struct uwb_rc_neh*,int *,int ) ;

__attribute__((used)) static void uwb_rc_neh_timer(unsigned long arg)
{
 struct uwb_rc_neh *neh = (struct uwb_rc_neh *)arg;
 struct uwb_rc *rc = neh->rc;
 unsigned long flags;

 spin_lock_irqsave(&rc->neh_lock, flags);
 if (neh->context)
  __uwb_rc_neh_rm(rc, neh);
 else
  neh = ((void*)0);
 spin_unlock_irqrestore(&rc->neh_lock, flags);

 if (neh)
  uwb_rc_neh_cb(neh, ((void*)0), -ETIMEDOUT);
}
