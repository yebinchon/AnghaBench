
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *print_lockmode(int mode)
{
 switch (mode) {
 case 131:
  return "--";
 case 130:
  return "NL";
 case 134:
  return "CR";
 case 133:
  return "CW";
 case 129:
  return "PR";
 case 128:
  return "PW";
 case 132:
  return "EX";
 default:
  return "??";
 }
}
