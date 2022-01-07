
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PARALLEL ;
 scalar_t__ SET ;
 int SET_SRC (scalar_t__) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 int is_mem_ref (int ) ;

__attribute__((used)) static bool
is_load_insn1 (rtx pat)
{
  if (!pat || pat == NULL_RTX)
    return 0;

  if (GET_CODE (pat) == SET)
    return is_mem_ref (SET_SRC (pat));

  if (GET_CODE (pat) == PARALLEL)
    {
      int i;

      for (i = 0; i < XVECLEN (pat, 0); i++)
 if (is_load_insn1 (XVECEXP (pat, 0, i)))
   return 1;
    }

  return 0;
}
