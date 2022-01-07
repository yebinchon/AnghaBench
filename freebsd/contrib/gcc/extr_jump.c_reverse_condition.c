
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int UNKNOWN ;



 int gcc_unreachable () ;

enum rtx_code
reverse_condition (enum rtx_code code)
{
  switch (code)
    {
    case 145:
      return 135;
    case 135:
      return 145;
    case 142:
      return 140;
    case 144:
      return 138;
    case 138:
      return 144;
    case 140:
      return 142;
    case 141:
      return 139;
    case 143:
      return 136;
    case 136:
      return 143;
    case 139:
      return 141;
    case 128:
      return 134;
    case 134:
      return 128;

    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 137:
      return UNKNOWN;

    default:
      gcc_unreachable ();
    }
}
