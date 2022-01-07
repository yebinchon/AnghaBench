
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct function {int unexpanded_var_list; } ;


 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 struct function* DECL_STRUCT_FUNCTION (scalar_t__) ;
 int NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 struct function* cfun ;
 scalar_t__ current_function_decl ;
 int tree_cons (int ,scalar_t__,int ) ;

void
record_vars_into (tree vars, tree fn)
{
  struct function *saved_cfun = cfun;

  if (fn != current_function_decl)
    cfun = DECL_STRUCT_FUNCTION (fn);

  for (; vars; vars = TREE_CHAIN (vars))
    {
      tree var = vars;



      if (TREE_CODE (var) != VAR_DECL)
 continue;


      if (DECL_EXTERNAL (var))
 continue;


      cfun->unexpanded_var_list = tree_cons (NULL_TREE, var,
          cfun->unexpanded_var_list);
    }

  if (fn != current_function_decl)
    cfun = saved_cfun;
}
