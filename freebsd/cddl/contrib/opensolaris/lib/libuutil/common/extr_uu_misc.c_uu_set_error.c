
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_t ;


 scalar_t__ pthread_key_create (int *,int *) ;
 scalar_t__ pthread_key_create_once_np (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_setspecific (int ,void*) ;
 int uu_error_key ;
 int uu_error_key_setup ;
 int uu_key_lock ;

void
uu_set_error(uint_t code)
{







 if (uu_error_key_setup == 0) {
  (void) pthread_mutex_lock(&uu_key_lock);
  if (uu_error_key_setup == 0) {
   if (pthread_key_create(&uu_error_key, ((void*)0)) != 0)
    uu_error_key_setup = -1;
   else
    uu_error_key_setup = 1;
  }
  (void) pthread_mutex_unlock(&uu_key_lock);
 }

 if (uu_error_key_setup > 0)
  (void) pthread_setspecific(uu_error_key,
      (void *)(uintptr_t)code);
}
