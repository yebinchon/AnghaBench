
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int REG_TYPE_RN ;
 int arm_reg_parse (char**,int ) ;

int
tc_arm_regname_to_dw2regnum (char *regname)
{
  int reg = arm_reg_parse (&regname, REG_TYPE_RN);

  if (reg == FAIL)
    return -1;

  return reg;
}
