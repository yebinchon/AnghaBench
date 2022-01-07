
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_base {int dummy; } ;
typedef int CORE_ADDR ;


 struct frame_base const dwarf2_frame_base ;
 scalar_t__ dwarf2_frame_find_fde (int *) ;
 int frame_pc_unwind (struct frame_info*) ;

const struct frame_base *
dwarf2_frame_base_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  if (dwarf2_frame_find_fde (&pc))
    return &dwarf2_frame_base;

  return ((void*)0);
}
