
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;


 struct frame_unwind const i386_frame_unwind ;

__attribute__((used)) static const struct frame_unwind *
i386_frame_sniffer (struct frame_info *next_frame)
{
  return &i386_frame_unwind;
}
