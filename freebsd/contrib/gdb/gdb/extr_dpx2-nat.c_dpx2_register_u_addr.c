
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user {int * u_fpstate; } ;


 int FP0_REGNUM ;
 int* regmap ;

int
dpx2_register_u_addr (int blockend, int regnum)
{
  if (regnum < FP0_REGNUM)
    return (blockend + 4 * regmap[regnum]);
  else
    return (int) &(((struct user *) 0)->u_fpstate[regmap[regnum]]);
}
