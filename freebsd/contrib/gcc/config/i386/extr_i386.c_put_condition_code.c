
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int FILE ;


 int CCFPUmode ;
 int CCFPmode ;
 int UNKNOWN ;

 int fputs (char const*,int *) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int ix86_fp_compare_code_to_integer (int) ;
 int ix86_fp_comparison_codes (int,int*,int*,int*) ;
 int reverse_condition (int) ;

__attribute__((used)) static void
put_condition_code (enum rtx_code code, enum machine_mode mode, int reverse,
      int fp, FILE *file)
{
  const char *suffix;

  if (mode == CCFPmode || mode == CCFPUmode)
    {
      enum rtx_code second_code, bypass_code;
      ix86_fp_comparison_codes (code, &bypass_code, &code, &second_code);
      gcc_assert (bypass_code == UNKNOWN && second_code == UNKNOWN);
      code = ix86_fp_compare_code_to_integer (code);
      mode = 140;
    }
  if (reverse)
    code = reverse_condition (code);

  switch (code)
    {
    case 139:
      suffix = "e";
      break;
    case 130:
      suffix = "ne";
      break;
    case 136:
      gcc_assert (mode == 140 || mode == 141 || mode == 143);
      suffix = "g";
      break;
    case 135:


      gcc_assert (mode == 140);
      suffix = fp ? "nbe" : "a";
      break;
    case 132:
      switch (mode)
 {
 case 141:
 case 142:
   suffix = "s";
   break;

 case 140:
 case 143:
   suffix = "l";
   break;

 default:
   gcc_unreachable ();
 }
      break;
    case 131:
      gcc_assert (mode == 140);
      suffix = "b";
      break;
    case 138:
      switch (mode)
 {
 case 141:
 case 142:
   suffix = "ns";
   break;

 case 140:
 case 143:
   suffix = "ge";
   break;

 default:
   gcc_unreachable ();
 }
      break;
    case 137:

      gcc_assert (mode == 140);
      suffix = fp ? "nb" : "ae";
      break;
    case 134:
      gcc_assert (mode == 140 || mode == 143 || mode == 141);
      suffix = "le";
      break;
    case 133:
      gcc_assert (mode == 140);
      suffix = "be";
      break;
    case 128:
      suffix = fp ? "u" : "p";
      break;
    case 129:
      suffix = fp ? "nu" : "np";
      break;
    default:
      gcc_unreachable ();
    }
  fputs (suffix, file);
}
