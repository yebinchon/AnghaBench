
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_space; } ;
struct TYPE_4__ {int u_fpstate; } ;
struct user {TYPE_1__ i387; TYPE_2__ u_fps; } ;
typedef int CORE_ADDR ;


 int FP0_REGNUM ;
 int KSTKSZ ;
 int SS ;
 scalar_t__ i386_fp_regnum_p (int) ;
 int* regmap ;

CORE_ADDR
register_u_addr (CORE_ADDR blockend, int regnum)
{
  struct user u;
  CORE_ADDR fpstate;

  if (i386_fp_regnum_p (regnum))
    {





      fpstate = blockend + ((char *) &u.i387.st_space - (char *) &u);
      return (fpstate + 10 * (regnum - FP0_REGNUM));

    }

  return (blockend + 4 * regmap[regnum]);
}
