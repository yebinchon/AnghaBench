
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int gcc_unreachable () ;

enum rtx_code
signed_condition (enum rtx_code code)
{
  switch (code)
    {
    case 137:
    case 128:
    case 134:
    case 136:
    case 130:
    case 132:
      return code;

    case 133:
      return 134;
    case 135:
      return 136;
    case 129:
      return 130;
    case 131:
      return 132;

    default:
      gcc_unreachable ();
    }
}
