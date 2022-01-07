
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_ordered_sync () ;

void
GOMP_ordered_start (void)
{
  gomp_ordered_sync ();
}
