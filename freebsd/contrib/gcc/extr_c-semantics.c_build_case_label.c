
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CASE_LABEL_EXPR ;
 int build_stmt (int ,int ,int ,int ) ;

tree
build_case_label (tree low_value, tree high_value, tree label_decl)
{
  return build_stmt (CASE_LABEL_EXPR, low_value, high_value, label_decl);
}
