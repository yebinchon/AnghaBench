
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CASE_LOW (int ) ;
 int tree_int_cst_compare (int ,int ) ;

__attribute__((used)) static int
compare_case_labels (const void *p1, const void *p2)
{
  tree case1 = *(tree *)p1;
  tree case2 = *(tree *)p2;

  return tree_int_cst_compare (CASE_LOW (case1), CASE_LOW (case2));
}
