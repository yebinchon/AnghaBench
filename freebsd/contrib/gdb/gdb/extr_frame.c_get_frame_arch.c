
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;


 struct gdbarch* current_gdbarch ;

struct gdbarch *
get_frame_arch (struct frame_info *this_frame)
{
  return current_gdbarch;
}
