
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;


 int all_reggroup ;
 int float_reggroup ;
 int general_reggroup ;
 int i386_mmx_reggroup ;
 int i386_sse_reggroup ;
 int reggroup_add (struct gdbarch*,int ) ;
 int restore_reggroup ;
 int save_reggroup ;
 int system_reggroup ;
 int vector_reggroup ;

__attribute__((used)) static void
i386_add_reggroups (struct gdbarch *gdbarch)
{
  reggroup_add (gdbarch, i386_sse_reggroup);
  reggroup_add (gdbarch, i386_mmx_reggroup);
  reggroup_add (gdbarch, general_reggroup);
  reggroup_add (gdbarch, float_reggroup);
  reggroup_add (gdbarch, all_reggroup);
  reggroup_add (gdbarch, save_reggroup);
  reggroup_add (gdbarch, restore_reggroup);
  reggroup_add (gdbarch, vector_reggroup);
  reggroup_add (gdbarch, system_reggroup);
}
