
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ AND ;
 scalar_t__ ASHIFT ;
 scalar_t__ BITS_BIG_ENDIAN ;
 int BLKmode ;
 scalar_t__ CONST_INT ;
 int FLOAT_MODE_P (int) ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_SIZE (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 int INTVAL (int ) ;
 scalar_t__ IOR ;
 scalar_t__ MINUS ;
 int MODE_INT ;
 int NOT ;
 int SCALAR_INT_MODE_P (int) ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int UNITS_PER_WORD ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 scalar_t__ ZERO_EXTRACT ;
 int copy_rtx (int ) ;
 int gen_lowpart (int,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int mode_for_size (int,int ,int ) ;
 scalar_t__ nonzero_sign_valid ;
 int simplify_gen_binary (scalar_t__,int,int ,int ) ;
 int simplify_gen_unary (int ,int,int ,int) ;
 scalar_t__ subreg_lowpart_p (int ) ;
 int subreg_lsb (int ) ;

__attribute__((used)) static rtx
expand_field_assignment (rtx x)
{
  rtx inner;
  rtx pos;
  int len;
  rtx mask, cleared, masked;
  enum machine_mode compute_mode;


  while (1)
    {
      if (GET_CODE (SET_DEST (x)) == STRICT_LOW_PART
   && GET_CODE (XEXP (SET_DEST (x), 0)) == SUBREG)
 {
   inner = SUBREG_REG (XEXP (SET_DEST (x), 0));
   len = GET_MODE_BITSIZE (GET_MODE (XEXP (SET_DEST (x), 0)));
   pos = GEN_INT (subreg_lsb (XEXP (SET_DEST (x), 0)));
 }
      else if (GET_CODE (SET_DEST (x)) == ZERO_EXTRACT
        && GET_CODE (XEXP (SET_DEST (x), 1)) == CONST_INT)
 {
   inner = XEXP (SET_DEST (x), 0);
   len = INTVAL (XEXP (SET_DEST (x), 1));
   pos = XEXP (SET_DEST (x), 2);


   if (GET_CODE (pos) == CONST_INT
       && INTVAL (pos) + len > GET_MODE_BITSIZE (GET_MODE (inner)))
     break;

   if (BITS_BIG_ENDIAN)
     {
       if (GET_CODE (pos) == CONST_INT)
  pos = GEN_INT (GET_MODE_BITSIZE (GET_MODE (inner)) - len
          - INTVAL (pos));
       else if (GET_CODE (pos) == MINUS
         && GET_CODE (XEXP (pos, 1)) == CONST_INT
         && (INTVAL (XEXP (pos, 1))
      == GET_MODE_BITSIZE (GET_MODE (inner)) - len))

  pos = XEXP (pos, 0);
       else
  pos = simplify_gen_binary (MINUS, GET_MODE (pos),
        GEN_INT (GET_MODE_BITSIZE (
          GET_MODE (inner))
          - len),
        pos);
     }
 }



      else if (GET_CODE (SET_DEST (x)) == SUBREG

        && nonzero_sign_valid
        && (((GET_MODE_SIZE (GET_MODE (SET_DEST (x)))
       + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)
     == ((GET_MODE_SIZE (GET_MODE (SUBREG_REG (SET_DEST (x))))
   + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD)))
 {
   x = gen_rtx_SET (VOIDmode, SUBREG_REG (SET_DEST (x)),
      gen_lowpart
      (GET_MODE (SUBREG_REG (SET_DEST (x))),
       SET_SRC (x)));
   continue;
 }
      else
 break;

      while (GET_CODE (inner) == SUBREG && subreg_lowpart_p (inner))
 inner = SUBREG_REG (inner);

      compute_mode = GET_MODE (inner);


      if (! SCALAR_INT_MODE_P (compute_mode))
 {
   enum machine_mode imode;


   if (! FLOAT_MODE_P (compute_mode))
     break;


   imode = mode_for_size (GET_MODE_BITSIZE (compute_mode), MODE_INT, 0);
   if (imode == BLKmode)
     break;

   compute_mode = imode;
   inner = gen_lowpart (imode, inner);
 }


      if (len >= HOST_BITS_PER_WIDE_INT)
 break;




      mask = GEN_INT (((HOST_WIDE_INT) 1 << len) - 1);
      cleared = simplify_gen_binary (AND, compute_mode,
         simplify_gen_unary (NOT, compute_mode,
           simplify_gen_binary (ASHIFT,
           compute_mode,
           mask, pos),
           compute_mode),
         inner);
      masked = simplify_gen_binary (ASHIFT, compute_mode,
        simplify_gen_binary (
          AND, compute_mode,
          gen_lowpart (compute_mode, SET_SRC (x)),
          mask),
        pos);

      x = gen_rtx_SET (VOIDmode, copy_rtx (inner),
         simplify_gen_binary (IOR, compute_mode,
         cleared, masked));
    }

  return x;
}
