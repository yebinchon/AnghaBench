
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;


 struct frame_unwind const arm_prologue_unwind ;

__attribute__((used)) static const struct frame_unwind *
arm_prologue_unwind_sniffer (struct frame_info *next_frame)
{
  return &arm_prologue_unwind;
}
