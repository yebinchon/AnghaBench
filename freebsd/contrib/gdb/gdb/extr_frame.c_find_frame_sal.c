
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;
struct frame_info {int dummy; } ;


 struct symtab_and_line find_pc_line (int ,int ) ;
 int get_frame_pc (struct frame_info*) ;
 int pc_notcurrent (struct frame_info*) ;

void
find_frame_sal (struct frame_info *frame, struct symtab_and_line *sal)
{
  (*sal) = find_pc_line (get_frame_pc (frame), pc_notcurrent (frame));
}
