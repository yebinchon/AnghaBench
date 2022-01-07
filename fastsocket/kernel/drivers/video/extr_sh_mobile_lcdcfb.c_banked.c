
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool banked(int reg_nr)
{
 switch (reg_nr) {
 case 134:
 case 133:
 case 132:
 case 138:
 case 130:
 case 131:
 case 135:
 case 137:
 case 136:
 case 129:
 case 128:
  return 1;
 }
 return 0;
}
