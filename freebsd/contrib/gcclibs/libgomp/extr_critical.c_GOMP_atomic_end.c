
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_lock ;
 int gomp_mutex_unlock (int *) ;

void
GOMP_atomic_end (void)
{
  gomp_mutex_unlock (&atomic_lock);
}
