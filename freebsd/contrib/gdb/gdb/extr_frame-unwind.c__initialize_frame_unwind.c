
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frame_unwind_data ;
 int frame_unwind_init ;
 int register_gdbarch_data (int ) ;

void
_initialize_frame_unwind (void)
{
  frame_unwind_data = register_gdbarch_data (frame_unwind_init);
}
