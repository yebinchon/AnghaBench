
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omp_region {int is_combined_parallel; } ;



__attribute__((used)) static inline bool
is_combined_parallel (struct omp_region *region)
{
  return region->is_combined_parallel;
}
