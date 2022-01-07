
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {unsigned int rpipes; int rpipe_bm_lock; int rpipe_bm; } ;


 unsigned int find_next_zero_bit (int ,unsigned int,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned rpipe_get_idx(struct wahc *wa, unsigned rpipe_idx)
{
 unsigned long flags;

 spin_lock_irqsave(&wa->rpipe_bm_lock, flags);
 rpipe_idx = find_next_zero_bit(wa->rpipe_bm, wa->rpipes, rpipe_idx);
 if (rpipe_idx < wa->rpipes)
  set_bit(rpipe_idx, wa->rpipe_bm);
 spin_unlock_irqrestore(&wa->rpipe_bm_lock, flags);

 return rpipe_idx;
}
