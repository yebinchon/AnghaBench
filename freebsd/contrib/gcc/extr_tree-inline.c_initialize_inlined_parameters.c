
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_8__ {int block; } ;
typedef TYPE_2__ copy_body_data ;
typedef int basic_block ;
struct TYPE_10__ {scalar_t__ static_chain_decl; } ;
struct TYPE_7__ {scalar_t__ (* convert_parm_for_inlining ) (scalar_t__,scalar_t__,scalar_t__,int) ;} ;
struct TYPE_9__ {TYPE_1__ tree_inlining; } ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 TYPE_6__* DECL_STRUCT_FUNCTION (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ current_function_decl ;
 int declare_inline_vars (int ,scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 TYPE_4__ lang_hooks ;
 int setup_one_parameter (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__*) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
initialize_inlined_parameters (copy_body_data *id, tree args, tree static_chain,
          tree fn, basic_block bb)
{
  tree parms;
  tree a;
  tree p;
  tree vars = NULL_TREE;
  int argnum = 0;


  parms = DECL_ARGUMENTS (fn);



  for (p = parms, a = args; p;
       a = a ? TREE_CHAIN (a) : a, p = TREE_CHAIN (p))
    {
      tree value;

      ++argnum;


      value = lang_hooks.tree_inlining.convert_parm_for_inlining
       (p, a ? TREE_VALUE (a) : NULL_TREE, fn, argnum);

      setup_one_parameter (id, p, value, fn, bb, &vars);
    }


  p = DECL_STRUCT_FUNCTION (fn)->static_chain_decl;
  gcc_assert (fn != current_function_decl);
  if (p)
    {

      gcc_assert (static_chain);

      setup_one_parameter (id, p, static_chain, fn, bb, &vars);
    }

  declare_inline_vars (id->block, vars);
}
