
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct omp_region {int exit; int entry; } ;
typedef int block_stmt_iterator ;
typedef int basic_block ;
struct TYPE_2__ {void* flags; } ;


 int BSI_SAME_STMT ;
 void* EDGE_FALLTHRU ;
 int OMP_CLAUSE_COPYPRIVATE ;
 int OMP_RETURN_NOWAIT (int ) ;
 scalar_t__ OMP_SINGLE ;
 int OMP_SINGLE_CLAUSES (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int alloc_stmt_list () ;
 int bsi_insert_after (int *,int ,int ) ;
 int bsi_last (int ) ;
 int bsi_remove (int *,int) ;
 int bsi_stmt (int ) ;
 int build_omp_barrier (int *) ;
 scalar_t__ find_omp_clause (int ,int ) ;
 int gcc_assert (int) ;
 TYPE_1__* single_succ_edge (int ) ;

__attribute__((used)) static void
expand_omp_single (struct omp_region *region)
{
  basic_block entry_bb, exit_bb;
  block_stmt_iterator si;
  bool need_barrier = 0;

  entry_bb = region->entry;
  exit_bb = region->exit;

  si = bsi_last (entry_bb);



  if (find_omp_clause (OMP_SINGLE_CLAUSES (bsi_stmt (si)),
         OMP_CLAUSE_COPYPRIVATE))
    need_barrier = 1;
  gcc_assert (TREE_CODE (bsi_stmt (si)) == OMP_SINGLE);
  bsi_remove (&si, 1);
  single_succ_edge (entry_bb)->flags = EDGE_FALLTHRU;

  si = bsi_last (exit_bb);
  if (!OMP_RETURN_NOWAIT (bsi_stmt (si)) || need_barrier)
    {
      tree t = alloc_stmt_list ();
      build_omp_barrier (&t);
      bsi_insert_after (&si, t, BSI_SAME_STMT);
    }
  bsi_remove (&si, 1);
  single_succ_edge (exit_bb)->flags = EDGE_FALLTHRU;
}
