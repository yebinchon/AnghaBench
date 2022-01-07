
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_team_end () ;

void
GOMP_parallel_end (void)
{
  gomp_team_end ();
}
