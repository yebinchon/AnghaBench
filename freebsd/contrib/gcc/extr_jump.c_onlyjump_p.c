
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 scalar_t__ GET_CODE (int ) ;
 int JUMP_P (int *) ;
 scalar_t__ PC ;
 int SET_DEST (int *) ;
 int SET_SRC (int *) ;
 scalar_t__ side_effects_p (int ) ;
 int * single_set (int *) ;

int
onlyjump_p (rtx insn)
{
  rtx set;

  if (!JUMP_P (insn))
    return 0;

  set = single_set (insn);
  if (set == ((void*)0))
    return 0;
  if (GET_CODE (SET_DEST (set)) != PC)
    return 0;
  if (side_effects_p (SET_SRC (set)))
    return 0;

  return 1;
}
