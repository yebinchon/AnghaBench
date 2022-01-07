
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_address {int base; int disp; int indx; } ;
typedef int rtx ;
typedef int FILE ;





 int CONST_DOUBLE_LOW (int ) ;

 int FALSE ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 int HImode ;
 char* HOST_WIDE_INT_PRINT_DEC ;
 int INTVAL (int ) ;



 size_t REGNO (int ) ;
 int REGNO_OK_FOR_BASE_P (size_t) ;
 int SImode ;

 int TRUE ;
 int UNSPEC ;
 int UNSPEC_TLSGD ;
 int UNSPEC_TLSLDM ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int assemble_name (int *,int ) ;
 int change_address (int ,int ,int ) ;
 int fatal_insn (char*,int ) ;
 int fprintf (int *,char*,...) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int gen_rtx_REG (int ,int ) ;
 int get_some_local_dynamic_name () ;
 int output_addr_const (int *,int ) ;
 int output_address (int ) ;
 int plus_constant (int ,int) ;
 int print_shift_count_operand (int *,int ) ;
 char** reg_names ;
 char* s390_branch_condition_mnemonic (int ,int ) ;
 int s390_decompose_address (int ,struct s390_address*) ;
 int s390_extract_part (int ,int ,int) ;

void
print_operand (FILE *file, rtx x, int code)
{
  switch (code)
    {
    case 'C':
      fprintf (file, s390_branch_condition_mnemonic (x, FALSE));
      return;

    case 'D':
      fprintf (file, s390_branch_condition_mnemonic (x, TRUE));
      return;

    case 'J':
      if (GET_CODE (x) == 128)
 {
   fprintf (file, "%s", ":tls_load:");
   output_addr_const (file, x);
 }
      else if (GET_CODE (x) == UNSPEC && XINT (x, 1) == UNSPEC_TLSGD)
 {
   fprintf (file, "%s", ":tls_gdcall:");
   output_addr_const (file, XVECEXP (x, 0, 0));
 }
      else if (GET_CODE (x) == UNSPEC && XINT (x, 1) == UNSPEC_TLSLDM)
 {
   fprintf (file, "%s", ":tls_ldcall:");
   assemble_name (file, get_some_local_dynamic_name ());
 }
      else
 gcc_unreachable ();
      return;

    case 'G':
      fprintf (file, "%u", GET_MODE_SIZE (GET_MODE (x)));
      return;

    case 'O':
      {
        struct s390_address ad;
 int ret;

        gcc_assert (GET_CODE (x) == 130);
 ret = s390_decompose_address (XEXP (x, 0), &ad);
 gcc_assert (ret);
 gcc_assert (!ad.base || REGNO_OK_FOR_BASE_P (REGNO (ad.base)));
 gcc_assert (!ad.indx);

        if (ad.disp)
          output_addr_const (file, ad.disp);
        else
          fprintf (file, "0");
      }
      return;

    case 'R':
      {
        struct s390_address ad;
 int ret;

        gcc_assert (GET_CODE (x) == 130);
 ret = s390_decompose_address (XEXP (x, 0), &ad);
 gcc_assert (ret);
 gcc_assert (!ad.base || REGNO_OK_FOR_BASE_P (REGNO (ad.base)));
 gcc_assert (!ad.indx);

        if (ad.base)
          fprintf (file, "%s", reg_names[REGNO (ad.base)]);
        else
          fprintf (file, "0");
      }
      return;

    case 'S':
      {
 struct s390_address ad;
 int ret;

        gcc_assert (GET_CODE (x) == 130);
 ret = s390_decompose_address (XEXP (x, 0), &ad);
 gcc_assert (ret);
 gcc_assert (!ad.base || REGNO_OK_FOR_BASE_P (REGNO (ad.base)));
 gcc_assert (!ad.indx);

 if (ad.disp)
   output_addr_const (file, ad.disp);
 else
   fprintf (file, "0");

 if (ad.base)
   fprintf (file, "(%s)", reg_names[REGNO (ad.base)]);
      }
      return;

    case 'N':
      if (GET_CODE (x) == 129)
 x = gen_rtx_REG (GET_MODE (x), REGNO (x) + 1);
      else if (GET_CODE (x) == 130)
 x = change_address (x, VOIDmode, plus_constant (XEXP (x, 0), 4));
      else
        gcc_unreachable ();
      break;

    case 'M':
      if (GET_CODE (x) == 129)
 x = gen_rtx_REG (GET_MODE (x), REGNO (x) + 1);
      else if (GET_CODE (x) == 130)
 x = change_address (x, VOIDmode, plus_constant (XEXP (x, 0), 8));
      else
        gcc_unreachable ();
      break;

    case 'Y':
      print_shift_count_operand (file, x);
      return;
    }

  switch (GET_CODE (x))
    {
    case 129:
      fprintf (file, "%s", reg_names[REGNO (x)]);
      break;

    case 130:
      output_address (XEXP (x, 0));
      break;

    case 134:
    case 135:
    case 131:
    case 128:
      output_addr_const (file, x);
      break;

    case 132:
      if (code == 'b')
        fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (x) & 0xff);
      else if (code == 'x')
        fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (x) & 0xffff);
      else if (code == 'h')
        fprintf (file, HOST_WIDE_INT_PRINT_DEC, ((INTVAL (x) & 0xffff) ^ 0x8000) - 0x8000);
      else if (code == 'i')
 fprintf (file, HOST_WIDE_INT_PRINT_DEC,
   s390_extract_part (x, HImode, 0));
      else if (code == 'j')
 fprintf (file, HOST_WIDE_INT_PRINT_DEC,
   s390_extract_part (x, HImode, -1));
      else if (code == 'k')
  fprintf (file, HOST_WIDE_INT_PRINT_DEC,
    s390_extract_part (x, SImode, 0));
      else if (code == 'm')
  fprintf (file, HOST_WIDE_INT_PRINT_DEC,
    s390_extract_part (x, SImode, -1));
      else if (code == 'o')
 fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (x) & 0xffffffff);
      else
        fprintf (file, HOST_WIDE_INT_PRINT_DEC, INTVAL (x));
      break;

    case 133:
      gcc_assert (GET_MODE (x) == VOIDmode);
      if (code == 'b')
        fprintf (file, HOST_WIDE_INT_PRINT_DEC, CONST_DOUBLE_LOW (x) & 0xff);
      else if (code == 'x')
        fprintf (file, HOST_WIDE_INT_PRINT_DEC, CONST_DOUBLE_LOW (x) & 0xffff);
      else if (code == 'h')
        fprintf (file, HOST_WIDE_INT_PRINT_DEC, ((CONST_DOUBLE_LOW (x) & 0xffff) ^ 0x8000) - 0x8000);
      else
        gcc_unreachable ();
      break;

    default:
      fatal_insn ("UNKNOWN in print_operand !?", x);
      break;
    }
}
