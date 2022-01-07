
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDI_DOMINATORS ;
 int CDI_POST_DOMINATORS ;
 int build_omp_regions () ;
 int cleanup_tree_cfg () ;
 scalar_t__ dump_file ;
 int dump_omp_region (scalar_t__,int ,int ) ;
 int expand_omp (int ) ;
 int fprintf (scalar_t__,char*) ;
 int free_dominance_info (int ) ;
 int free_omp_regions () ;
 int remove_exit_barriers (int ) ;
 int root_omp_region ;

__attribute__((used)) static unsigned int
execute_expand_omp (void)
{
  build_omp_regions ();

  if (!root_omp_region)
    return 0;

  if (dump_file)
    {
      fprintf (dump_file, "\nOMP region tree\n\n");
      dump_omp_region (dump_file, root_omp_region, 0);
      fprintf (dump_file, "\n");
    }

  remove_exit_barriers (root_omp_region);

  expand_omp (root_omp_region);

  free_dominance_info (CDI_DOMINATORS);
  free_dominance_info (CDI_POST_DOMINATORS);
  cleanup_tree_cfg ();

  free_omp_regions ();

  return 0;
}
