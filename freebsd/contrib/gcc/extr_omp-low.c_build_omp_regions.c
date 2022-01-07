
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDI_DOMINATORS ;
 int ENTRY_BLOCK_PTR ;
 int build_omp_regions_1 (int ,int *) ;
 int calculate_dominance_info (int ) ;
 int gcc_assert (int ) ;
 int * root_omp_region ;

__attribute__((used)) static void
build_omp_regions (void)
{
  gcc_assert (root_omp_region == ((void*)0));
  calculate_dominance_info (CDI_DOMINATORS);
  build_omp_regions_1 (ENTRY_BLOCK_PTR, ((void*)0));
}
