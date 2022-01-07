
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ARRAY_REF ;
 int NULL_TREE ;
 int build4 (int ,int ,int ,int ,int *,int *) ;
 int build_int_cst (int ,unsigned int) ;
 unsigned int* fn_b_ctrs ;
 unsigned int* fn_n_ctrs ;
 int gcc_assert (int) ;
 int get_gcov_type () ;
 unsigned int* prg_n_ctrs ;
 int * tree_ctr_tables ;

tree
tree_coverage_counter_ref (unsigned counter, unsigned no)
{
  tree gcov_type_node = get_gcov_type ();

  gcc_assert (no < fn_n_ctrs[counter] - fn_b_ctrs[counter]);
  no += prg_n_ctrs[counter] + fn_b_ctrs[counter];


  return build4 (ARRAY_REF, gcov_type_node, tree_ctr_tables[counter],
   build_int_cst (NULL_TREE, no), ((void*)0), ((void*)0));
}
