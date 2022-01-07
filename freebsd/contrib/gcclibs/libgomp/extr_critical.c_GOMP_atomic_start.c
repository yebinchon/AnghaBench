
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_lock ;
 int gomp_mutex_lock (int *) ;

void
GOMP_atomic_start (void)
{
  gomp_mutex_lock (&atomic_lock);
}
