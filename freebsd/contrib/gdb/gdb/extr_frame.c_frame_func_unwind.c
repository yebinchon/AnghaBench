
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; int addr; } ;
struct frame_info {TYPE_1__ prev_func; int level; } ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*,int ,int ) ;
 scalar_t__ frame_debug ;
 int frame_unwind_address_in_block (struct frame_info*) ;
 int gdb_stdlog ;
 int get_pc_function_start (int ) ;
 int paddr_nz (int ) ;

CORE_ADDR
frame_func_unwind (struct frame_info *fi)
{
  if (!fi->prev_func.p)
    {


      CORE_ADDR addr_in_block = frame_unwind_address_in_block (fi);
      fi->prev_func.p = 1;
      fi->prev_func.addr = get_pc_function_start (addr_in_block);
      if (frame_debug)
 fprintf_unfiltered (gdb_stdlog,
       "{ frame_func_unwind (fi=%d) -> 0x%s }\n",
       fi->level, paddr_nz (fi->prev_func.addr));
    }
  return fi->prev_func.addr;
}
