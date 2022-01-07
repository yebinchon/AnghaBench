
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_id {scalar_t__ stack_addr; } ;


 int fprint_frame_id (int ,struct frame_id) ;
 int fprintf_unfiltered (int ,char*,...) ;
 scalar_t__ frame_debug ;
 int gdb_stdlog ;

int
frame_id_p (struct frame_id l)
{
  int p;

  p = (l.stack_addr != 0);
  if (frame_debug)
    {
      fprintf_unfiltered (gdb_stdlog, "{ frame_id_p (l=");
      fprint_frame_id (gdb_stdlog, l);
      fprintf_unfiltered (gdb_stdlog, ") -> %d }\n", p);
    }
  return p;
}
