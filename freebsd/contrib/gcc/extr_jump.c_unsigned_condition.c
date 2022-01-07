
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int gcc_unreachable () ;

enum rtx_code
unsigned_condition (enum rtx_code code)
{
  switch (code)
    {
    case 137:
    case 128:
    case 133:
    case 135:
    case 129:
    case 131:
      return code;

    case 134:
      return 133;
    case 136:
      return 135;
    case 130:
      return 129;
    case 132:
      return 131;

    default:
      gcc_unreachable ();
    }
}
