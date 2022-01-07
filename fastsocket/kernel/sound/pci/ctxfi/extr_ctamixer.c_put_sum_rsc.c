
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sum_mgr {int mgr_lock; int mgr; } ;
struct TYPE_2__ {int msr; } ;
struct sum {int * idx; TYPE_1__ rsc; } ;


 int kfree (struct sum*) ;
 int mgr_put_resource (int *,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sum_rsc_uninit (struct sum*) ;

__attribute__((used)) static int put_sum_rsc(struct sum_mgr *mgr, struct sum *sum)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&mgr->mgr_lock, flags);
 for (i = 0; i < sum->rsc.msr; i++)
  mgr_put_resource(&mgr->mgr, 1, sum->idx[i]);

 spin_unlock_irqrestore(&mgr->mgr_lock, flags);
 sum_rsc_uninit(sum);
 kfree(sum);

 return 0;
}
