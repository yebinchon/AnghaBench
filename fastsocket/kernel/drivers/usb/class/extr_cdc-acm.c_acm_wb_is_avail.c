
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acm {int write_lock; TYPE_1__* wb; } ;
struct TYPE_2__ {scalar_t__ use; } ;


 int ACM_NW ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int acm_wb_is_avail(struct acm *acm)
{
 int i, n;
 unsigned long flags;

 n = ACM_NW;
 spin_lock_irqsave(&acm->write_lock, flags);
 for (i = 0; i < ACM_NW; i++)
  n -= acm->wb[i].use;
 spin_unlock_irqrestore(&acm->write_lock, flags);
 return n;
}
