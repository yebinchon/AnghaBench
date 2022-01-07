
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PARALLEL ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ USE ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static rtx
single_set_for_csa (rtx insn)
{
  int i;
  rtx tmp = single_set (insn);
  if (tmp)
    return tmp;

  if (!NONJUMP_INSN_P (insn)
      || GET_CODE (PATTERN (insn)) != PARALLEL)
    return NULL_RTX;

  tmp = PATTERN (insn);
  if (GET_CODE (XVECEXP (tmp, 0, 0)) != SET)
    return NULL_RTX;

  for (i = 1; i < XVECLEN (tmp, 0); ++i)
    {
      rtx this = XVECEXP (tmp, 0, i);


      if (GET_CODE (this) == SET
   && SET_SRC (this) == SET_DEST (this))
 ;
      else if (GET_CODE (this) != CLOBBER
        && GET_CODE (this) != USE)
 return NULL_RTX;
    }

  return XVECEXP (tmp, 0, 0);
}
