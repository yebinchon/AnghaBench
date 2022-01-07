
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int TARGET_IEEE_FP ;






 int gcc_unreachable () ;

__attribute__((used)) static int
ix86_fp_comparison_arithmetics_cost (enum rtx_code code)
{
  if (!TARGET_IEEE_FP)
    return 4;

  switch (code)
    {
    case 130:
    case 129:
    case 136:
    case 139:
    case 140:
    case 128:
    case 134:
    case 133:
      return 4;
      break;
    case 137:
    case 135:
    case 141:
    case 132:
      return 5;
      break;
    case 138:
    case 131:
      return 6;
      break;
    default:
      gcc_unreachable ();
    }
}
