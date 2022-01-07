
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct captured_parse_breakpoint_args {int not_found_ptr; int addr_string_p; int sals_p; int arg_p; } ;


 int GDB_RC_OK ;
 int parse_breakpoint_sals (int ,int ,int ,int ) ;

__attribute__((used)) static int
do_captured_parse_breakpoint (struct ui_out *ui, void *data)
{
  struct captured_parse_breakpoint_args *args = data;

  parse_breakpoint_sals (args->arg_p, args->sals_p, args->addr_string_p,
           args->not_found_ptr);

  return GDB_RC_OK;
}
