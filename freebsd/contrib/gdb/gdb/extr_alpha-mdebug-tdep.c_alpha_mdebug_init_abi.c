
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int dummy; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int alpha_mdebug_frame_base_sniffer ;
 int alpha_mdebug_frame_sniffer ;
 int frame_base_append_sniffer (struct gdbarch*,int ) ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;

void
alpha_mdebug_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  frame_unwind_append_sniffer (gdbarch, alpha_mdebug_frame_sniffer);
  frame_base_append_sniffer (gdbarch, alpha_mdebug_frame_base_sniffer);
}
