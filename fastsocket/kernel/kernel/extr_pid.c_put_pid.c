
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_namespace {int pid_cachep; } ;
struct pid {size_t level; int count; TYPE_1__* numbers; } ;
struct TYPE_2__ {struct pid_namespace* ns; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int kmem_cache_free (int ,struct pid*) ;
 int put_pid_ns (struct pid_namespace*) ;

void put_pid(struct pid *pid)
{
 struct pid_namespace *ns;

 if (!pid)
  return;

 ns = pid->numbers[pid->level].ns;
 if ((atomic_read(&pid->count) == 1) ||
      atomic_dec_and_test(&pid->count)) {
  kmem_cache_free(ns->pid_cachep, pid);
  put_pid_ns(ns);
 }
}
