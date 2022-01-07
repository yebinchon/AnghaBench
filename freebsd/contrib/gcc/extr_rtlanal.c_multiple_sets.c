
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;

int
multiple_sets (rtx insn)
{
  int found;
  int i;


  if (! INSN_P (insn))
    return 0;


  if (GET_CODE (PATTERN (insn)) == PARALLEL)
    {
      for (i = 0, found = 0; i < XVECLEN (PATTERN (insn), 0); i++)
 if (GET_CODE (XVECEXP (PATTERN (insn), 0, i)) == SET)
   {

     if (found)
       return 1;
     else
       found = 1;
   }
    }


  return 0;
}
