
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int mems_allowed; } ;
typedef int nodemask_t ;


 int PAGE_SIZE ;
 int callback_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nodelist_scnprintf (char*,int ,int ) ;

__attribute__((used)) static int cpuset_sprintf_memlist(char *page, struct cpuset *cs)
{
 nodemask_t mask;

 mutex_lock(&callback_mutex);
 mask = cs->mems_allowed;
 mutex_unlock(&callback_mutex);

 return nodelist_scnprintf(page, PAGE_SIZE, mask);
}
