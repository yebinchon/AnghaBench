
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gomp_resolve_num_threads (unsigned int) ;
 int gomp_team_start (void (*) (void*),void*,unsigned int,int *) ;

void
GOMP_parallel_start (void (*fn) (void *), void *data, unsigned num_threads)
{
  num_threads = gomp_resolve_num_threads (num_threads);
  gomp_team_start (fn, data, num_threads, ((void*)0));
}
