
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DWARF2_DEBUG ;
 scalar_t__ DWARF2_FRAME_INFO ;
 scalar_t__ DWARF2_UNWIND_INFO ;
 int USING_SJLJ_EXCEPTIONS ;
 scalar_t__ VMS_AND_DWARF2_DEBUG ;
 scalar_t__ flag_exceptions ;
 scalar_t__ flag_unwind_tables ;
 scalar_t__ write_symbols ;

int
dwarf2out_do_frame (void)
{



  return (write_symbols == DWARF2_DEBUG
   || write_symbols == VMS_AND_DWARF2_DEBUG
   || DWARF2_FRAME_INFO





   );
}
