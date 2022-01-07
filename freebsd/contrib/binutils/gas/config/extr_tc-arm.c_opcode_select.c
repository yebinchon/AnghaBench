
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int MAP_ARM ;
 int MAP_THUMB ;
 int _ (char*) ;
 int arm_ext_v1 ;
 int arm_ext_v4t ;
 int as_bad (int ,...) ;
 int cpu_variant ;
 int frag_align (int,int ,int ) ;
 int mapping_state (int ) ;
 int need_pass_2 ;
 int now_seg ;
 int record_alignment (int ,int) ;
 int thumb_mode ;

__attribute__((used)) static void
opcode_select (int width)
{
  switch (width)
    {
    case 16:
      if (! thumb_mode)
 {
   if (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_ext_v4t))
     as_bad (_("selected processor does not support THUMB opcodes"));

   thumb_mode = 1;


   record_alignment (now_seg, 1);
 }
      mapping_state (MAP_THUMB);
      break;

    case 32:
      if (thumb_mode)
 {
   if (!ARM_CPU_HAS_FEATURE (cpu_variant, arm_ext_v1))
     as_bad (_("selected processor does not support ARM opcodes"));

   thumb_mode = 0;

   if (!need_pass_2)
     frag_align (2, 0, 0);

   record_alignment (now_seg, 1);
 }
      mapping_state (MAP_ARM);
      break;

    default:
      as_bad (_("invalid instruction size selected (%d)"), width);
    }
}
