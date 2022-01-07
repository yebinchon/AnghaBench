
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DECL_ARTIFICIAL (int ) ;
 int DECL_MODE (int ) ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 int SET_DECL_RTL (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_ALIGN (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int gen_reg_rtx (int) ;
 int mark_reg_pointer (int ,int ) ;
 int mark_user_reg (int ) ;
 int promote_mode (int ,int ,int*,int ) ;

__attribute__((used)) static void
expand_one_register_var (tree var)
{
  tree type = TREE_TYPE (var);
  int unsignedp = TYPE_UNSIGNED (type);
  enum machine_mode reg_mode
    = promote_mode (type, DECL_MODE (var), &unsignedp, 0);
  rtx x = gen_reg_rtx (reg_mode);

  SET_DECL_RTL (var, x);


  if (!DECL_ARTIFICIAL (var))
    {
      mark_user_reg (x);







      if (POINTER_TYPE_P (type))
 mark_reg_pointer (x, TYPE_ALIGN (TREE_TYPE (TREE_TYPE (var))));
    }
}
