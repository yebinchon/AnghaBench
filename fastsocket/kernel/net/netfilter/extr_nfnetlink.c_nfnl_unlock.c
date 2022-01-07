
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int nfnl_mutex ;

void nfnl_unlock(void)
{
 mutex_unlock(&nfnl_mutex);
}
