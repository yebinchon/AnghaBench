
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_omp_clause {int dummy; } ;
typedef enum omp_clause_code { ____Placeholder_omp_clause_code } omp_clause_code ;


 int OMP_CLAUSE ;
 int OMP_CLAUSE_SET_CODE (int ,int) ;
 int TREE_SET_CODE (int ,int ) ;
 int ggc_alloc (int) ;
 int memset (int ,int ,int) ;
 scalar_t__ omp_clause_kind ;
 int* omp_clause_num_ops ;
 int * tree_node_counts ;
 int* tree_node_sizes ;

tree
build_omp_clause (enum omp_clause_code code)
{
  tree t;
  int size, length;

  length = omp_clause_num_ops[code];
  size = (sizeof (struct tree_omp_clause) + (length - 1) * sizeof (tree));

  t = ggc_alloc (size);
  memset (t, 0, size);
  TREE_SET_CODE (t, OMP_CLAUSE);
  OMP_CLAUSE_SET_CODE (t, code);






  return t;
}
