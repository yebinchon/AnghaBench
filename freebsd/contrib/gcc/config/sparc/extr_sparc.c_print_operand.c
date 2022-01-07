
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;
typedef int FILE ;



 int CCFPEmode ;
 int CCFPmode ;
 scalar_t__ CCXmode ;
 scalar_t__ CCmode ;
 int CONST0_RTX (scalar_t__) ;
 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ CONST_DOUBLE ;
 int CONST_DOUBLE_HIGH (int ) ;
 scalar_t__ CONST_DOUBLE_LOW (int ) ;
 scalar_t__ CONST_INT ;
 int DECL_RESULT (int ) ;
 int DECL_SIZE (int ) ;
 char* EMBMEDANY_BASE_REG ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (scalar_t__) ;



 scalar_t__ HIGH ;
 char* HOST_WIDE_INT_PRINT_DEC ;
 int INTEGER_CST ;
 int INTVAL (int ) ;



 scalar_t__ LO_SUM ;



 scalar_t__ MEM ;
 scalar_t__ MODE_INT ;


 int PROCESSOR_V9 ;
 int QImode ;
 scalar_t__ REG ;
 size_t REGNO (int ) ;
 int SImode ;
 size_t SPARC_ICC_REG ;
 int TARGET_ARCH64 ;
 scalar_t__ TARGET_CM_MEDMID ;
 int TREE_CODE (int ) ;






 scalar_t__ VOIDmode ;
 int WORDS_BIG_ENDIAN ;
 int XEXP (int ,int) ;

 int assemble_name (int *,int ) ;
 int const0_rtx ;
 int current_function_decl ;
 int current_function_returns_struct ;
 int final_sequence ;
 int fprintf (int *,char*,int) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int gcc_unreachable () ;
 int get_some_local_dynamic_name () ;
 int integer_zerop (int ) ;
 int optimize ;
 int output_addr_const (int *,int ) ;
 int output_address (int ) ;
 int output_operand_lossage (char*) ;
 char** reg_names ;
 scalar_t__ reverse_condition (scalar_t__) ;
 int reverse_condition_maybe_unordered (scalar_t__) ;
 scalar_t__ sparc_cpu ;
 int sparc_indent_opcode ;
 int sparc_std_struct_return ;
 int trunc_int_for_mode (int,int ) ;

void
print_operand (FILE *file, rtx x, int code)
{
  switch (code)
    {
    case '#':

      if (final_sequence)
        sparc_indent_opcode = 1;
      else
 fputs ("\n\t nop", file);
      return;
    case '*':






      if (! final_sequence && (optimize && (int)sparc_cpu < PROCESSOR_V9))
 fputs (",a", file);
      return;
    case '(':


      if (! final_sequence && ! (optimize && (int)sparc_cpu < PROCESSOR_V9))
 fputs ("\n\t nop", file);
      else if (final_sequence)
        sparc_indent_opcode = 1;
      return;
    case ')':
     if (! TARGET_ARCH64
  && current_function_returns_struct
  && ! sparc_std_struct_return
  && (TREE_CODE (DECL_SIZE (DECL_RESULT (current_function_decl)))
      == INTEGER_CST)
  && ! integer_zerop (DECL_SIZE (DECL_RESULT (current_function_decl))))
 fputs ("12", file);
      else
        fputc ('8', file);
      return;
    case '_':

      fputs (EMBMEDANY_BASE_REG, file);
      return;
    case '&':

      assemble_name (file, get_some_local_dynamic_name ());
      return;

    case 'Y':

      if (GET_CODE (x) == CONST_INT)
 break;
      else if (GET_CODE (x) != REG)
 output_operand_lossage ("invalid %%Y operand");
      else if (REGNO (x) < 8)
 fputs (reg_names[REGNO (x)], file);
      else if (REGNO (x) >= 24 && REGNO (x) < 32)
 fputs (reg_names[REGNO (x)-16], file);
      else
 output_operand_lossage ("invalid %%Y operand");
      return;
    case 'L':

      if (WORDS_BIG_ENDIAN)
 fputs (reg_names[REGNO (x)+1], file);
      else
 fputs (reg_names[REGNO (x)], file);
      return;
    case 'H':

      if (WORDS_BIG_ENDIAN)
 fputs (reg_names[REGNO (x)], file);
      else
 fputs (reg_names[REGNO (x)+1], file);
      return;
    case 'R':


      fputs (reg_names[REGNO (x)+1], file);
      return;
    case 'S':


      fputs (reg_names[REGNO (x)+2], file);
      return;
    case 'T':


      fputs (reg_names[REGNO (x)+3], file);
      return;
    case 'x':

      if (REGNO (x) == SPARC_ICC_REG)
 {


   if (GET_MODE (x) == CCmode)
     fputs ("%icc", file);
   else if (GET_MODE (x) == CCXmode)
     fputs ("%xcc", file);
   else
     gcc_unreachable ();
 }
      else

 fputs (reg_names[REGNO (x)], file);
      return;
    case 'm':

      output_address (XEXP (x, 0));
      return;
    case 'r':


      if (x == const0_rtx
   || (GET_MODE (x) != VOIDmode && x == CONST0_RTX (GET_MODE (x))))
 {
   fputs ("%g0", file);
   return;
 }
      else
 break;

    case 'A':
      switch (GET_CODE (x))
 {
 case 142: fputs ("or", file); break;
 case 148: fputs ("and", file); break;
 case 128: fputs ("xor", file); break;
 default: output_operand_lossage ("invalid %%A operand");
 }
      return;

    case 'B':
      switch (GET_CODE (x))
 {
 case 142: fputs ("orn", file); break;
 case 148: fputs ("andn", file); break;
 case 128: fputs ("xnor", file); break;
 default: output_operand_lossage ("invalid %%B operand");
 }
      return;


    case 'c' :
    case 'C':
      {
 enum rtx_code rc = GET_CODE (x);

 if (code == 'c')
   {
     enum machine_mode mode = GET_MODE (XEXP (x, 0));
     if (mode == CCFPmode || mode == CCFPEmode)
       rc = reverse_condition_maybe_unordered (GET_CODE (x));
     else
       rc = reverse_condition (GET_CODE (x));
   }
 switch (rc)
   {
   case 136: fputs ("ne", file); break;
   case 147: fputs ("e", file); break;
   case 146: fputs ("ge", file); break;
   case 144: fputs ("g", file); break;
   case 141: fputs ("le", file); break;
   case 139: fputs ("l", file); break;
   case 145: fputs ("geu", file); break;
   case 143: fputs ("gu", file); break;
   case 140: fputs ("leu", file); break;
   case 137: fputs ("lu", file); break;
   case 138: fputs ("lg", file); break;
   case 129: fputs ("u", file); break;
   case 135: fputs ("o", file); break;
   case 130: fputs ("ul", file); break;
   case 131: fputs ("ule", file); break;
   case 132: fputs ("ug", file); break;
   case 133: fputs ("uge", file); break;
   case 134: fputs ("ue", file); break;
   default: output_operand_lossage (code == 'c'
        ? "invalid %%c operand"
        : "invalid %%C operand");
   }
 return;
      }


    case 'd':
    case 'D':
      {
 enum rtx_code rc = (code == 'd'
       ? reverse_condition (GET_CODE (x))
       : GET_CODE (x));
 switch (rc)
   {
   case 136: fputs ("ne", file); break;
   case 147: fputs ("e", file); break;
   case 146: fputs ("gez", file); break;
   case 139: fputs ("lz", file); break;
   case 141: fputs ("lez", file); break;
   case 144: fputs ("gz", file); break;
   default: output_operand_lossage (code == 'd'
        ? "invalid %%d operand"
        : "invalid %%D operand");
   }
 return;
      }

    case 'b':
      {

 int i = trunc_int_for_mode (INTVAL (x), QImode);
 fprintf (file, "%d", i);
 return;
      }

    case 'f':

      if (GET_CODE (x) != MEM)
 output_operand_lossage ("invalid %%f operand");
      output_address (XEXP (x, 0));
      return;

    case 's':
      {

 HOST_WIDE_INT i;
 if (GET_CODE(x) == CONST_INT)
   i = INTVAL (x);
 else if (GET_CODE(x) == CONST_DOUBLE)
   i = CONST_DOUBLE_LOW (x);
 else
   {
     output_operand_lossage ("invalid %%s operand");
     return;
   }
 i = trunc_int_for_mode (i, SImode);
 fprintf (file, HOST_WIDE_INT_PRINT_DEC, i);
 return;
      }

    case 0:

      break;

    default:

      output_operand_lossage ("invalid operand output code");
    }

  if (GET_CODE (x) == REG)
    fputs (reg_names[REGNO (x)], file);
  else if (GET_CODE (x) == MEM)
    {
      fputc ('[', file);

      if (CONSTANT_P (XEXP (x, 0)))
 fputs ("%g0+", file);
      output_address (XEXP (x, 0));
      fputc (']', file);
    }
  else if (GET_CODE (x) == HIGH)
    {
      fputs ("%hi(", file);
      output_addr_const (file, XEXP (x, 0));
      fputc (')', file);
    }
  else if (GET_CODE (x) == LO_SUM)
    {
      print_operand (file, XEXP (x, 0), 0);
      if (TARGET_CM_MEDMID)
 fputs ("+%l44(", file);
      else
 fputs ("+%lo(", file);
      output_addr_const (file, XEXP (x, 1));
      fputc (')', file);
    }
  else if (GET_CODE (x) == CONST_DOUBLE
    && (GET_MODE (x) == VOIDmode
        || GET_MODE_CLASS (GET_MODE (x)) == MODE_INT))
    {
      if (CONST_DOUBLE_HIGH (x) == 0)
 fprintf (file, "%u", (unsigned int) CONST_DOUBLE_LOW (x));
      else if (CONST_DOUBLE_HIGH (x) == -1
        && CONST_DOUBLE_LOW (x) < 0)
 fprintf (file, "%d", (int) CONST_DOUBLE_LOW (x));
      else
 output_operand_lossage ("long long constant not a valid immediate operand");
    }
  else if (GET_CODE (x) == CONST_DOUBLE)
    output_operand_lossage ("floating point constant not a valid immediate operand");
  else { output_addr_const (file, x); }
}
