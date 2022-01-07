
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int ULONGEST ;


 int DEPRECATED_REGISTER_VIRTUAL_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int extract_unsigned_integer (char*,int ) ;
 int frame_unwind_register (struct frame_info*,int,char*) ;

void
frame_unwind_unsigned_register (struct frame_info *frame, int regnum,
    ULONGEST *val)
{
  char buf[MAX_REGISTER_SIZE];
  frame_unwind_register (frame, regnum, buf);
  (*val) = extract_unsigned_integer (buf, DEPRECATED_REGISTER_VIRTUAL_SIZE (regnum));
}
