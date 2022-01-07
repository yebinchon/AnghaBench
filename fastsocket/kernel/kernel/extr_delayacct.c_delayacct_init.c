
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMEM_CACHE (int ,int ) ;
 int SLAB_PANIC ;
 int delayacct_cache ;
 int delayacct_tsk_init (int *) ;
 int init_task ;
 int task_delay_info ;

void delayacct_init(void)
{
 delayacct_cache = KMEM_CACHE(task_delay_info, SLAB_PANIC);
 delayacct_tsk_init(&init_task);
}
