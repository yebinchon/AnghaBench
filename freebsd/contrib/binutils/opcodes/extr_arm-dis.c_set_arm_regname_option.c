
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int regname_selected ;

int
set_arm_regname_option (int option)
{
  int old = regname_selected;
  regname_selected = option;
  return old;
}
