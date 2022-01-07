
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int * CASE_HIGH (int ) ;
 int * CASE_LOW (int ) ;
 int SWITCH_LABELS (int ) ;
 int TREE_VEC_ELT (int ,size_t) ;
 size_t TREE_VEC_LENGTH (int ) ;
 int tree_int_cst_compare (int *,int ) ;

__attribute__((used)) static tree
find_case_label_for_value (tree switch_expr, tree val)
{
  tree vec = SWITCH_LABELS (switch_expr);
  size_t low, high, n = TREE_VEC_LENGTH (vec);
  tree default_case = TREE_VEC_ELT (vec, n - 1);

  for (low = -1, high = n - 1; high - low > 1; )
    {
      size_t i = (high + low) / 2;
      tree t = TREE_VEC_ELT (vec, i);
      int cmp;


      cmp = tree_int_cst_compare (CASE_LOW (t), val);

      if (cmp > 0)
 high = i;
      else
 low = i;

      if (CASE_HIGH (t) == ((void*)0))
 {

   if (cmp == 0)
     return t;
 }
      else
 {

   if (cmp <= 0 && tree_int_cst_compare (CASE_HIGH (t), val) >= 0)
     return t;
 }
    }

  return default_case;
}
