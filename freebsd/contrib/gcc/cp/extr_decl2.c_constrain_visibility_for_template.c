
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 int DECL_VISIBILITY (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int INNERMOST_TEMPLATE_ARGS (int ) ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_PUBLIC (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 int TREE_VEC_ELT (int ,int) ;
 int TREE_VEC_LENGTH (int ) ;
 scalar_t__ TYPE_P (int ) ;
 scalar_t__ VAR_DECL ;
 int VISIBILITY_ANON ;
 int constrain_visibility (int ,int) ;
 int type_visibility (int ) ;

__attribute__((used)) static void
constrain_visibility_for_template (tree decl, tree targs)
{



  tree args = INNERMOST_TEMPLATE_ARGS (targs);
  int i;
  for (i = TREE_VEC_LENGTH (args); i > 0; --i)
    {
      int vis = 0;

      tree arg = TREE_VEC_ELT (args, i-1);
      if (TYPE_P (arg))
 vis = type_visibility (arg);
      else if (TREE_TYPE (arg) && POINTER_TYPE_P (TREE_TYPE (arg)))
 {
   STRIP_NOPS (arg);
   if (TREE_CODE (arg) == ADDR_EXPR)
     arg = TREE_OPERAND (arg, 0);
   if (TREE_CODE (arg) == VAR_DECL
       || TREE_CODE (arg) == FUNCTION_DECL)
     {
       if (! TREE_PUBLIC (arg))
  vis = VISIBILITY_ANON;
       else
  vis = DECL_VISIBILITY (arg);
     }
 }
      if (vis)
 constrain_visibility (decl, vis);
    }
}
