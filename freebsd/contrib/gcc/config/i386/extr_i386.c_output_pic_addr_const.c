
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int ASM_INTEL ;
 int ASSEMBLER_DIALECT ;

 int CODE_LABEL_NUMBER (int ) ;


 scalar_t__ CONST_DOUBLE_HIGH (int ) ;
 scalar_t__ CONST_DOUBLE_LOW (int ) ;

 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 char* HOST_WIDE_INT_PRINT_DEC ;
 scalar_t__ INTVAL (int ) ;

 int MACHOPIC_INDIRECT ;
 int MACHOPIC_UNDEFINED_FUNCTION ;




 int SYMBOL_REF_DECL (int ) ;
 int SYMBOL_REF_LOCAL_P (int ) ;
 int TARGET_64BIT ;
 int TARGET_MACHO ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 char* XSTR (int ,int ) ;
 int XVECEXP (int ,int ,int ) ;
 int XVECLEN (int ,int ) ;
 int * asm_out_file ;
 int assemble_name (int *,char const*) ;
 int flag_pic ;
 int fprintf (int *,char*,unsigned long,...) ;
 int fputs (char*,int *) ;
 int gcc_assert (int) ;
 int machopic_classify_symbol (int ) ;
 char* machopic_indirection_name (int ,int) ;
 int mark_decl_referenced (int ) ;
 int output_addr_const (int *,int ) ;
 int output_operand_lossage (char*) ;
 int putc (char,int *) ;

__attribute__((used)) static void
output_pic_addr_const (FILE *file, rtx x, int code)
{
  char buf[256];

  switch (GET_CODE (x))
    {
    case 140:
      gcc_assert (flag_pic);
      putc ('.', file);
      break;

    case 138:
      if (! TARGET_MACHO || TARGET_64BIT)
 output_addr_const (file, x);
      else
 {
   const char *name = XSTR (x, 0);


   if (SYMBOL_REF_DECL (x))
     mark_decl_referenced (SYMBOL_REF_DECL (x));






   assemble_name (file, name);
 }
      if (!TARGET_MACHO && code == 'P' && ! SYMBOL_REF_LOCAL_P (x))
 fputs ("@PLT", file);
      break;

    case 142:
      x = XEXP (x, 0);

    case 146:
      ASM_GENERATE_INTERNAL_LABEL (buf, "L", CODE_LABEL_NUMBER (x));
      assemble_name (asm_out_file, buf);
      break;

    case 143:
      fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (x));
      break;

    case 145:


      output_pic_addr_const (file, XEXP (x, 0), code);
      break;

    case 144:
      if (GET_MODE (x) == VOIDmode)
 {

   if (CONST_DOUBLE_HIGH (x) || CONST_DOUBLE_LOW (x) < 0)
     fprintf (file, "0x%lx%08lx",
       (unsigned long) CONST_DOUBLE_HIGH (x),
       (unsigned long) CONST_DOUBLE_LOW (x));
   else
     fprintf (file, HOST_WIDE_INT_PRINT_DEC, CONST_DOUBLE_LOW (x));
 }
      else


 output_operand_lossage ("floating constant misused");
      break;

    case 139:

      if (GET_CODE (XEXP (x, 0)) == 143)
 {
   output_pic_addr_const (file, XEXP (x, 0), code);
   putc ('+', file);
   output_pic_addr_const (file, XEXP (x, 1), code);
 }
      else
 {
   gcc_assert (GET_CODE (XEXP (x, 1)) == 143);
   output_pic_addr_const (file, XEXP (x, 1), code);
   putc ('+', file);
   output_pic_addr_const (file, XEXP (x, 0), code);
 }
      break;

    case 141:
      if (!TARGET_MACHO)
 putc (ASSEMBLER_DIALECT == ASM_INTEL ? '(' : '[', file);
      output_pic_addr_const (file, XEXP (x, 0), code);
      putc ('-', file);
      output_pic_addr_const (file, XEXP (x, 1), code);
      if (!TARGET_MACHO)
 putc (ASSEMBLER_DIALECT == ASM_INTEL ? ')' : ']', file);
      break;

     case 137:
       gcc_assert (XVECLEN (x, 0) == 1);
       output_pic_addr_const (file, XVECEXP (x, 0, 0), code);
       switch (XINT (x, 1))
 {
 case 135:
   fputs ("@GOT", file);
   break;
 case 133:
   fputs ("@GOTOFF", file);
   break;
 case 132:
   fputs ("@GOTPCREL(%rip)", file);
   break;
 case 131:

   fputs ("@GOTTPOFF", file);
   break;
 case 128:
   fputs ("@TPOFF", file);
   break;
 case 129:
   if (TARGET_64BIT)
     fputs ("@TPOFF", file);
   else
     fputs ("@NTPOFF", file);
   break;
 case 136:
   fputs ("@DTPOFF", file);
   break;
 case 134:
   if (TARGET_64BIT)
     fputs ("@GOTTPOFF(%rip)", file);
   else
     fputs ("@GOTNTPOFF", file);
   break;
 case 130:
   fputs ("@INDNTPOFF", file);
   break;
 default:
   output_operand_lossage ("invalid UNSPEC as operand");
   break;
 }
       break;

    default:
      output_operand_lossage ("invalid expression as operand");
    }
}
