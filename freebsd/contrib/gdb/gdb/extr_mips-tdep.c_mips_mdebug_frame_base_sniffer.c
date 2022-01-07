
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_base {int dummy; } ;


 struct frame_base const mips_mdebug_frame_base ;

__attribute__((used)) static const struct frame_base *
mips_mdebug_frame_base_sniffer (struct frame_info *next_frame)
{
  return &mips_mdebug_frame_base;
}
