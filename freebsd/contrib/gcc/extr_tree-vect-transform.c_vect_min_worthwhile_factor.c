
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;






 int INT_MAX ;




__attribute__((used)) static int
vect_min_worthwhile_factor (enum tree_code code)
{
  switch (code)
    {
    case 128:
    case 130:
    case 129:
      return 4;

    case 134:
    case 133:
    case 131:
    case 132:
      return 2;

    default:
      return INT_MAX;
    }
}
