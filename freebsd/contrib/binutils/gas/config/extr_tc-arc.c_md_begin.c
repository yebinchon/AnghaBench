
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIG_ENDIAN ;
 int arc_get_opcode_mach (int ,int) ;
 int arc_mach_type ;
 int arc_opcode_init_tables (int ) ;
 int as_warn (char*) ;
 int bfd_arch_arc ;
 int bfd_set_arch_mach (int ,int ,int ) ;
 scalar_t__ byte_order ;
 int stdoutput ;
 int target_big_endian ;

void
md_begin (void)
{

  target_big_endian = byte_order == BIG_ENDIAN;

  if (!bfd_set_arch_mach (stdoutput, bfd_arch_arc, arc_mach_type))
    as_warn ("could not set architecture and machine");



  arc_opcode_init_tables (arc_get_opcode_mach (arc_mach_type,
            target_big_endian));
}
