
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_frame_chain_valid; } ;
typedef int gdbarch_deprecated_frame_chain_valid_ftype ;



void
set_gdbarch_deprecated_frame_chain_valid (struct gdbarch *gdbarch,
                                          gdbarch_deprecated_frame_chain_valid_ftype deprecated_frame_chain_valid)
{
  gdbarch->deprecated_frame_chain_valid = deprecated_frame_chain_valid;
}
