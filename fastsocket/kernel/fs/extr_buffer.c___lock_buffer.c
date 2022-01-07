
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_state; } ;


 int BH_Lock ;
 int TASK_UNINTERRUPTIBLE ;
 int sync_buffer ;
 int wait_on_bit_lock (int *,int ,int ,int ) ;

void __lock_buffer(struct buffer_head *bh)
{
 wait_on_bit_lock(&bh->b_state, BH_Lock, sync_buffer,
       TASK_UNINTERRUPTIBLE);
}
