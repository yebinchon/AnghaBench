
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,unsigned int) ;
 int TARGET_64BIT ;
 scalar_t__ USE_HIDDEN_LINKONCE ;
 int gcc_assert (int) ;
 char** reg_names ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
get_pc_thunk_name (char name[32], unsigned int regno)
{
  gcc_assert (!TARGET_64BIT);

  if (USE_HIDDEN_LINKONCE)
    sprintf (name, "__i686.get_pc_thunk.%s", reg_names[regno]);
  else
    ASM_GENERATE_INTERNAL_LABEL (name, "LPR", regno);
}
