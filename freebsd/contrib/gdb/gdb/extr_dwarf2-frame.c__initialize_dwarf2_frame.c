
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dwarf2_frame_data ;
 int dwarf2_frame_init ;
 int dwarf2_frame_objfile_data ;
 int register_gdbarch_data (int ) ;
 int register_objfile_data () ;

void
_initialize_dwarf2_frame (void)
{
  dwarf2_frame_data = register_gdbarch_data (dwarf2_frame_init);
  dwarf2_frame_objfile_data = register_objfile_data ();
}
