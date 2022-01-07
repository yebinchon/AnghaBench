
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int rtnl_mutex ;

void __rtnl_unlock(void)
{
 mutex_unlock(&rtnl_mutex);
}
