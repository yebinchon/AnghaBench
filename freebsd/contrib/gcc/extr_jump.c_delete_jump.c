
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PC ;
 int SET_DEST (scalar_t__) ;
 int delete_computation (scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;

void
delete_jump (rtx insn)
{
  rtx set = single_set (insn);

  if (set && GET_CODE (SET_DEST (set)) == PC)
    delete_computation (insn);
}
