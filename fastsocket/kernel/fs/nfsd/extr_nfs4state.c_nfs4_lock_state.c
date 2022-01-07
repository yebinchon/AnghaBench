
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_mutex ;
 int mutex_lock (int *) ;

void
nfs4_lock_state(void)
{
 mutex_lock(&client_mutex);
}
