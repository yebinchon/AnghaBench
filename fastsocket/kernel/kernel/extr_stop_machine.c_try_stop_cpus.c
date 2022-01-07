
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef int cpu_stop_fn_t ;


 int EAGAIN ;
 int __stop_cpus (struct cpumask const*,int ,void*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int stop_cpus_mutex ;

int try_stop_cpus(const struct cpumask *cpumask, cpu_stop_fn_t fn, void *arg)
{
 int ret;


 if (!mutex_trylock(&stop_cpus_mutex))
  return -EAGAIN;
 ret = __stop_cpus(cpumask, fn, arg);
 mutex_unlock(&stop_cpus_mutex);
 return ret;
}
