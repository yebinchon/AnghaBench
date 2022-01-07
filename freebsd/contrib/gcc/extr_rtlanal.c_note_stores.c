
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ COND_EXEC ;
 scalar_t__ COND_EXEC_CODE (scalar_t__) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ PARALLEL ;
 scalar_t__ REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 scalar_t__ ZERO_EXTRACT ;
 void stub1 (scalar_t__,scalar_t__,void*) ;
 void stub2 (scalar_t__,scalar_t__,void*) ;

void
note_stores (rtx x, void (*fun) (rtx, rtx, void *), void *data)
{
  int i;

  if (GET_CODE (x) == COND_EXEC)
    x = COND_EXEC_CODE (x);

  if (GET_CODE (x) == SET || GET_CODE (x) == CLOBBER)
    {
      rtx dest = SET_DEST (x);

      while ((GET_CODE (dest) == SUBREG
       && (!REG_P (SUBREG_REG (dest))
    || REGNO (SUBREG_REG (dest)) >= FIRST_PSEUDO_REGISTER))
      || GET_CODE (dest) == ZERO_EXTRACT
      || GET_CODE (dest) == STRICT_LOW_PART)
 dest = XEXP (dest, 0);



      if (GET_CODE (dest) == PARALLEL)
 {
   for (i = XVECLEN (dest, 0) - 1; i >= 0; i--)
     if (XEXP (XVECEXP (dest, 0, i), 0) != 0)
       (*fun) (XEXP (XVECEXP (dest, 0, i), 0), x, data);
 }
      else
 (*fun) (dest, x, data);
    }

  else if (GET_CODE (x) == PARALLEL)
    for (i = XVECLEN (x, 0) - 1; i >= 0; i--)
      note_stores (XVECEXP (x, 0, i), fun, data);
}
