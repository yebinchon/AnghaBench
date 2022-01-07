
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int REAL_VALUE_TYPE ;


 int POINTER_TYPE ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int build_real (int ,int ) ;
 char* c_getstr (int ) ;
 int real_nan (int *,char const*,int,int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_nan (tree arglist, tree type, int quiet)
{
  REAL_VALUE_TYPE real;
  const char *str;

  if (!validate_arglist (arglist, POINTER_TYPE, VOID_TYPE))
    return 0;
  str = c_getstr (TREE_VALUE (arglist));
  if (!str)
    return 0;

  if (!real_nan (&real, str, quiet, TYPE_MODE (type)))
    return 0;

  return build_real (type, real);
}
