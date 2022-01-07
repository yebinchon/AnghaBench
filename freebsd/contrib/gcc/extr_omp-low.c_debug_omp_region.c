
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omp_region {int dummy; } ;


 int dump_omp_region (int ,struct omp_region*,int ) ;
 int stderr ;

void
debug_omp_region (struct omp_region *region)
{
  dump_omp_region (stderr, region, 0);
}
