
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack_addr; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
struct frame_info {TYPE_2__ this_id; int level; } ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*,int ,int ) ;
 scalar_t__ frame_debug ;
 int gdb_stdlog ;
 int paddr_nz (int ) ;

void
deprecated_update_frame_base_hack (struct frame_info *frame, CORE_ADDR base)
{
  if (frame_debug)
    fprintf_unfiltered (gdb_stdlog,
   "{ deprecated_update_frame_base_hack (frame=%d,base=0x%s) }\n",
   frame->level, paddr_nz (base));

  frame->this_id.value.stack_addr = base;
}
