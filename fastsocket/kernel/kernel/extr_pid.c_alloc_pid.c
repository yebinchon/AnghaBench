
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upid {int nr; struct pid_namespace* ns; int pid_chain; } ;
struct pid_namespace {int level; int pid_cachep; int nr_hashed; struct pid_namespace* parent; } ;
struct pid {int level; struct upid* numbers; int * tasks; int count; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int PIDTYPE_MAX ;
 int alloc_pidmap (struct pid_namespace*) ;
 int atomic_set (int *,int) ;
 int free_pidmap (struct upid*) ;
 int get_pid_ns (struct pid_namespace*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int is_child_reaper (struct pid*) ;
 struct pid* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct pid*) ;
 int * pid_hash ;
 size_t pid_hashfn (int,struct pid_namespace*) ;
 scalar_t__ pid_ns_prepare_proc (struct pid_namespace*) ;
 int pidmap_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int ) ;

struct pid *alloc_pid(struct pid_namespace *ns)
{
 struct pid *pid;
 enum pid_type type;
 int i, nr;
 struct pid_namespace *tmp;
 struct upid *upid;

 pid = kmem_cache_alloc(ns->pid_cachep, GFP_KERNEL);
 if (!pid)
  goto out;

 tmp = ns;
 pid->level = ns->level;
 for (i = ns->level; i >= 0; i--) {
  nr = alloc_pidmap(tmp);
  if (nr < 0)
   goto out_free;

  pid->numbers[i].nr = nr;
  pid->numbers[i].ns = tmp;
  tmp = tmp->parent;
 }

 if (unlikely(is_child_reaper(pid))) {
  if (pid_ns_prepare_proc(ns))
   goto out_free;
 }

 get_pid_ns(ns);
 atomic_set(&pid->count, 1);
 for (type = 0; type < PIDTYPE_MAX; ++type)
  INIT_HLIST_HEAD(&pid->tasks[type]);

 upid = pid->numbers + ns->level;
 spin_lock_irq(&pidmap_lock);
 for ( ; upid >= pid->numbers; --upid) {
  hlist_add_head_rcu(&upid->pid_chain,
    &pid_hash[pid_hashfn(upid->nr, upid->ns)]);
  upid->ns->nr_hashed++;
 }
 spin_unlock_irq(&pidmap_lock);

out:
 return pid;

out_free:
 while (++i <= ns->level)
  free_pidmap(pid->numbers + i);

 kmem_cache_free(ns->pid_cachep, pid);
 pid = ((void*)0);
 goto out;
}
