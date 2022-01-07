
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 int * nf_loggers ;
 int rcu_assign_pointer (int ,int *) ;

void nf_log_unbind_pf(u_int8_t pf)
{
 mutex_lock(&nf_log_mutex);
 rcu_assign_pointer(nf_loggers[pf], ((void*)0));
 mutex_unlock(&nf_log_mutex);
}
