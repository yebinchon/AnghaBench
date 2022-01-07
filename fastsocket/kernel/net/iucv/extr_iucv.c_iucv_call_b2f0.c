
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iprcode; } ;
union iucv_param {TYPE_1__ ctrl; } ;


 unsigned long virt_to_phys (union iucv_param*) ;

__attribute__((used)) static inline int iucv_call_b2f0(int command, union iucv_param *parm)
{
 register unsigned long reg0 asm ("0");
 register unsigned long reg1 asm ("1");
 int ccode;

 reg0 = command;
 reg1 = virt_to_phys(parm);
 asm volatile(
  "	.long 0xb2f01000\n"
  "	ipm	%0\n"
  "	srl	%0,28\n"
  : "=d" (ccode), "=m" (*parm), "+d" (reg0), "+a" (reg1)
  : "m" (*parm) : "cc");
 return (ccode == 1) ? parm->ctrl.iprcode : ccode;
}
