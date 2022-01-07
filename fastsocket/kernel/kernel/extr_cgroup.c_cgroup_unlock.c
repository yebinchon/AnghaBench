
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgroup_mutex ;
 int mutex_unlock (int *) ;

void cgroup_unlock(void)
{
 mutex_unlock(&cgroup_mutex);
}
