
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_omp_region (int ,int ,int ) ;
 int root_omp_region ;
 int stderr ;

void
debug_all_omp_regions (void)
{
  dump_omp_region (stderr, root_omp_region, 0);
}
