
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix86_address {int scale; int seg; scalar_t__ disp; scalar_t__ index; scalar_t__ base; } ;
typedef scalar_t__ rtx ;
typedef int FILE ;


 scalar_t__ ASM_ATT ;
 scalar_t__ ASM_INTEL ;
 scalar_t__ ASSEMBLER_DIALECT ;
 scalar_t__ CONST ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 char* HOST_WIDE_INT_PRINT_DEC ;
 int INTVAL (scalar_t__) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PLUS ;



 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_TLS_MODEL (scalar_t__) ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__* USER_LABEL_PREFIX ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ flag_pic ;
 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ gen_rtx_CONST (int ,scalar_t__) ;
 int ix86_decompose_address (scalar_t__,struct ix86_address*) ;
 int output_addr_const (int *,scalar_t__) ;
 int output_asm_label (scalar_t__) ;
 int output_pic_addr_const (int *,scalar_t__,int ) ;
 int print_reg (scalar_t__,int ,int *) ;
 int putc (char,int *) ;

void
print_operand_address (FILE *file, rtx addr)
{
  struct ix86_address parts;
  rtx base, index, disp;
  int scale;
  int ok = ix86_decompose_address (addr, &parts);

  gcc_assert (ok);

  base = parts.base;
  index = parts.index;
  disp = parts.disp;
  scale = parts.scale;

  switch (parts.seg)
    {
    case 130:
      break;
    case 129:
    case 128:
      if (USER_LABEL_PREFIX[0] == 0)
 putc ('%', file);
      fputs ((parts.seg == 129 ? "fs:" : "gs:"), file);
      break;
    default:
      gcc_unreachable ();
    }

  if (!base && !index)
    {


      if (GET_CODE (disp) == CONST_INT)
 {
   if (ASSEMBLER_DIALECT == ASM_INTEL && parts.seg == 130)
     {
       if (USER_LABEL_PREFIX[0] == 0)
  putc ('%', file);
       fputs ("ds:", file);
     }
   fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (disp));
 }
      else if (flag_pic)
 output_pic_addr_const (file, disp, 0);
      else
 output_addr_const (file, disp);


      if (TARGET_64BIT)
 {
   if (GET_CODE (disp) == CONST
       && GET_CODE (XEXP (disp, 0)) == PLUS
       && GET_CODE (XEXP (XEXP (disp, 0), 1)) == CONST_INT)
     disp = XEXP (XEXP (disp, 0), 0);
   if (GET_CODE (disp) == LABEL_REF
       || (GET_CODE (disp) == SYMBOL_REF
    && SYMBOL_REF_TLS_MODEL (disp) == 0))
     fputs ("(%rip)", file);
 }
    }
  else
    {
      if (ASSEMBLER_DIALECT == ASM_ATT)
 {
   if (disp)
     {
       if (flag_pic)
  output_pic_addr_const (file, disp, 0);
       else if (GET_CODE (disp) == LABEL_REF)
  output_asm_label (disp);
       else
  output_addr_const (file, disp);
     }

   putc ('(', file);
   if (base)
     print_reg (base, 0, file);
   if (index)
     {
       putc (',', file);
       print_reg (index, 0, file);
       if (scale != 1)
  fprintf (file, ",%d", scale);
     }
   putc (')', file);
 }
      else
 {
   rtx offset = NULL_RTX;

   if (disp)
     {

       if (GET_CODE (disp) == CONST
    && GET_CODE (XEXP (disp, 0)) == PLUS
    && GET_CODE (XEXP (XEXP (disp, 0), 1)) == CONST_INT)
  {
    offset = XEXP (XEXP (disp, 0), 1);
    disp = gen_rtx_CONST (VOIDmode,
     XEXP (XEXP (disp, 0), 0));
  }

       if (flag_pic)
  output_pic_addr_const (file, disp, 0);
       else if (GET_CODE (disp) == LABEL_REF)
  output_asm_label (disp);
       else if (GET_CODE (disp) == CONST_INT)
  offset = disp;
       else
  output_addr_const (file, disp);
     }

   putc ('[', file);
   if (base)
     {
       print_reg (base, 0, file);
       if (offset)
  {
    if (INTVAL (offset) >= 0)
      putc ('+', file);
    fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (offset));
  }
     }
   else if (offset)
     fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (offset));
   else
     putc ('0', file);

   if (index)
     {
       putc ('+', file);
       print_reg (index, 0, file);
       if (scale != 1)
  fprintf (file, "*%d", scale);
     }
   putc (']', file);
 }
    }
}
