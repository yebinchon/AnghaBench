
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cpus_allowed; } ;


 int PAGE_SIZE ;
 int callback_mutex ;
 int cpulist_scnprintf (char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cpuset_sprintf_cpulist(char *page, struct cpuset *cs)
{
 int ret;

 mutex_lock(&callback_mutex);
 ret = cpulist_scnprintf(page, PAGE_SIZE, cs->cpus_allowed);
 mutex_unlock(&callback_mutex);

 return ret;
}
