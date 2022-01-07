
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int dwarf2_frame_base_sniffer ;
 int dwarf2_frame_sniffer ;
 int frame_base_append_sniffer (struct gdbarch*,int ) ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;

void
alpha_dwarf2_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  frame_unwind_append_sniffer (gdbarch, dwarf2_frame_sniffer);
  frame_base_append_sniffer (gdbarch, dwarf2_frame_base_sniffer);
}
