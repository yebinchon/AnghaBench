
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace {int resume; int attaching; int attached; int lock; } ;
struct task_struct {struct utrace* utrace; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int UTRACE_RESUME ;
 int kmem_cache_free (int ,struct utrace*) ;
 struct utrace* kmem_cache_zalloc (int ,int ) ;
 scalar_t__ likely (int) ;
 int smp_wmb () ;
 int spin_lock_init (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int utrace_cachep ;

__attribute__((used)) static bool utrace_task_alloc(struct task_struct *task)
{
 struct utrace *utrace = kmem_cache_zalloc(utrace_cachep, GFP_KERNEL);
 if (unlikely(!utrace))
  return 0;
 spin_lock_init(&utrace->lock);
 INIT_LIST_HEAD(&utrace->attached);
 INIT_LIST_HEAD(&utrace->attaching);
 utrace->resume = UTRACE_RESUME;
 task_lock(task);
 if (likely(!task->utrace)) {





  smp_wmb();
  task->utrace = utrace;
 }
 task_unlock(task);

 if (unlikely(task->utrace != utrace))
  kmem_cache_free(utrace_cachep, utrace);
 return 1;
}
