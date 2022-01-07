
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int NULL_RTX ;
 int SAVE_BLOCK ;
 int do_pending_stack_adjust () ;
 int emit_stack_save (int ,int *,int ) ;

rtx
expand_stack_save (void)
{
  rtx ret = NULL_RTX;

  do_pending_stack_adjust ();
  emit_stack_save (SAVE_BLOCK, &ret, NULL_RTX);
  return ret;
}
