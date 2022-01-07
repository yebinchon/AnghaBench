
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_id {scalar_t__ stack_addr; scalar_t__ code_addr; scalar_t__ special_addr; } ;


 int fprint_frame_id (int ,struct frame_id) ;
 int fprintf_unfiltered (int ,char*,...) ;
 scalar_t__ frame_debug ;
 int gdb_stdlog ;

int
frame_id_eq (struct frame_id l, struct frame_id r)
{
  int eq;
  if (l.stack_addr == 0 || r.stack_addr == 0)

    eq = 0;
  else if (l.stack_addr != r.stack_addr)

    eq = 0;
  else if (l.code_addr == 0 || r.code_addr == 0)

    eq = 1;
  else if (l.code_addr != r.code_addr)

    eq = 0;
  else if (l.special_addr == 0 || r.special_addr == 0)

    eq = 1;
  else if (l.special_addr == r.special_addr)

    eq = 1;
  else

    eq = 0;
  if (frame_debug)
    {
      fprintf_unfiltered (gdb_stdlog, "{ frame_id_eq (l=");
      fprint_frame_id (gdb_stdlog, l);
      fprintf_unfiltered (gdb_stdlog, ",r=");
      fprint_frame_id (gdb_stdlog, r);
      fprintf_unfiltered (gdb_stdlog, ") -> %d }\n", eq);
    }
  return eq;
}
