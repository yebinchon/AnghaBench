
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;


 int put_frame_register (struct frame_info*,int,char const*) ;

__attribute__((used)) static void
mips_value_to_register (struct frame_info *frame, int regnum,
   struct type *type, const void *from)
{
  put_frame_register (frame, regnum + 0, (const char *) from + 4);
  put_frame_register (frame, regnum + 1, (const char *) from + 0);
}
