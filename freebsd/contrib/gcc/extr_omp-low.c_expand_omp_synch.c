
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omp_region {scalar_t__ exit; scalar_t__ entry; } ;
typedef int block_stmt_iterator ;
typedef scalar_t__ basic_block ;
struct TYPE_2__ {void* flags; } ;


 void* EDGE_FALLTHRU ;
 scalar_t__ OMP_CRITICAL ;
 scalar_t__ OMP_MASTER ;
 scalar_t__ OMP_ORDERED ;
 scalar_t__ OMP_RETURN ;
 scalar_t__ OMP_SINGLE ;
 scalar_t__ TREE_CODE (int ) ;
 int bsi_last (scalar_t__) ;
 int bsi_remove (int *,int) ;
 int bsi_stmt (int ) ;
 int gcc_assert (int) ;
 TYPE_1__* single_succ_edge (scalar_t__) ;

__attribute__((used)) static void
expand_omp_synch (struct omp_region *region)
{
  basic_block entry_bb, exit_bb;
  block_stmt_iterator si;

  entry_bb = region->entry;
  exit_bb = region->exit;

  si = bsi_last (entry_bb);
  gcc_assert (TREE_CODE (bsi_stmt (si)) == OMP_SINGLE
       || TREE_CODE (bsi_stmt (si)) == OMP_MASTER
       || TREE_CODE (bsi_stmt (si)) == OMP_ORDERED
       || TREE_CODE (bsi_stmt (si)) == OMP_CRITICAL);
  bsi_remove (&si, 1);
  single_succ_edge (entry_bb)->flags = EDGE_FALLTHRU;

  if (exit_bb)
    {
      si = bsi_last (exit_bb);
      gcc_assert (TREE_CODE (bsi_stmt (si)) == OMP_RETURN);
      bsi_remove (&si, 1);
      single_succ_edge (exit_bb)->flags = EDGE_FALLTHRU;
    }
}
