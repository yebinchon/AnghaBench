
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ COMPARISON_P (scalar_t__) ;
 scalar_t__ CONST ;
 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 unsigned int GET_MODE_SIZE (int) ;
 scalar_t__ LABEL_REF ;
 int MAX (unsigned int,unsigned int) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ MEM_VOLATILE_P (scalar_t__) ;
 scalar_t__ MIN (unsigned int,unsigned int) ;
 int Pmode ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;
 unsigned int UNITS_PER_WORD ;
 int VOIDmode ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int XEXP (scalar_t__,int) ;
 scalar_t__ adjust_address_nv (scalar_t__,int,int) ;
 int const0_rtx ;
 scalar_t__ gen_lowpart_common (int,scalar_t__) ;
 scalar_t__ gen_rtx_CLOBBER (int,int ) ;
 scalar_t__ gen_rtx_SUBREG (int,scalar_t__,int ) ;
 scalar_t__ gen_rtx_fmt_ee (scalar_t__,int,int ,int ) ;
 int int_mode_for_mode (int) ;
 scalar_t__ mode_dependent_address_p (int ) ;
 int record_subregs_of_mode (scalar_t__) ;
 scalar_t__ simplify_gen_subreg (int,scalar_t__,int,int) ;
 int subreg_lowpart_offset (int,int) ;

__attribute__((used)) static rtx
gen_lowpart_for_combine (enum machine_mode omode, rtx x)
{
  enum machine_mode imode = GET_MODE (x);
  unsigned int osize = GET_MODE_SIZE (omode);
  unsigned int isize = GET_MODE_SIZE (imode);
  rtx result;

  if (omode == imode)
    return x;


  if (omode == Pmode
      && (GET_CODE (x) == CONST
   || GET_CODE (x) == SYMBOL_REF
   || GET_CODE (x) == LABEL_REF))
    return x;



  if (GET_MODE_SIZE (omode) > UNITS_PER_WORD
      && ! ((imode == VOIDmode
      && (GET_CODE (x) == CONST_INT
   || GET_CODE (x) == CONST_DOUBLE))
     || isize == osize))
    goto fail;




  if (GET_CODE (x) == SUBREG && MEM_P (SUBREG_REG (x)))
    {
      x = SUBREG_REG (x);




      imode = GET_MODE (x);

      if (imode == omode)
 return x;

      isize = GET_MODE_SIZE (imode);
    }

  result = gen_lowpart_common (omode, x);






  if (result)
    return result;

  if (MEM_P (x))
    {
      int offset = 0;



      if (MEM_VOLATILE_P (x) || mode_dependent_address_p (XEXP (x, 0)))
 goto fail;




      if (isize < osize)
 return gen_rtx_SUBREG (omode, x, 0);

      if (WORDS_BIG_ENDIAN)
 offset = MAX (isize, UNITS_PER_WORD) - MAX (osize, UNITS_PER_WORD);



      if (BYTES_BIG_ENDIAN)
 offset -= MIN (UNITS_PER_WORD, osize) - MIN (UNITS_PER_WORD, isize);

      return adjust_address_nv (x, omode, offset);
    }



  else if (COMPARISON_P (x))
    return gen_rtx_fmt_ee (GET_CODE (x), omode, XEXP (x, 0), XEXP (x, 1));




  else
    {
      int offset = 0;
      rtx res;

      offset = subreg_lowpart_offset (omode, imode);
      if (imode == VOIDmode)
 {
   imode = int_mode_for_mode (omode);
   x = gen_lowpart_common (imode, x);
   if (x == ((void*)0))
     goto fail;
 }
      res = simplify_gen_subreg (omode, x, imode, offset);
      if (res)
 return res;
    }

 fail:
  return gen_rtx_CLOBBER (imode, const0_rtx);
}
