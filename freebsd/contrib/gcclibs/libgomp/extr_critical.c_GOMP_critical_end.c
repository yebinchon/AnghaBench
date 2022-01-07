
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_lock ;
 int gomp_mutex_unlock (int *) ;

void
GOMP_critical_end (void)
{
  gomp_mutex_unlock (&default_lock);
}
