
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_mutex_lock (int *) ;
 int uu_avl_lockup () ;
 int uu_key_lock ;
 int uu_list_lockup () ;
 int uu_panic_lock ;

__attribute__((used)) static void
uu_lockup(void)
{
 (void) pthread_mutex_lock(&uu_panic_lock);

 (void) pthread_mutex_lock(&uu_key_lock);

 uu_avl_lockup();
 uu_list_lockup();
}
