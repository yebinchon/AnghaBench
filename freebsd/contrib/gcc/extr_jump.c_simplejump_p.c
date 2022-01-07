
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ JUMP_P (int ) ;
 scalar_t__ LABEL_REF ;
 int PATTERN (int ) ;
 scalar_t__ PC ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;

int
simplejump_p (rtx insn)
{
  return (JUMP_P (insn)
   && GET_CODE (PATTERN (insn)) == SET
   && GET_CODE (SET_DEST (PATTERN (insn))) == PC
   && GET_CODE (SET_SRC (PATTERN (insn))) == LABEL_REF);
}
