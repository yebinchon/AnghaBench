
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int frame_pc_unwind (struct frame_info*) ;
 scalar_t__ mipsfbsd_in_stub_section (int ,int *) ;
 struct frame_unwind const mipsfbsd_stub_frame_unwind ;

__attribute__((used)) static const struct frame_unwind *
mipsfbsd_stub_frame_sniffer (struct frame_info *next_frame)
{
   CORE_ADDR pc = frame_pc_unwind (next_frame);

   if (mipsfbsd_in_stub_section(pc, ((void*)0)))
     return &mipsfbsd_stub_frame_unwind;

   return ((void*)0);
}
