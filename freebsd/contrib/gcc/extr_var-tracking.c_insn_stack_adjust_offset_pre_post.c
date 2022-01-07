
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SEQUENCE ;
 scalar_t__ SET ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int stack_adjust_offset_pre_post (int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void
insn_stack_adjust_offset_pre_post (rtx insn, HOST_WIDE_INT *pre,
       HOST_WIDE_INT *post)
{
  *pre = 0;
  *post = 0;

  if (GET_CODE (PATTERN (insn)) == SET)
    stack_adjust_offset_pre_post (PATTERN (insn), pre, post);
  else if (GET_CODE (PATTERN (insn)) == PARALLEL
    || GET_CODE (PATTERN (insn)) == SEQUENCE)
    {
      int i;



      for ( i = XVECLEN (PATTERN (insn), 0) - 1; i >= 0; i--)
 if (GET_CODE (XVECEXP (PATTERN (insn), 0, i)) == SET)
   stack_adjust_offset_pre_post (XVECEXP (PATTERN (insn), 0, i),
     pre, post);
    }
}
