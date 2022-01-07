
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ processing_template_decl ;
 int save_expr (int ) ;

tree
cp_save_expr (tree expr)
{




  if (processing_template_decl)
    return expr;
  return save_expr (expr);
}
