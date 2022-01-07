
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_target {int cpu_list; int uses_mmap; int uid; int tid; int pid; } ;
struct perf_evlist {int * threads; int * cpus; } ;


 void* cpu_map__dummy_new () ;
 int * cpu_map__new (int ) ;
 int perf_target__has_cpu (struct perf_target*) ;
 scalar_t__ perf_target__has_task (struct perf_target*) ;
 int thread_map__delete (int *) ;
 int * thread_map__new_str (int ,int ,int ) ;

int perf_evlist__create_maps(struct perf_evlist *evlist,
        struct perf_target *target)
{
 evlist->threads = thread_map__new_str(target->pid, target->tid,
           target->uid);

 if (evlist->threads == ((void*)0))
  return -1;

 if (perf_target__has_task(target))
  evlist->cpus = cpu_map__dummy_new();
 else if (!perf_target__has_cpu(target) && !target->uses_mmap)
  evlist->cpus = cpu_map__dummy_new();
 else
  evlist->cpus = cpu_map__new(target->cpu_list);

 if (evlist->cpus == ((void*)0))
  goto out_delete_threads;

 return 0;

out_delete_threads:
 thread_map__delete(evlist->threads);
 return -1;
}
