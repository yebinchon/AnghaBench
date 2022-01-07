
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s390_address {int pointer; int literal_pool; scalar_t__ disp; scalar_t__ indx; scalar_t__ base; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ base_reg; scalar_t__ decomposed_literal_pool_addresses_ok_p; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ ARG_POINTER_REGNUM ;
 scalar_t__ CONST ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 int DISP_IN_RANGE (scalar_t__) ;
 scalar_t__ FRAME_POINTER_REGNUM ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ MINUS ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ PLUS ;
 scalar_t__ Pmode ;
 scalar_t__ REG ;
 scalar_t__ REGNO (scalar_t__) ;
 int REG_P (scalar_t__) ;
 scalar_t__ REG_POINTER (scalar_t__) ;
 scalar_t__ SImode ;
 scalar_t__ STACK_POINTER_REGNUM ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ UNSPEC ;
 int UNSPEC_GOT ;
 int UNSPEC_GOTNTPOFF ;


 int UNSPEC_LTREL_OFFSET ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 scalar_t__ arg_pointer_rtx ;
 TYPE_2__* cfun ;
 int flag_pic ;
 scalar_t__ frame_pointer_needed ;
 scalar_t__ frame_pointer_rtx ;
 int gen_rtvec (int,scalar_t__) ;
 scalar_t__ gen_rtx_CONST (scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_REG (scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_UNSPEC (scalar_t__,int ,int) ;
 int get_pool_mode (scalar_t__) ;
 scalar_t__ plus_constant (scalar_t__,scalar_t__) ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;
 scalar_t__ return_address_pointer_rtx ;
 scalar_t__ virtual_stack_vars_rtx ;

__attribute__((used)) static int
s390_decompose_address (rtx addr, struct s390_address *out)
{
  HOST_WIDE_INT offset = 0;
  rtx base = NULL_RTX;
  rtx indx = NULL_RTX;
  rtx disp = NULL_RTX;
  rtx orig_disp;
  bool pointer = 0;
  bool base_ptr = 0;
  bool indx_ptr = 0;
  bool literal_pool = 0;






  rtx fake_pool_base = gen_rtx_REG (Pmode, ARG_POINTER_REGNUM);



  if (GET_CODE (addr) == REG || GET_CODE (addr) == UNSPEC)
    base = addr;

  else if (GET_CODE (addr) == PLUS)
    {
      rtx op0 = XEXP (addr, 0);
      rtx op1 = XEXP (addr, 1);
      enum rtx_code code0 = GET_CODE (op0);
      enum rtx_code code1 = GET_CODE (op1);

      if (code0 == REG || code0 == UNSPEC)
 {
   if (code1 == REG || code1 == UNSPEC)
     {
       indx = op0;
       base = op1;
     }

   else
     {
       base = op0;
       disp = op1;
     }
 }

      else if (code0 == PLUS)
 {
   indx = XEXP (op0, 0);
   base = XEXP (op0, 1);
   disp = op1;
 }

      else
 {
   return 0;
 }
    }

  else
    disp = addr;


  orig_disp = disp;
  if (disp)
    {
      if (GET_CODE (disp) == CONST_INT)
 {
   offset = INTVAL (disp);
   disp = NULL_RTX;
 }
      else if (GET_CODE (disp) == CONST
        && GET_CODE (XEXP (disp, 0)) == PLUS
        && GET_CODE (XEXP (XEXP (disp, 0), 1)) == CONST_INT)
 {
   offset = INTVAL (XEXP (XEXP (disp, 0), 1));
   disp = XEXP (XEXP (disp, 0), 0);
 }
    }


  if (disp && GET_CODE (disp) == CONST)
    disp = XEXP (disp, 0);



  if (disp && GET_CODE (disp) == SYMBOL_REF && CONSTANT_POOL_ADDRESS_P (disp))
    {

      if (!base)
        base = fake_pool_base, literal_pool = 1;
      else if (!indx)
        indx = fake_pool_base, literal_pool = 1;
      else
        return 0;


      disp = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, disp),
        UNSPEC_LTREL_OFFSET);
    }


  if (base)
    {
      if (GET_CODE (base) == UNSPEC)
 switch (XINT (base, 1))
   {
   case 129:
     if (!disp)
       disp = gen_rtx_UNSPEC (Pmode,
         gen_rtvec (1, XVECEXP (base, 0, 0)),
         UNSPEC_LTREL_OFFSET);
     else
       return 0;

     base = XVECEXP (base, 0, 1);
     break;

   case 128:
     if (XVECLEN (base, 0) == 1)
       base = fake_pool_base, literal_pool = 1;
     else
       base = XVECEXP (base, 0, 1);
     break;

   default:
     return 0;
   }

      if (!REG_P (base)
   || (GET_MODE (base) != SImode
       && GET_MODE (base) != Pmode))
 return 0;

      if (REGNO (base) == STACK_POINTER_REGNUM
   || REGNO (base) == FRAME_POINTER_REGNUM
   || ((reload_completed || reload_in_progress)
       && frame_pointer_needed
       && REGNO (base) == HARD_FRAME_POINTER_REGNUM)
   || REGNO (base) == ARG_POINTER_REGNUM
          || (flag_pic
              && REGNO (base) == PIC_OFFSET_TABLE_REGNUM))
        pointer = base_ptr = 1;

      if ((reload_completed || reload_in_progress)
   && base == cfun->machine->base_reg)
        pointer = base_ptr = literal_pool = 1;
    }


  if (indx)
    {
      if (GET_CODE (indx) == UNSPEC)
 switch (XINT (indx, 1))
   {
   case 129:
     if (!disp)
       disp = gen_rtx_UNSPEC (Pmode,
         gen_rtvec (1, XVECEXP (indx, 0, 0)),
         UNSPEC_LTREL_OFFSET);
     else
       return 0;

     indx = XVECEXP (indx, 0, 1);
     break;

   case 128:
     if (XVECLEN (indx, 0) == 1)
       indx = fake_pool_base, literal_pool = 1;
     else
       indx = XVECEXP (indx, 0, 1);
     break;

   default:
     return 0;
   }

      if (!REG_P (indx)
   || (GET_MODE (indx) != SImode
       && GET_MODE (indx) != Pmode))
 return 0;

      if (REGNO (indx) == STACK_POINTER_REGNUM
   || REGNO (indx) == FRAME_POINTER_REGNUM
   || ((reload_completed || reload_in_progress)
       && frame_pointer_needed
       && REGNO (indx) == HARD_FRAME_POINTER_REGNUM)
   || REGNO (indx) == ARG_POINTER_REGNUM
          || (flag_pic
              && REGNO (indx) == PIC_OFFSET_TABLE_REGNUM))
        pointer = indx_ptr = 1;

      if ((reload_completed || reload_in_progress)
   && indx == cfun->machine->base_reg)
        pointer = indx_ptr = literal_pool = 1;
    }


  if (base && indx && !base_ptr
      && (indx_ptr || (!REG_POINTER (base) && REG_POINTER (indx))))
    {
      rtx tmp = base;
      base = indx;
      indx = tmp;
    }


  if (!disp)
    {
      if (base != arg_pointer_rtx
   && indx != arg_pointer_rtx
   && base != return_address_pointer_rtx
   && indx != return_address_pointer_rtx
   && base != frame_pointer_rtx
   && indx != frame_pointer_rtx
   && base != virtual_stack_vars_rtx
   && indx != virtual_stack_vars_rtx)
 if (!DISP_IN_RANGE (offset))
   return 0;
    }
  else
    {

      pointer = 1;



      if (GET_CODE (disp) == UNSPEC
          && (XINT (disp, 1) == UNSPEC_GOT
       || XINT (disp, 1) == UNSPEC_GOTNTPOFF)
   && flag_pic == 1)
        {
   ;
        }


      else if (cfun && cfun->machine
        && cfun->machine->decomposed_literal_pool_addresses_ok_p
        && GET_CODE (disp) == MINUS
               && GET_CODE (XEXP (disp, 0)) == LABEL_REF
               && GET_CODE (XEXP (disp, 1)) == LABEL_REF)
        {
   ;
        }


      else if (GET_CODE (disp) == UNSPEC
        && XINT (disp, 1) == UNSPEC_LTREL_OFFSET)
        {
   orig_disp = gen_rtx_CONST (Pmode, disp);
   if (offset)
     {


       rtx sym = XVECEXP (disp, 0, 0);
       if (offset >= GET_MODE_SIZE (get_pool_mode (sym)))
  return 0;

              orig_disp = plus_constant (orig_disp, offset);
     }
        }

      else
 return 0;
    }

  if (!base && !indx)
    pointer = 1;

  if (out)
    {
      out->base = base;
      out->indx = indx;
      out->disp = orig_disp;
      out->pointer = pointer;
      out->literal_pool = literal_pool;
    }

  return 1;
}
