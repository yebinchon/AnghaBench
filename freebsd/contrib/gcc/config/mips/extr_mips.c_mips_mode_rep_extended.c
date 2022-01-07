
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;
 int SIGN_EXTEND ;
 int SImode ;
 scalar_t__ TARGET_64BIT ;
 int UNKNOWN ;

int
mips_mode_rep_extended (enum machine_mode mode, enum machine_mode mode_rep)
{
  if (TARGET_64BIT && mode == SImode && mode_rep == DImode)
    return SIGN_EXTEND;

  return UNKNOWN;
}
