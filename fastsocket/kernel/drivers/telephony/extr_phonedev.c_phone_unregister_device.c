
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phone_device {size_t minor; } ;


 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phone_device** phone_device ;
 int phone_lock ;

void phone_unregister_device(struct phone_device *pfd)
{
 mutex_lock(&phone_lock);
 if (likely(phone_device[pfd->minor] == pfd))
  phone_device[pfd->minor] = ((void*)0);
 mutex_unlock(&phone_lock);
}
