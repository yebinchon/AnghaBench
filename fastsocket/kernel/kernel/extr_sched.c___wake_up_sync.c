
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int __wake_up_sync_key (int *,unsigned int,int,int *) ;

void __wake_up_sync(wait_queue_head_t *q, unsigned int mode, int nr_exclusive)
{
 __wake_up_sync_key(q, mode, nr_exclusive, ((void*)0));
}
