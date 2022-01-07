
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;





 int reverse_condition_maybe_unordered (int) ;

__attribute__((used)) static bool
mips_reverse_fp_cond_p (enum rtx_code *code)
{
  switch (*code)
    {
    case 129:
    case 130:
    case 128:
      *code = reverse_condition_maybe_unordered (*code);
      return 1;

    default:
      return 0;
    }
}
