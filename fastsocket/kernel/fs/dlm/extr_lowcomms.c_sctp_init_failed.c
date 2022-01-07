
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int connections_lock ;
 int foreach_conn (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sctp_init_failed_foreach ;

__attribute__((used)) static void sctp_init_failed(void)
{
 mutex_lock(&connections_lock);

 foreach_conn(sctp_init_failed_foreach);

 mutex_unlock(&connections_lock);
}
