
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ dwarf2_frame_find_fde (int *) ;
 struct frame_unwind const dwarf2_frame_unwind ;
 int frame_unwind_address_in_block (struct frame_info*) ;

const struct frame_unwind *
dwarf2_frame_sniffer (struct frame_info *next_frame)
{



  CORE_ADDR block_addr = frame_unwind_address_in_block (next_frame);
  if (dwarf2_frame_find_fde (&block_addr))
    return &dwarf2_frame_unwind;

  return ((void*)0);
}
