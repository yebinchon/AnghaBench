
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 int ERROR_MARK ;
 scalar_t__ flag_trapping_math ;
 int gcc_unreachable () ;

enum tree_code
invert_tree_comparison (enum tree_code code, bool honor_nans)
{
  if (honor_nans && flag_trapping_math)
    return ERROR_MARK;

  switch (code)
    {
    case 141:
      return 135;
    case 135:
      return 141;
    case 139:
      return honor_nans ? 130 : 138;
    case 140:
      return honor_nans ? 129 : 136;
    case 136:
      return honor_nans ? 132 : 140;
    case 138:
      return honor_nans ? 131 : 139;
    case 137:
      return 133;
    case 133:
      return 137;
    case 131:
      return 138;
    case 132:
      return 136;
    case 129:
      return 140;
    case 130:
      return 139;
    case 134:
      return 128;
    case 128:
      return 134;
    default:
      gcc_unreachable ();
    }
}
