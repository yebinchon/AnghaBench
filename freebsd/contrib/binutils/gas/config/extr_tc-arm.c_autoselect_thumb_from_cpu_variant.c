
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int arm_ext_v1 ;
 int cpu_variant ;
 int opcode_select (int) ;

__attribute__((used)) static void
autoselect_thumb_from_cpu_variant (void)
{
  if (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_ext_v1))
    opcode_select (16);
}
