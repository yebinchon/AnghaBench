
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_lock ;
 int gomp_mutex_lock (int *) ;

void
GOMP_critical_start (void)
{
  gomp_mutex_lock (&default_lock);
}
