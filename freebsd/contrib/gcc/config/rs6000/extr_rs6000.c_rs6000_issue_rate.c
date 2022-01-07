
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reload_completed ;
 int rs6000_cpu_attr ;

__attribute__((used)) static int
rs6000_issue_rate (void)
{

  if (!reload_completed)
    return 1;

  switch (rs6000_cpu_attr) {
  case 130:
  case 128:
  case 140:
  case 133:
    return 3;
  case 141:
  case 139:
  case 132:
  case 134:
  case 131:
    return 2;
  case 129:
  case 138:
  case 137:
  case 136:
  case 135:
    return 4;
  case 143:
  case 142:
    return 5;
  default:
    return 1;
  }
}
