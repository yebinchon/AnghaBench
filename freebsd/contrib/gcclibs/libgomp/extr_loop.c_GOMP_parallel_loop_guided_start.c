
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFS_GUIDED ;
 int gomp_parallel_loop_start (void (*) (void*),void*,unsigned int,long,long,long,int ,long) ;

void
GOMP_parallel_loop_guided_start (void (*fn) (void *), void *data,
     unsigned num_threads, long start, long end,
     long incr, long chunk_size)
{
  gomp_parallel_loop_start (fn, data, num_threads, start, end, incr,
       GFS_GUIDED, chunk_size);
}
