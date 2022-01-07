
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int atomic_read (int *) ;
 unsigned int max (unsigned int,unsigned int) ;
 int min (unsigned int,scalar_t__) ;
 scalar_t__ slow_work_max_threads ;
 int slow_work_thread_count ;
 unsigned int vslow_work_proportion ;

__attribute__((used)) static unsigned slow_work_calc_vsmax(void)
{
 unsigned vsmax;

 vsmax = atomic_read(&slow_work_thread_count) * vslow_work_proportion;
 vsmax /= 100;
 vsmax = max(vsmax, 1U);
 return min(vsmax, slow_work_max_threads - 1);
}
