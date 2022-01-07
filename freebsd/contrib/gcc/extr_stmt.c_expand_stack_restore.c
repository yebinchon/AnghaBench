
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int DECL_RTL (int ) ;
 int NULL_RTX ;
 int SAVE_BLOCK ;
 int emit_stack_restore (int ,int ,int ) ;

void
expand_stack_restore (tree var)
{
  rtx sa = DECL_RTL (var);

  emit_stack_restore (SAVE_BLOCK, sa, NULL_RTX);
}
