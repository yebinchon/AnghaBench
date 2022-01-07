
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct frame_id {int dummy; } ;
struct TYPE_3__ {int p; struct frame_id value; } ;
struct frame_info {TYPE_1__ this_id; int prologue_cache; int next; TYPE_2__* unwind; int type; int level; } ;
struct TYPE_4__ {int (* this_id ) (int ,int *,struct frame_id*) ;int type; } ;


 int current_gdbarch ;
 int fprint_frame_id (int ,struct frame_id) ;
 int fprintf_unfiltered (int ,char*,...) ;
 scalar_t__ frame_debug ;
 TYPE_2__* frame_unwind_find_by_frame (int ) ;
 int gdb_assert (int) ;
 int gdb_stdlog ;
 int legacy_frame_p (int ) ;
 struct frame_id null_frame_id ;
 int stub1 (int ,int *,struct frame_id*) ;

struct frame_id
get_frame_id (struct frame_info *fi)
{
  if (fi == ((void*)0))
    {
      return null_frame_id;
    }
  if (!fi->this_id.p)
    {
      gdb_assert (!legacy_frame_p (current_gdbarch));
      if (frame_debug)
 fprintf_unfiltered (gdb_stdlog, "{ get_frame_id (fi=%d) ",
       fi->level);

      if (fi->unwind == ((void*)0))
 {
   fi->unwind = frame_unwind_find_by_frame (fi->next);





   fi->type = fi->unwind->type;
 }

      fi->unwind->this_id (fi->next, &fi->prologue_cache, &fi->this_id.value);
      fi->this_id.p = 1;
      if (frame_debug)
 {
   fprintf_unfiltered (gdb_stdlog, "-> ");
   fprint_frame_id (gdb_stdlog, fi->this_id.value);
   fprintf_unfiltered (gdb_stdlog, " }\n");
 }
    }
  return fi->this_id.value;
}
