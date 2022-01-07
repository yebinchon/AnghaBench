
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int BITS_PER_WORD ;
 scalar_t__ COMPLEX_CST ;
 scalar_t__ CONCAT ;
 scalar_t__ CONSTANT_CLASS_P (scalar_t__) ;
 int EXPAND_NORMAL ;
 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 unsigned int GET_MODE_BITSIZE (int) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ MEM_P (scalar_t__) ;
 int NULL_RTX ;
 size_t REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_DECL (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_IMAGPART (scalar_t__) ;
 scalar_t__ TREE_REALPART (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ adjust_address_nv (scalar_t__,int,int ) ;
 scalar_t__ expand_expr (scalar_t__,int ,int,int ) ;
 scalar_t__ extract_bit_field (scalar_t__,unsigned int,unsigned int,int,int ,int,int) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;
 scalar_t__ simplify_gen_subreg (int,scalar_t__,int,int ) ;

__attribute__((used)) static rtx
read_complex_part (rtx cplx, bool imag_p)
{
  enum machine_mode cmode, imode;
  unsigned ibitsize;

  if (GET_CODE (cplx) == CONCAT)
    return XEXP (cplx, imag_p);

  cmode = GET_MODE (cplx);
  imode = GET_MODE_INNER (cmode);
  ibitsize = GET_MODE_BITSIZE (imode);


  if (MEM_P (cplx) && GET_CODE (XEXP (cplx, 0)) == SYMBOL_REF)
    {
      tree decl = SYMBOL_REF_DECL (XEXP (cplx, 0));
      if (decl && TREE_CODE (decl) == COMPLEX_CST)
 {
   tree part = imag_p ? TREE_IMAGPART (decl) : TREE_REALPART (decl);
   if (CONSTANT_CLASS_P (part))
     return expand_expr (part, NULL_RTX, imode, EXPAND_NORMAL);
 }
    }






  if (MEM_P (cplx))
    return adjust_address_nv (cplx, imode,
         imag_p ? GET_MODE_SIZE (imode) : 0);





  if (ibitsize >= BITS_PER_WORD




      || (REG_P (cplx)
   && REGNO (cplx) < FIRST_PSEUDO_REGISTER
   && hard_regno_nregs[REGNO (cplx)][cmode] % 2 == 0))
    {
      rtx ret = simplify_gen_subreg (imode, cplx, cmode,
         imag_p ? GET_MODE_SIZE (imode) : 0);
      if (ret)
        return ret;
      else

 gcc_assert (MEM_P (cplx) && ibitsize < BITS_PER_WORD);
    }

  return extract_bit_field (cplx, ibitsize, imag_p ? ibitsize : 0,
       1, NULL_RTX, imode, imode);
}
