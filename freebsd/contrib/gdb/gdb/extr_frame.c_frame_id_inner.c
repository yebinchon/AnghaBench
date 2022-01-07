
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_id {scalar_t__ stack_addr; } ;


 int INNER_THAN (scalar_t__,scalar_t__) ;
 int fprint_frame_id (int ,struct frame_id) ;
 int fprintf_unfiltered (int ,char*,...) ;
 scalar_t__ frame_debug ;
 int gdb_stdlog ;

int
frame_id_inner (struct frame_id l, struct frame_id r)
{
  int inner;
  if (l.stack_addr == 0 || r.stack_addr == 0)

    inner = 0;
  else




    inner = INNER_THAN (l.stack_addr, r.stack_addr);
  if (frame_debug)
    {
      fprintf_unfiltered (gdb_stdlog, "{ frame_id_inner (l=");
      fprint_frame_id (gdb_stdlog, l);
      fprintf_unfiltered (gdb_stdlog, ",r=");
      fprint_frame_id (gdb_stdlog, r);
      fprintf_unfiltered (gdb_stdlog, ") -> %d }\n", inner);
    }
  return inner;
}
