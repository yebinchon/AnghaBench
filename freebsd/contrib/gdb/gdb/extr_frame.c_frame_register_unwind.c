
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_unwind_cache {int dummy; } ;
struct frame_info {int prologue_cache; int next; TYPE_1__* unwind; int type; int level; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
struct TYPE_2__ {int (* prev_register ) (int ,int *,int,int*,int*,int *,int*,void*) ;int type; } ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 int fprintf_unfiltered (int ,char*,...) ;
 scalar_t__ frame_debug ;
 int frame_map_regnum_to_name (struct frame_info*,int) ;
 TYPE_1__* frame_unwind_find_by_frame (int ) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int paddr_nz (int ) ;
 int register_size (int ,int) ;
 int stub1 (int ,int *,int,int*,int*,int *,int*,void*) ;

void
frame_register_unwind (struct frame_info *frame, int regnum,
         int *optimizedp, enum lval_type *lvalp,
         CORE_ADDR *addrp, int *realnump, void *bufferp)
{
  struct frame_unwind_cache *cache;

  if (frame_debug)
    {
      fprintf_unfiltered (gdb_stdlog, "{ frame_register_unwind (frame=%d,regnum=%d(%s),...) ",

     frame->level, regnum,
     frame_map_regnum_to_name (frame, regnum));
    }



  gdb_assert (optimizedp != ((void*)0));
  gdb_assert (lvalp != ((void*)0));
  gdb_assert (addrp != ((void*)0));
  gdb_assert (realnump != ((void*)0));






  gdb_assert (frame != ((void*)0));


  if (frame->unwind == ((void*)0))
    {
      frame->unwind = frame_unwind_find_by_frame (frame->next);





      frame->type = frame->unwind->type;
    }




  frame->unwind->prev_register (frame->next, &frame->prologue_cache, regnum,
    optimizedp, lvalp, addrp, realnump, bufferp);

  if (frame_debug)
    {
      fprintf_unfiltered (gdb_stdlog, "->");
      fprintf_unfiltered (gdb_stdlog, " *optimizedp=%d", (*optimizedp));
      fprintf_unfiltered (gdb_stdlog, " *lvalp=%d", (int) (*lvalp));
      fprintf_unfiltered (gdb_stdlog, " *addrp=0x%s", paddr_nz ((*addrp)));
      fprintf_unfiltered (gdb_stdlog, " *bufferp=");
      if (bufferp == ((void*)0))
 fprintf_unfiltered (gdb_stdlog, "<NULL>");
      else
 {
   int i;
   const unsigned char *buf = bufferp;
   fprintf_unfiltered (gdb_stdlog, "[");
   for (i = 0; i < register_size (current_gdbarch, regnum); i++)
     fprintf_unfiltered (gdb_stdlog, "%02x", buf[i]);
   fprintf_unfiltered (gdb_stdlog, "]");
 }
      fprintf_unfiltered (gdb_stdlog, " }\n");
    }
}
