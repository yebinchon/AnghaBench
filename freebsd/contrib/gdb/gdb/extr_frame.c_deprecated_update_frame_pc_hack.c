
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct frame_info {TYPE_2__* next; int level; } ;
struct TYPE_3__ {int p; int value; } ;
struct TYPE_4__ {TYPE_1__ prev_pc; } ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*,int ,int ) ;
 scalar_t__ frame_debug ;
 int gdb_stdlog ;
 int paddr_nz (int ) ;

void
deprecated_update_frame_pc_hack (struct frame_info *frame, CORE_ADDR pc)
{
  if (frame_debug)
    fprintf_unfiltered (gdb_stdlog,
   "{ deprecated_update_frame_pc_hack (frame=%d,pc=0x%s) }\n",
   frame->level, paddr_nz (pc));




  if (frame->next != ((void*)0))
    {



      frame->next->prev_pc.value = pc;
      frame->next->prev_pc.p = 1;
    }
}
