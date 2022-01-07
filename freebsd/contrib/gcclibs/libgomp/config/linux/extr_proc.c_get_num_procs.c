
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_ISSET (int ,int *) ;
 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int _SC_NPROCESSORS_ONLN ;
 int cpuset_popcount (int *) ;
 int * gomp_cpu_affinity ;
 size_t gomp_cpu_affinity_len ;
 int gomp_nthreads_var ;
 scalar_t__ pthread_getaffinity_np (int ,int,int *) ;
 int pthread_self () ;
 int sysconf (int ) ;

__attribute__((used)) static int
get_num_procs (void)
{
  return gomp_nthreads_var;

}
