
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reggroup {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ALPHA_FP0_REGNUM ;
 int ALPHA_FPCR_REGNUM ;
 int ALPHA_UNIQUE_REGNUM ;
 int ALPHA_ZERO_REGNUM ;
 char* REGISTER_NAME (int) ;
 struct reggroup* all_reggroup ;
 struct reggroup* float_reggroup ;
 struct reggroup* general_reggroup ;
 struct reggroup* restore_reggroup ;
 struct reggroup* save_reggroup ;
 struct reggroup* system_reggroup ;

__attribute__((used)) static int
alpha_register_reggroup_p (struct gdbarch *gdbarch, int regnum,
      struct reggroup *group)
{


  if (REGISTER_NAME (regnum) == ((void*)0) || *REGISTER_NAME (regnum) == '\0')
    return 0;

  if (group == all_reggroup)
    return 1;





  if (regnum == ALPHA_ZERO_REGNUM)
    return 0;


  if (group == save_reggroup || group == restore_reggroup)
    return 1;




  if (regnum == ALPHA_UNIQUE_REGNUM)
    return group == system_reggroup;


  if (regnum == ALPHA_FPCR_REGNUM)
    return group == float_reggroup;

  if (regnum >= ALPHA_FP0_REGNUM && regnum < ALPHA_FP0_REGNUM + 31)
    return group == float_reggroup;
  else
    return group == general_reggroup;
}
