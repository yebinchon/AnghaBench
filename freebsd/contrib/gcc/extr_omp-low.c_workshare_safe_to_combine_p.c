
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct omp_for_data {scalar_t__ chunk_size; scalar_t__ step; scalar_t__ n2; scalar_t__ n1; } ;
typedef int basic_block ;


 scalar_t__ OMP_FOR ;
 scalar_t__ OMP_SECTIONS ;
 scalar_t__ TREE_CODE (int ) ;
 int extract_omp_for_data (int ,struct omp_for_data*) ;
 int gcc_assert (int) ;
 int is_gimple_min_invariant (scalar_t__) ;
 int last_stmt (int ) ;

__attribute__((used)) static bool
workshare_safe_to_combine_p (basic_block par_entry_bb, basic_block ws_entry_bb)
{
  struct omp_for_data fd;
  tree par_stmt, ws_stmt;

  par_stmt = last_stmt (par_entry_bb);
  ws_stmt = last_stmt (ws_entry_bb);

  if (TREE_CODE (ws_stmt) == OMP_SECTIONS)
    return 1;

  gcc_assert (TREE_CODE (ws_stmt) == OMP_FOR);

  extract_omp_for_data (ws_stmt, &fd);






  if (!is_gimple_min_invariant (fd.n1)
      || !is_gimple_min_invariant (fd.n2)
      || !is_gimple_min_invariant (fd.step)
      || (fd.chunk_size && !is_gimple_min_invariant (fd.chunk_size)))
    return 0;

  return 1;
}
