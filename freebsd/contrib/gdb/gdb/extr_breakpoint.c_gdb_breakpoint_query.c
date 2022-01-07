
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct captured_breakpoint_query_args {int bnum; } ;
typedef enum gdb_rc { ____Placeholder_gdb_rc } gdb_rc ;


 int RETURN_MASK_ALL ;
 int catch_exceptions (struct ui_out*,int ,struct captured_breakpoint_query_args*,int *,int ) ;
 int do_captured_breakpoint_query ;

enum gdb_rc
gdb_breakpoint_query (struct ui_out *uiout, int bnum)
{
  struct captured_breakpoint_query_args args;
  args.bnum = bnum;


  return catch_exceptions (uiout, do_captured_breakpoint_query, &args,
      ((void*)0), RETURN_MASK_ALL);
}
