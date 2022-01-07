
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct omp_for_data {scalar_t__ n1; scalar_t__ n2; scalar_t__ step; scalar_t__ chunk_size; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int succs; } ;


 int EDGE_COUNT (int ) ;
 int * NULL_TREE ;
 scalar_t__ OMP_FOR ;
 scalar_t__ OMP_SECTIONS ;
 scalar_t__ TREE_CODE (int *) ;
 TYPE_1__* bb_for_stmt (int *) ;
 int * build_int_cst (int ,int ) ;
 int extract_omp_for_data (int *,struct omp_for_data*) ;
 int * fold_convert (int ,scalar_t__) ;
 int gcc_unreachable () ;
 int long_integer_type_node ;
 int * tree_cons (int *,int *,int *) ;
 int unsigned_type_node ;

__attribute__((used)) static tree
get_ws_args_for (tree ws_stmt)
{
  tree t;

  if (TREE_CODE (ws_stmt) == OMP_FOR)
    {
      struct omp_for_data fd;
      tree ws_args;

      extract_omp_for_data (ws_stmt, &fd);

      ws_args = NULL_TREE;
      if (fd.chunk_size)
 {
   t = fold_convert (long_integer_type_node, fd.chunk_size);
   ws_args = tree_cons (((void*)0), t, ws_args);
 }

      t = fold_convert (long_integer_type_node, fd.step);
      ws_args = tree_cons (((void*)0), t, ws_args);

      t = fold_convert (long_integer_type_node, fd.n2);
      ws_args = tree_cons (((void*)0), t, ws_args);

      t = fold_convert (long_integer_type_node, fd.n1);
      ws_args = tree_cons (((void*)0), t, ws_args);

      return ws_args;
    }
  else if (TREE_CODE (ws_stmt) == OMP_SECTIONS)
    {
      basic_block bb = bb_for_stmt (ws_stmt);
      t = build_int_cst (unsigned_type_node, EDGE_COUNT (bb->succs));
      t = tree_cons (((void*)0), t, ((void*)0));
      return t;
    }

  gcc_unreachable ();
}
