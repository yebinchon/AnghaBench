
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_writequeues () ;
 int con_cache ;
 int connections_lock ;
 int foreach_conn (int ) ;
 int free_conn ;
 int kmem_cache_destroy (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stop_conn ;
 int work_stop () ;

void dlm_lowcomms_stop(void)
{



 mutex_lock(&connections_lock);
 foreach_conn(stop_conn);
 mutex_unlock(&connections_lock);

 work_stop();

 mutex_lock(&connections_lock);
 clean_writequeues();

 foreach_conn(free_conn);

 mutex_unlock(&connections_lock);
 kmem_cache_destroy(con_cache);
}
