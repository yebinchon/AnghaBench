
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frame_unwind_register (void*,int,void*) ;

__attribute__((used)) static int
do_frame_unwind_register (void *src, int regnum, void *buf)
{
  frame_unwind_register (src, regnum, buf);
  return 1;
}
