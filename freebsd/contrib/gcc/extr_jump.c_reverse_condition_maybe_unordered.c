
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int gcc_unreachable () ;

enum rtx_code
reverse_condition_maybe_unordered (enum rtx_code code)
{
  switch (code)
    {
    case 141:
      return 135;
    case 135:
      return 141;
    case 139:
      return 130;
    case 140:
      return 129;
    case 137:
      return 132;
    case 138:
      return 131;
    case 136:
      return 133;
    case 128:
      return 134;
    case 134:
      return 128;
    case 129:
      return 140;
    case 130:
      return 139;
    case 131:
      return 138;
    case 132:
      return 137;
    case 133:
      return 136;

    default:
      gcc_unreachable ();
    }
}
