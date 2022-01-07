
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PERF_REG_X86_AX ;
 int PERF_REG_X86_BP ;
 int PERF_REG_X86_BX ;
 int PERF_REG_X86_CX ;
 int PERF_REG_X86_DI ;
 int PERF_REG_X86_DX ;
 int PERF_REG_X86_IP ;
 int PERF_REG_X86_SI ;
 int PERF_REG_X86_SP ;
 int pr_err (char*,int) ;

int unwind__arch_reg_id(int regnum)
{
 int id;

 switch (regnum) {
 case 136:
  id = PERF_REG_X86_AX;
  break;
 case 131:
  id = PERF_REG_X86_DX;
  break;
 case 133:
  id = PERF_REG_X86_CX;
  break;
 case 134:
  id = PERF_REG_X86_BX;
  break;
 case 129:
  id = PERF_REG_X86_SI;
  break;
 case 132:
  id = PERF_REG_X86_DI;
  break;
 case 135:
  id = PERF_REG_X86_BP;
  break;
 case 128:
  id = PERF_REG_X86_SP;
  break;
 case 130:
  id = PERF_REG_X86_IP;
  break;
 default:
  pr_err("unwind: invalid reg id %d\n", regnum);
  return -EINVAL;
 }

 return id;
}
