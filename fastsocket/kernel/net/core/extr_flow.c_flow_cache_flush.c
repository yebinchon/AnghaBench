
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_flush_info {int completion; int cpuleft; int * cache; } ;
typedef int DEFINE_MUTEX ;


 int atomic_set (int *,int ) ;
 int flow_cache_flush_per_cpu ;
 int flow_cache_flush_tasklet (unsigned long) ;
 int flow_cache_global ;
 int get_online_cpus () ;
 int init_completion (int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_online_cpus () ;
 int put_online_cpus () ;
 int smp_call_function (int ,struct flow_flush_info*,int ) ;
 int wait_for_completion (int *) ;

void flow_cache_flush(void)
{
 struct flow_flush_info info;
 static DEFINE_MUTEX(flow_flush_sem);


 get_online_cpus();
 mutex_lock(&flow_flush_sem);
 info.cache = &flow_cache_global;
 atomic_set(&info.cpuleft, num_online_cpus());
 init_completion(&info.completion);

 local_bh_disable();
 smp_call_function(flow_cache_flush_per_cpu, &info, 0);
 flow_cache_flush_tasklet((unsigned long)&info);
 local_bh_enable();

 wait_for_completion(&info.completion);
 mutex_unlock(&flow_flush_sem);
 put_online_cpus();
}
