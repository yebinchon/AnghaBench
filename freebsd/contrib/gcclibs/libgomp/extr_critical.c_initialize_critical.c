
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_lock ;
 int create_lock_lock ;
 int default_lock ;
 int gomp_mutex_init (int *) ;

__attribute__((used)) static void __attribute__((constructor))
initialize_critical (void)
{
  gomp_mutex_init (&default_lock);
  gomp_mutex_init (&atomic_lock);

  gomp_mutex_init (&create_lock_lock);

}
