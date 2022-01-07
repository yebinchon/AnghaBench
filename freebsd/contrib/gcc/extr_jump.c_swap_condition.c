
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int gcc_unreachable () ;

enum rtx_code
swap_condition (enum rtx_code code)
{
  switch (code)
    {
    case 145:
    case 135:
    case 128:
    case 134:
    case 133:
    case 137:
      return code;

    case 142:
      return 138;
    case 144:
      return 140;
    case 138:
      return 142;
    case 140:
      return 144;
    case 141:
      return 136;
    case 143:
      return 139;
    case 136:
      return 141;
    case 139:
      return 143;
    case 129:
      return 131;
    case 130:
      return 132;
    case 131:
      return 129;
    case 132:
      return 130;

    default:
      gcc_unreachable ();
    }
}
