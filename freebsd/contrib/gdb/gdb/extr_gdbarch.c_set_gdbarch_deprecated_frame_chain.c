
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_frame_chain; } ;
typedef int gdbarch_deprecated_frame_chain_ftype ;



void
set_gdbarch_deprecated_frame_chain (struct gdbarch *gdbarch,
                                    gdbarch_deprecated_frame_chain_ftype deprecated_frame_chain)
{
  gdbarch->deprecated_frame_chain = deprecated_frame_chain;
}
