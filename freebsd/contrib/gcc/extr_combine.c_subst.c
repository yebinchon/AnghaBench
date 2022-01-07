
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ASM_OPERANDS ;
 scalar_t__ CC0 ;
 scalar_t__ CLOBBER ;
 scalar_t__ COMBINE_RTX_EQUAL_P (scalar_t__,scalar_t__) ;
 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int LO_SUM ;
 int MEM ;
 scalar_t__ MODES_TIEABLE_P (int,int) ;
 scalar_t__ OBJECT_P (scalar_t__) ;
 int PARALLEL ;
 scalar_t__ PC ;
 int REG ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_CANNOT_CHANGE_MODE_P (scalar_t__,int,int) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 int STRICT_LOW_PART ;
 int SUBREG ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int SUBST (scalar_t__,scalar_t__) ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 scalar_t__ ZERO_EXTEND ;
 int ZERO_EXTRACT ;
 scalar_t__ cc0_rtx ;
 scalar_t__ combine_simplify_rtx (scalar_t__,int,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ copy_rtx (scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ gen_rtx_CLOBBER (int,scalar_t__) ;
 int n_occurrences ;
 scalar_t__ simplify_subreg (int,scalar_t__,int,int ) ;
 scalar_t__ simplify_unary_operation (scalar_t__,int,scalar_t__,int) ;

__attribute__((used)) static rtx
subst (rtx x, rtx from, rtx to, int in_dest, int unique_copy)
{
  enum rtx_code code = GET_CODE (x);
  enum machine_mode op0_mode = VOIDmode;
  const char *fmt;
  int len, i;
  rtx new;
  if (! in_dest && ((x) == (from) || (REG_P (x) && REG_P (from) && REGNO (x) == REGNO (from) && GET_MODE (x) == GET_MODE (from))))
    {
      n_occurrences++;
      return (unique_copy && n_occurrences > 1 ? copy_rtx (to) : to);
    }
  if (! in_dest && code == REG && REG_P (from)
      && REGNO (x) == REGNO (from))
    return gen_rtx_CLOBBER (GET_MODE (x), const0_rtx);



  if (code != MEM && code != LO_SUM && OBJECT_P (x))
    return x;







  if (((x) == (to) || (REG_P (x) && REG_P (to) && REGNO (x) == REGNO (to) && GET_MODE (x) == GET_MODE (to))))
    return to;
  if (code == PARALLEL
      && GET_CODE (XVECEXP (x, 0, 0)) == SET
      && GET_CODE (SET_SRC (XVECEXP (x, 0, 0))) == ASM_OPERANDS)
    {
      new = subst (XVECEXP (x, 0, 0), from, to, 0, unique_copy);


      if (GET_CODE (new) == CLOBBER
   && XEXP (new, 0) == const0_rtx)
 return new;

      SUBST (XVECEXP (x, 0, 0), new);

      for (i = XVECLEN (x, 0) - 1; i >= 1; i--)
 {
   rtx dest = SET_DEST (XVECEXP (x, 0, i));

   if (!REG_P (dest)
       && GET_CODE (dest) != CC0
       && GET_CODE (dest) != PC)
     {
       new = subst (dest, from, to, 0, unique_copy);


       if (GET_CODE (new) == CLOBBER
    && XEXP (new, 0) == const0_rtx)
  return new;

       SUBST (SET_DEST (XVECEXP (x, 0, i)), new);
     }
 }
    }
  else
    {
      len = GET_RTX_LENGTH (code);
      fmt = GET_RTX_FORMAT (code);





      if (code == SET
   && (REG_P (SET_DEST (x))
       || GET_CODE (SET_DEST (x)) == CC0
       || GET_CODE (SET_DEST (x)) == PC))
 fmt = "ie";



      if (fmt[0] == 'e')
 op0_mode = GET_MODE (XEXP (x, 0));

      for (i = 0; i < len; i++)
 {
   if (fmt[i] == 'E')
     {
       int j;
       for (j = XVECLEN (x, i) - 1; j >= 0; j--)
  {
    if (((XVECEXP (x, i, j)) == (from) || (REG_P (XVECEXP (x, i, j)) && REG_P (from) && REGNO (XVECEXP (x, i, j)) == REGNO (from) && GET_MODE (XVECEXP (x, i, j)) == GET_MODE (from))))
      {
        new = (unique_copy && n_occurrences
        ? copy_rtx (to) : to);
        n_occurrences++;
      }
    else
      {
        new = subst (XVECEXP (x, i, j), from, to, 0,
       unique_copy);



        if (GET_CODE (new) == CLOBBER
     && XEXP (new, 0) == const0_rtx)
   return new;
      }

    SUBST (XVECEXP (x, i, j), new);
  }
     }
   else if (fmt[i] == 'e')
     {

       new = XEXP (x, i);
       if (in_dest
    && i == 0
    && (((code == SUBREG || code == ZERO_EXTRACT)
         && REG_P (new))
        || code == STRICT_LOW_PART))
  ;

       else if (((XEXP (x, i)) == (from) || (REG_P (XEXP (x, i)) && REG_P (from) && REGNO (XEXP (x, i)) == REGNO (from) && GET_MODE (XEXP (x, i)) == GET_MODE (from))))
  {
    if (GET_CODE (to) == SUBREG
        && ! MODES_TIEABLE_P (GET_MODE (to),
         GET_MODE (SUBREG_REG (to)))
        && ! (code == SUBREG
       && MODES_TIEABLE_P (GET_MODE (x),
      GET_MODE (SUBREG_REG (to))))



        )
      return gen_rtx_CLOBBER (VOIDmode, const0_rtx);
    new = (unique_copy && n_occurrences ? copy_rtx (to) : to);
    n_occurrences++;
  }
       else
  new = subst (XEXP (x, i), from, to,
        (((in_dest
    && (code == SUBREG || code == STRICT_LOW_PART
        || code == ZERO_EXTRACT))
          || code == SET)
         && i == 0), unique_copy);







       if (GET_CODE (new) == CLOBBER && XEXP (new, 0) == const0_rtx)
  return new;

       if (GET_CODE (x) == SUBREG
    && (GET_CODE (new) == CONST_INT
        || GET_CODE (new) == CONST_DOUBLE))
  {
    enum machine_mode mode = GET_MODE (x);

    x = simplify_subreg (GET_MODE (x), new,
           GET_MODE (SUBREG_REG (x)),
           SUBREG_BYTE (x));
    if (! x)
      x = gen_rtx_CLOBBER (mode, const0_rtx);
  }
       else if (GET_CODE (new) == CONST_INT
         && GET_CODE (x) == ZERO_EXTEND)
  {
    x = simplify_unary_operation (ZERO_EXTEND, GET_MODE (x),
      new, GET_MODE (XEXP (x, 0)));
    gcc_assert (x);
  }
       else
  SUBST (XEXP (x, i), new);
     }
 }
    }





  for (i = 0; i < 4; i++)
    {


      if (code != CONST_INT && code != REG && code != CLOBBER)
 x = combine_simplify_rtx (x, op0_mode, in_dest);

      if (GET_CODE (x) == code)
 break;

      code = GET_CODE (x);



      op0_mode = VOIDmode;
    }

  return x;
}
