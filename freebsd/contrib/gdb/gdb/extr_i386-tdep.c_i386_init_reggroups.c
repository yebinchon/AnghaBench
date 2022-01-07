
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USER_REGGROUP ;
 void* i386_mmx_reggroup ;
 void* i386_sse_reggroup ;
 void* reggroup_new (char*,int ) ;

__attribute__((used)) static void
i386_init_reggroups (void)
{
  i386_sse_reggroup = reggroup_new ("sse", USER_REGGROUP);
  i386_mmx_reggroup = reggroup_new ("mmx", USER_REGGROUP);
}
