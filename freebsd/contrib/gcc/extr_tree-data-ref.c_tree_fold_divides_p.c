
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int tree_fold_gcd (int ,int ) ;
 int tree_int_cst_equal (int ,int ) ;

__attribute__((used)) static inline bool
tree_fold_divides_p (tree a,
       tree b)
{

  return tree_int_cst_equal (a, tree_fold_gcd (a, b));
}
