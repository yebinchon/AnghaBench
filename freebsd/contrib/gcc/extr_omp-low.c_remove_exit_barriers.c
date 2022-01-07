
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omp_region {scalar_t__ type; struct omp_region* next; struct omp_region* inner; } ;


 scalar_t__ OMP_PARALLEL ;
 int remove_exit_barrier (struct omp_region*) ;

__attribute__((used)) static void
remove_exit_barriers (struct omp_region *region)
{
  if (region->type == OMP_PARALLEL)
    remove_exit_barrier (region);

  if (region->inner)
    {
      region = region->inner;
      remove_exit_barriers (region);
      while (region->next)
 {
   region = region->next;
   remove_exit_barriers (region);
 }
    }
}
