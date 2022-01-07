
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amixer_mgr {int mgr_lock; int mgr; } ;
struct TYPE_2__ {int msr; } ;
struct amixer {int * idx; TYPE_1__ rsc; } ;


 int amixer_rsc_uninit (struct amixer*) ;
 int kfree (struct amixer*) ;
 int mgr_put_resource (int *,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int put_amixer_rsc(struct amixer_mgr *mgr, struct amixer *amixer)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i = 0; i < amixer->rsc.msr; i++)
  mgr_put_resource(&mgr->mgr, 1, amixer->idx[i]);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 amixer_rsc_uninit(amixer);
 kfree(amixer);

 return 0;
}
