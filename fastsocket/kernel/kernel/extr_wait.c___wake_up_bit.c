
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct wait_bit_key {int dummy; } ;


 int TASK_NORMAL ;
 struct wait_bit_key __WAIT_BIT_KEY_INITIALIZER (void*,int) ;
 int __wake_up (int *,int ,int,struct wait_bit_key*) ;
 scalar_t__ waitqueue_active (int *) ;

void __wake_up_bit(wait_queue_head_t *wq, void *word, int bit)
{
 struct wait_bit_key key = __WAIT_BIT_KEY_INITIALIZER(word, bit);
 if (waitqueue_active(wq))
  __wake_up(wq, TASK_NORMAL, 1, &key);
}
