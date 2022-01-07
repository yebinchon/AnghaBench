
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ia64_unit { ____Placeholder_ia64_unit } ia64_unit ;
struct TYPE_2__ {int* exec_unit; } ;
 int IA64_UNIT_B ;
 int IA64_UNIT_F ;
 int IA64_UNIT_I ;
 int IA64_UNIT_L ;
 int IA64_UNIT_M ;
 TYPE_1__* ia64_templ_desc ;

__attribute__((used)) static int
match (int templ, int type, int slot)
{
  enum ia64_unit unit;
  int result;

  unit = ia64_templ_desc[templ].exec_unit[slot];
  switch (type)
    {
    case 132: result = 1; break;
    case 134:
      result = (unit == IA64_UNIT_I || unit == IA64_UNIT_M);
      break;
    case 128: result = (unit == IA64_UNIT_L); break;
    case 130: result = (unit == IA64_UNIT_I); break;
    case 129: result = (unit == IA64_UNIT_M); break;
    case 133: result = (unit == IA64_UNIT_B); break;
    case 131: result = (unit == IA64_UNIT_F); break;
    default: result = 0; break;
    }
  return result;
}
