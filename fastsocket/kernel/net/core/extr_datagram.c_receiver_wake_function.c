
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_t ;


 unsigned long POLLERR ;
 unsigned long POLLIN ;
 int autoremove_wake_function (int *,unsigned int,int,void*) ;

__attribute__((used)) static int receiver_wake_function(wait_queue_t *wait, unsigned mode, int sync,
      void *key)
{
 unsigned long bits = (unsigned long)key;




 if (bits && !(bits & (POLLIN | POLLERR)))
  return 0;
 return autoremove_wake_function(wait, mode, sync, key);
}
