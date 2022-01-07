
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_IS_BUILTIN_CONSTANT_P (int ) ;

bool
builtin_valid_in_constant_expr_p (tree decl)
{


  return DECL_IS_BUILTIN_CONSTANT_P (decl);
}
