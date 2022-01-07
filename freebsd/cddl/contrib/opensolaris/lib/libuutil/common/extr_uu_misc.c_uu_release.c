
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_mutex_unlock (int *) ;
 int uu_avl_release () ;
 int uu_key_lock ;
 int uu_list_release () ;
 int uu_panic_lock ;

__attribute__((used)) static void
uu_release(void)
{
 (void) pthread_mutex_unlock(&uu_panic_lock);

 (void) pthread_mutex_unlock(&uu_key_lock);

 uu_avl_release();
 uu_list_release();
}
