
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum lvalue_use { ____Placeholder_lvalue_use } lvalue_use ;


 scalar_t__ COMPONENT_REF ;
 int G_ (char*) ;
 int READONLY_MSG (int ,int ,int ,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_READONLY (int ) ;
 scalar_t__ VAR_DECL ;
 int error (int ,...) ;
 int gcc_assert (int) ;
 int lv_asm ;
 int lv_assign ;
 int lv_decrement ;
 int lv_increment ;

__attribute__((used)) static void
readonly_error (tree arg, enum lvalue_use use)
{
  gcc_assert (use == lv_assign || use == lv_increment || use == lv_decrement
       || use == lv_asm);






  if (TREE_CODE (arg) == COMPONENT_REF)
    {
      if (TYPE_READONLY (TREE_TYPE (TREE_OPERAND (arg, 0))))
 readonly_error (TREE_OPERAND (arg, 0), use);
      else
 error ((use == lv_assign ? (G_("assignment of read-only member %qD")) : (use == lv_increment ? (G_("increment of read-only member %qD")) : (use == lv_decrement ? (G_("decrement of read-only member %qD")) : (G_("read-only member %qD used as %<asm%> output"))))),



        TREE_OPERAND (arg, 1));
    }
  else if (TREE_CODE (arg) == VAR_DECL)
    error ((use == lv_assign ? (G_("assignment of read-only variable %qD")) : (use == lv_increment ? (G_("increment of read-only variable %qD")) : (use == lv_decrement ? (G_("decrement of read-only variable %qD")) : (G_("read-only variable %qD used as %<asm%> output"))))),



    arg);
  else
    error ((use == lv_assign ? (G_("assignment of read-only location")) : (use == lv_increment ? (G_("increment of read-only location")) : (use == lv_decrement ? (G_("decrement of read-only location")) : (G_("read-only location used as %<asm%> output"))))));



}
