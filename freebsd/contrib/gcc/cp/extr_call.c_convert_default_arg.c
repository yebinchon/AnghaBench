
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 int CONSTANT_CLASS_P (char*) ;
 scalar_t__ CONSTRUCTOR ;
 scalar_t__ DECL_TEMPLATE_INFO (char*) ;
 scalar_t__ DEFAULT_ARG ;
 int LOOKUP_NORMAL ;
 scalar_t__ TREE_CODE (char*) ;
 char* break_out_target_exprs (char*) ;
 char* convert_for_arg_passing (char*,char*) ;
 char* convert_for_initialization (int ,char*,char*,int ,char*,char*,int) ;
 char* digest_init (char*,char*) ;
 int error (char*,int,char*) ;
 char* error_mark_node ;
 char* tsubst_default_argument (char*,char*,char*) ;
 char* unshare_expr (char*) ;

tree
convert_default_arg (tree type, tree arg, tree fn, int parmnum)
{


  if (TREE_CODE (arg) == DEFAULT_ARG)
    {
      error ("the default argument for parameter %d of %qD has "
      "not yet been parsed",
      parmnum, fn);
      return error_mark_node;
    }

  if (fn && DECL_TEMPLATE_INFO (fn))
    arg = tsubst_default_argument (fn, type, arg);

  arg = break_out_target_exprs (arg);

  if (TREE_CODE (arg) == CONSTRUCTOR)
    {
      arg = digest_init (type, arg);
      arg = convert_for_initialization (0, type, arg, LOOKUP_NORMAL,
     "default argument", fn, parmnum);
    }
  else
    {






      if (!CONSTANT_CLASS_P (arg))
 arg = unshare_expr (arg);
      arg = convert_for_initialization (0, type, arg, LOOKUP_NORMAL,
     "default argument", fn, parmnum);
      arg = convert_for_arg_passing (type, arg);
    }

  return arg;
}
