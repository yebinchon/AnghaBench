
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARM_FPS_REGNUM ;
 size_t ARM_PC_REGNUM ;
 size_t ARM_PS_REGNUM ;
 char** arm_register_names ;
 int current_option ;
 char const* disassembly_style ;
 int get_arm_regnames (int,char const**,char const**,char const***) ;
 scalar_t__ isupper (char const) ;
 int num_disassembly_options ;
 int set_arm_regname_option (int) ;

__attribute__((used)) static void
set_disassembly_style (void)
{
  const char *setname, *setdesc, **regnames;
  int numregs, j;


  int current = 0;
  numregs = get_arm_regnames (current, &setname, &setdesc, &regnames);
  while ((disassembly_style != setname)
  && (current < num_disassembly_options))
    get_arm_regnames (++current, &setname, &setdesc, &regnames);
  current_option = current;


  for (j = 0; j < numregs; j++)
    arm_register_names[j] = (char *) regnames[j];


  if (isupper (*regnames[ARM_PC_REGNUM]))
    {
      arm_register_names[ARM_FPS_REGNUM] = "FPS";
      arm_register_names[ARM_PS_REGNUM] = "CPSR";
    }
  else
    {
      arm_register_names[ARM_FPS_REGNUM] = "fps";
      arm_register_names[ARM_PS_REGNUM] = "cpsr";
    }


  set_arm_regname_option (current);
}
