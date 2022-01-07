
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ JUMP_LABEL (scalar_t__) ;
 int apply_change_group () ;
 int redirect_jump_1 (scalar_t__,scalar_t__) ;
 int redirect_jump_2 (scalar_t__,scalar_t__,scalar_t__,int,int ) ;

int
redirect_jump (rtx jump, rtx nlabel, int delete_unused)
{
  rtx olabel = JUMP_LABEL (jump);

  if (nlabel == olabel)
    return 1;

  if (! redirect_jump_1 (jump, nlabel) || ! apply_change_group ())
    return 0;

  redirect_jump_2 (jump, olabel, nlabel, delete_unused, 0);
  return 1;
}
