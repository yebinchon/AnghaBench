
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
 int NUM_TREE_CODES ;
 int TREE_CODE (int ) ;




__attribute__((used)) static bool
maybe_lvalue_p (tree x)
{

  switch (TREE_CODE (x))
  {
  case 129:
  case 138:
  case 134:
  case 144:
  case 147:
  case 132:

  case 150:
  case 145:
  case 155:
  case 141:
  case 153:
  case 154:
  case 151:
  case 139:

  case 135:
  case 146:
  case 136:
  case 137:
  case 133:
  case 130:
  case 128:
  case 149:
  case 140:
  case 131:
  case 148:
  case 152:
  case 142:
  case 143:
    break;

  default:

    if ((int)TREE_CODE (x) >= NUM_TREE_CODES)
      break;
    return 0;
  }

  return 1;
}
