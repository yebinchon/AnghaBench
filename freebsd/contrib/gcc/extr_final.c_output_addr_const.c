
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_3__ {int close_paren; int open_paren; } ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;
typedef int FILE ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int ASM_OUTPUT_LABEL_REF (int *,char*) ;
 int ASM_OUTPUT_SYMBOL_REF (int *,int ) ;

 int CODE_LABEL_NUMBER (int ) ;


 int CONST_DOUBLE_HIGH (int ) ;
 int CONST_DOUBLE_LOW (int ) ;

 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 char* HOST_WIDE_INT_PRINT_DEC ;
 char* HOST_WIDE_INT_PRINT_DOUBLE_HEX ;
 char* HOST_WIDE_INT_PRINT_HEX ;
 int INTVAL (int ) ;


 int OUTPUT_ADDR_CONST_EXTRA (int *,int ,int ) ;





 int SYMBOL_REF_DECL (int ) ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 char* XSTR (int ,int ) ;

 int assemble_name (int *,char*) ;
 int fail ;
 int fprintf (int *,char*,...) ;
 int fputs (int ,int *) ;
 int mark_decl_referenced (int ) ;
 int output_operand_lossage (char*) ;
 int putc (char,int *) ;
 int simplify_subtraction (int ) ;
 TYPE_2__ targetm ;

void
output_addr_const (FILE *file, rtx x)
{
  char buf[256];

 restart:
  switch (GET_CODE (x))
    {
    case 133:
      putc ('.', file);
      break;

    case 129:
      if (SYMBOL_REF_DECL (x))
 mark_decl_referenced (SYMBOL_REF_DECL (x));



      assemble_name (file, XSTR (x, 0));

      break;

    case 135:
      x = XEXP (x, 0);

    case 139:
      ASM_GENERATE_INTERNAL_LABEL (buf, "L", CODE_LABEL_NUMBER (x));



      assemble_name (file, buf);

      break;

    case 136:
      fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (x));
      break;

    case 138:


      output_addr_const (file, XEXP (x, 0));
      break;

    case 137:
      if (GET_MODE (x) == VOIDmode)
 {

   if (CONST_DOUBLE_HIGH (x))
     fprintf (file, HOST_WIDE_INT_PRINT_DOUBLE_HEX,
       CONST_DOUBLE_HIGH (x), CONST_DOUBLE_LOW (x));
   else if (CONST_DOUBLE_LOW (x) < 0)
     fprintf (file, HOST_WIDE_INT_PRINT_HEX, CONST_DOUBLE_LOW (x));
   else
     fprintf (file, HOST_WIDE_INT_PRINT_DEC, CONST_DOUBLE_LOW (x));
 }
      else


 output_operand_lossage ("floating constant misused");
      break;

    case 132:

      if (GET_CODE (XEXP (x, 0)) == 136)
 {
   output_addr_const (file, XEXP (x, 1));
   if (INTVAL (XEXP (x, 0)) >= 0)
     fprintf (file, "+");
   output_addr_const (file, XEXP (x, 0));
 }
      else
 {
   output_addr_const (file, XEXP (x, 0));
   if (GET_CODE (XEXP (x, 1)) != 136
       || INTVAL (XEXP (x, 1)) >= 0)
     fprintf (file, "+");
   output_addr_const (file, XEXP (x, 1));
 }
      break;

    case 134:


      x = simplify_subtraction (x);
      if (GET_CODE (x) != 134)
 goto restart;

      output_addr_const (file, XEXP (x, 0));
      fprintf (file, "-");
      if ((GET_CODE (XEXP (x, 1)) == 136 && INTVAL (XEXP (x, 1)) >= 0)
   || GET_CODE (XEXP (x, 1)) == 133
   || GET_CODE (XEXP (x, 1)) == 129)
 output_addr_const (file, XEXP (x, 1));
      else
 {
   fputs (targetm.asm_out.open_paren, file);
   output_addr_const (file, XEXP (x, 1));
   fputs (targetm.asm_out.close_paren, file);
 }
      break;

    case 128:
    case 131:
    case 130:
      output_addr_const (file, XEXP (x, 0));
      break;

    default:






      output_operand_lossage ("invalid expression as operand");
    }
}
