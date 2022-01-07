
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;



 int BASELINK_FUNCTIONS (int ) ;

 int EXPAND_NORMAL ;
 int EXPAND_SUM ;


 int Pmode ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int c_expand_expr (int ,int ,int,int,int *) ;
 int const0_rtx ;
 int cplus_expand_constant (int ) ;
 int expand_expr (int ,int ,int,int) ;
 int gcc_unreachable () ;

rtx
cxx_expand_expr (tree exp, rtx target, enum machine_mode tmode, int modifier,
   rtx *alt_rtl)
{
  tree type = TREE_TYPE (exp);
  enum machine_mode mode = TYPE_MODE (type);
  enum tree_code code = TREE_CODE (exp);





  if (mode != Pmode && modifier == EXPAND_SUM)
    modifier = EXPAND_NORMAL;

  switch (code)
    {
    case 128:
      return expand_expr (cplus_expand_constant (exp),
     target, tmode, modifier);

    case 129:

      gcc_unreachable ();

    case 130:

      return const0_rtx;

    case 131:
      return expand_expr (BASELINK_FUNCTIONS (exp), target, tmode,
     modifier);

    default:
      return c_expand_expr (exp, target, tmode, modifier, alt_rtl);
    }
}
