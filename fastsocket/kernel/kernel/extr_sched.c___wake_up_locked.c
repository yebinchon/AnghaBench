
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int __wake_up_common (int *,unsigned int,int,int ,int *) ;

void __wake_up_locked(wait_queue_head_t *q, unsigned int mode, int nr)
{
 __wake_up_common(q, mode, nr, 0, ((void*)0));
}
