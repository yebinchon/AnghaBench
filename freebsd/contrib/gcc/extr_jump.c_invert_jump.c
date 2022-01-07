
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int JUMP_LABEL (int ) ;
 scalar_t__ apply_change_group () ;
 int cancel_changes (int ) ;
 scalar_t__ invert_jump_1 (int ,int ) ;
 int redirect_jump_2 (int ,int ,int ,int,int) ;

int
invert_jump (rtx jump, rtx nlabel, int delete_unused)
{
  rtx olabel = JUMP_LABEL (jump);

  if (invert_jump_1 (jump, nlabel) && apply_change_group ())
    {
      redirect_jump_2 (jump, olabel, nlabel, delete_unused, 1);
      return 1;
    }
  cancel_changes (0);
  return 0;
}
