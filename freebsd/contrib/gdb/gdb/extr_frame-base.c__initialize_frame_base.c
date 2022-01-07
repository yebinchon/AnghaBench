
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frame_base_data ;
 int frame_base_init ;
 int register_gdbarch_data (int ) ;

void
_initialize_frame_base (void)
{
  frame_base_data = register_gdbarch_data (frame_base_init);
}
