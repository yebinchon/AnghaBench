
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* lang_get_callee_fndecl ) (scalar_t__) ;} ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_READONLY (scalar_t__) ;
 int TREE_THIS_VOLATILE (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 TYPE_1__ lang_hooks ;
 scalar_t__ stub1 (scalar_t__) ;

tree
get_callee_fndecl (tree call)
{
  tree addr;

  if (call == error_mark_node)
    return call;



  gcc_assert (TREE_CODE (call) == CALL_EXPR);



  addr = TREE_OPERAND (call, 0);

  STRIP_NOPS (addr);


  if (DECL_P (addr) && TREE_CODE (addr) != FUNCTION_DECL
      && TREE_READONLY (addr) && ! TREE_THIS_VOLATILE (addr)
      && DECL_INITIAL (addr))
    addr = DECL_INITIAL (addr);



  if (TREE_CODE (addr) == ADDR_EXPR
      && TREE_CODE (TREE_OPERAND (addr, 0)) == FUNCTION_DECL)
    return TREE_OPERAND (addr, 0);



  return lang_hooks.lang_get_callee_fndecl (call);
}
