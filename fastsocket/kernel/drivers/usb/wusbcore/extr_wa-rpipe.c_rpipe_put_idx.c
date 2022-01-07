
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int rpipe_bm_lock; int rpipe_bm; } ;


 int clear_bit (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rpipe_put_idx(struct wahc *wa, unsigned rpipe_idx)
{
 unsigned long flags;

 spin_lock_irqsave(&wa->rpipe_bm_lock, flags);
 clear_bit(rpipe_idx, wa->rpipe_bm);
 spin_unlock_irqrestore(&wa->rpipe_bm_lock, flags);
}
