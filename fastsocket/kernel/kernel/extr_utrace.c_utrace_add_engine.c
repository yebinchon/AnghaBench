
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine_ops {int dummy; } ;
struct utrace_engine {int entry; } ;
struct utrace {int pending_attach; int lock; int attaching; } ;
struct task_struct {scalar_t__ exit_state; scalar_t__ utrace_flags; } ;


 int EEXIST ;
 int ESRCH ;
 scalar_t__ EXIT_DEAD ;
 int REAP ;
 int UTRACE_ATTACH_EXCLUSIVE ;
 scalar_t__ UTRACE_EVENT (int ) ;
 int find_matching_engine (struct utrace*,int,struct utrace_engine_ops const*,void*) ;
 int list_add_tail (int *,int *) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int utrace_add_engine(struct task_struct *target,
        struct utrace *utrace,
        struct utrace_engine *engine,
        int flags,
        const struct utrace_engine_ops *ops,
        void *data)
{
 int ret;

 spin_lock(&utrace->lock);

 ret = -EEXIST;
 if ((flags & UTRACE_ATTACH_EXCLUSIVE) &&
      unlikely(find_matching_engine(utrace, flags, ops, data)))
  goto unlock;
 ret = -ESRCH;
 if (!target->utrace_flags) {
  target->utrace_flags = UTRACE_EVENT(REAP);





  smp_mb();
  if (unlikely(target->exit_state == EXIT_DEAD)) {
   target->utrace_flags = 0;
   goto unlock;
  }
 }
 list_add_tail(&engine->entry, &utrace->attaching);
 utrace->pending_attach = 1;
 ret = 0;
unlock:
 spin_unlock(&utrace->lock);

 return ret;
}
