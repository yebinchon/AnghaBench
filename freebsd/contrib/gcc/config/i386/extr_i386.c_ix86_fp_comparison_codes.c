
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int TARGET_IEEE_FP ;



 int UNKNOWN ;



 int gcc_unreachable () ;

void
ix86_fp_comparison_codes (enum rtx_code code, enum rtx_code *bypass_code,
     enum rtx_code *first_code,
     enum rtx_code *second_code)
{
  *first_code = code;
  *bypass_code = UNKNOWN;
  *second_code = UNKNOWN;
  switch (code)
    {
    case 139:
    case 140:
    case 134:
    case 128:
    case 133:
    case 129:
    case 130:
    case 136:
      break;
    case 137:
      *first_code = 129;
      *bypass_code = 128;
      break;
    case 138:
      *first_code = 130;
      *bypass_code = 128;
      break;
    case 141:
      *first_code = 133;
      *bypass_code = 128;
      break;
    case 135:
      *first_code = 136;
      *second_code = 128;
      break;
    case 132:
      *first_code = 140;
      *second_code = 128;
      break;
    case 131:
      *first_code = 139;
      *second_code = 128;
      break;
    default:
      gcc_unreachable ();
    }
  if (!TARGET_IEEE_FP)
    {
      *second_code = UNKNOWN;
      *bypass_code = UNKNOWN;
    }
}
