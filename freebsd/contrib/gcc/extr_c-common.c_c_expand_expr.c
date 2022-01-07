
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;



 int COMPOUND_LITERAL_EXPR_DECL (int ) ;
 int TREE_CODE (int ) ;
 int emit_local_var (int ) ;
 int expand_expr_real (int ,int ,int,int,int *) ;
 int gcc_unreachable () ;

rtx
c_expand_expr (tree exp, rtx target, enum machine_mode tmode,
        int modifier ,
        rtx *alt_rtl)
{
  switch (TREE_CODE (exp))
    {
    case 128:
      {


 tree decl = COMPOUND_LITERAL_EXPR_DECL (exp);
 emit_local_var (decl);
 return expand_expr_real (decl, target, tmode, modifier, alt_rtl);
      }

    default:
      gcc_unreachable ();
    }
}
