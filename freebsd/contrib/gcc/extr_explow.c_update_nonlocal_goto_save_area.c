
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
struct TYPE_2__ {int nonlocal_goto_save_area; } ;


 int ARRAY_REF ;
 int EXPAND_WRITE ;
 int NULL_RTX ;
 int NULL_TREE ;
 int SAVE_NONLOCAL ;
 int VOIDmode ;
 int build4 (int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* cfun ;
 int emit_stack_save (int ,int *,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int integer_one_node ;
 int ptr_type_node ;

void
update_nonlocal_goto_save_area (void)
{
  tree t_save;
  rtx r_save;





  t_save = build4 (ARRAY_REF, ptr_type_node, cfun->nonlocal_goto_save_area,
     integer_one_node, NULL_TREE, NULL_TREE);
  r_save = expand_expr (t_save, NULL_RTX, VOIDmode, EXPAND_WRITE);

  emit_stack_save (SAVE_NONLOCAL, &r_save, NULL_RTX);
}
