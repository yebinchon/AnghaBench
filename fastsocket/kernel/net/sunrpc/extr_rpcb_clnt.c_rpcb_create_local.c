
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEFINE_MUTEX ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpcb_create_local_net () ;
 scalar_t__ rpcb_create_local_unix () ;
 scalar_t__ rpcb_get_local () ;

int rpcb_create_local(void)
{
 static DEFINE_MUTEX(rpcb_create_local_mutex);
 int result = 0;

 if (rpcb_get_local())
  return result;

 mutex_lock(&rpcb_create_local_mutex);
 if (rpcb_get_local())
  goto out;

 if (rpcb_create_local_unix() != 0)
  result = rpcb_create_local_net();

out:
 mutex_unlock(&rpcb_create_local_mutex);
 return result;
}
