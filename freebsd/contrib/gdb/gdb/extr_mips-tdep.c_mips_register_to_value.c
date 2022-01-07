
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int get_frame_register (struct frame_info*,int,char*) ;

__attribute__((used)) static void
mips_register_to_value (struct frame_info *frame, int regnum,
   struct type *type, void *to)
{
  get_frame_register (frame, regnum + 0, (char *) to + 4);
  get_frame_register (frame, regnum + 1, (char *) to + 0);
}
