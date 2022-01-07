
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int utrace; } ;


 int kmem_cache_free (int ,int ) ;
 int utrace_cachep ;

void utrace_free_task(struct task_struct *task)
{
 kmem_cache_free(utrace_cachep, task->utrace);
}
