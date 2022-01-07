
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_state; } ;


 int BH_Lock ;
 int clear_bit_unlock (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int wake_up_bit (int *,int ) ;

void unlock_buffer(struct buffer_head *bh)
{
 clear_bit_unlock(BH_Lock, &bh->b_state);
 smp_mb__after_clear_bit();
 wake_up_bit(&bh->b_state, BH_Lock);
}
