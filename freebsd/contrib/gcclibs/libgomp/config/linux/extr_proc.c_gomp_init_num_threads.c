
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset ;
typedef int cpu_set_t ;


 int _SC_NPROCESSORS_ONLN ;
 int cpuset_popcount (int *) ;
 int gomp_nthreads_var ;
 scalar_t__ pthread_getaffinity_np (int ,int,int *) ;
 int pthread_self () ;
 int sysconf (int ) ;

void
gomp_init_num_threads (void)
{
}
