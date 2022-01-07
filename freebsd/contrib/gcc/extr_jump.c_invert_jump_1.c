
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ JUMP_LABEL (scalar_t__) ;
 int SET_SRC (scalar_t__) ;
 int gcc_assert (int) ;
 int invert_exp_1 (int ,scalar_t__) ;
 int num_validated_changes () ;
 scalar_t__ pc_set (scalar_t__) ;
 scalar_t__ redirect_jump_1 (scalar_t__,scalar_t__) ;

int
invert_jump_1 (rtx jump, rtx nlabel)
{
  rtx x = pc_set (jump);
  int ochanges;
  int ok;

  ochanges = num_validated_changes ();
  gcc_assert (x);
  ok = invert_exp_1 (SET_SRC (x), jump);
  gcc_assert (ok);

  if (num_validated_changes () == ochanges)
    return 0;



  return nlabel == JUMP_LABEL (jump) || redirect_jump_1 (jump, nlabel);
}
