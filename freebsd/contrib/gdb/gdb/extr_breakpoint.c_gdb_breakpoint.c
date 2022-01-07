
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_breakpoint_args {char* address; char* condition; int hardwareflag; int tempflag; int thread; int ignore_count; } ;
typedef enum gdb_rc { ____Placeholder_gdb_rc } gdb_rc ;


 int RETURN_MASK_ALL ;
 int catch_errors (int ,struct captured_breakpoint_args*,int *,int ) ;
 int do_captured_breakpoint ;

enum gdb_rc
gdb_breakpoint (char *address, char *condition,
  int hardwareflag, int tempflag,
  int thread, int ignore_count)
{
  struct captured_breakpoint_args args;
  args.address = address;
  args.condition = condition;
  args.hardwareflag = hardwareflag;
  args.tempflag = tempflag;
  args.thread = thread;
  args.ignore_count = ignore_count;
  return catch_errors (do_captured_breakpoint, &args,
         ((void*)0), RETURN_MASK_ALL);
}
