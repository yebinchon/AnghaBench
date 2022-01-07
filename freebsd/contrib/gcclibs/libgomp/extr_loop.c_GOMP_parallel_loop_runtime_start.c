
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_parallel_loop_start (void (*) (void*),void*,unsigned int,long,long,long,int ,int ) ;
 int gomp_run_sched_chunk ;
 int gomp_run_sched_var ;

void
GOMP_parallel_loop_runtime_start (void (*fn) (void *), void *data,
      unsigned num_threads, long start, long end,
      long incr)
{
  gomp_parallel_loop_start (fn, data, num_threads, start, end, incr,
       gomp_run_sched_var, gomp_run_sched_chunk);
}
