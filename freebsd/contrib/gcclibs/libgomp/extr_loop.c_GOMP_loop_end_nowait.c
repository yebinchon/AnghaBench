
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_work_share_end_nowait () ;

void
GOMP_loop_end_nowait (void)
{
  gomp_work_share_end_nowait ();
}
