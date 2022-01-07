
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_BUCKETS ;
 scalar_t__ free_phinode_count ;
 int ** free_phinodes ;

void
init_phinodes (void)
{
  int i;

  for (i = 0; i < NUM_BUCKETS - 2; i++)
    free_phinodes[i] = ((void*)0);
  free_phinode_count = 0;
}
