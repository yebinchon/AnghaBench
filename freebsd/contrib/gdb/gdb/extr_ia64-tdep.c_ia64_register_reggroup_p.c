
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reggroup {int dummy; } ;
struct gdbarch {int dummy; } ;


 int NUM_IA64_RAW_REGS ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_FLT ;
 int TYPE_VECTOR (int ) ;
 struct reggroup* all_reggroup ;
 struct reggroup* float_reggroup ;
 struct reggroup* general_reggroup ;
 int register_type (struct gdbarch*,int) ;
 struct reggroup* restore_reggroup ;
 struct reggroup* save_reggroup ;
 struct reggroup* vector_reggroup ;

int
ia64_register_reggroup_p (struct gdbarch *gdbarch, int regnum,
     struct reggroup *group)
{
  int vector_p;
  int float_p;
  int raw_p;
  if (group == all_reggroup)
    return 1;
  vector_p = TYPE_VECTOR (register_type (gdbarch, regnum));
  float_p = TYPE_CODE (register_type (gdbarch, regnum)) == TYPE_CODE_FLT;
  raw_p = regnum < NUM_IA64_RAW_REGS;
  if (group == float_reggroup)
    return float_p;
  if (group == vector_reggroup)
    return vector_p;
  if (group == general_reggroup)
    return (!vector_p && !float_p);
  if (group == save_reggroup || group == restore_reggroup)
    return raw_p;
  return 0;
}
