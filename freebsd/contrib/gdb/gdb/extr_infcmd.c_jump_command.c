
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {scalar_t__ symtab; scalar_t__ pc; int line; } ;
struct symbol {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int ERROR_NO_INFERIOR ;
 int SYMBOL_BFD_SECTION (struct symbol*) ;
 int SYMBOL_PRINT_NAME (struct symbol*) ;
 int TARGET_SIGNAL_0 ;
 int async_disable_stdin () ;
 int clear_proceed_status () ;
 struct symtabs_and_lines decode_line_spec_1 (char*,int) ;
 int error (char*) ;
 int error_no_arg (char*) ;
 scalar_t__ event_loop_p ;
 struct symbol* find_pc_function (scalar_t__) ;
 int fixup_symbol_section (struct symbol*,int ) ;
 int gdb_stdout ;
 int get_current_frame () ;
 struct symbol* get_frame_function (int ) ;
 int print_address_numeric (scalar_t__,int,int ) ;
 int printf_filtered (char*) ;
 int proceed (scalar_t__,int ,int ) ;
 int query (char*,...) ;
 int resolve_sal_pc (struct symtab_and_line*) ;
 int section_is_mapped (int ) ;
 scalar_t__ section_is_overlay (int ) ;
 int strip_bg_char (char**) ;
 scalar_t__ target_can_async_p () ;
 int xfree (struct symtab_and_line*) ;

__attribute__((used)) static void
jump_command (char *arg, int from_tty)
{
  CORE_ADDR addr;
  struct symtabs_and_lines sals;
  struct symtab_and_line sal;
  struct symbol *fn;
  struct symbol *sfn;
  int async_exec = 0;

  ERROR_NO_INFERIOR;


  if (arg != ((void*)0))
    async_exec = strip_bg_char (&arg);



  if (event_loop_p && async_exec && !target_can_async_p ())
    error ("Asynchronous execution not supported on this target.");



  if (event_loop_p && !async_exec && target_can_async_p ())
    {

      async_disable_stdin ();
    }

  if (!arg)
    error_no_arg ("starting address");

  sals = decode_line_spec_1 (arg, 1);
  if (sals.nelts != 1)
    {
      error ("Unreasonable jump request");
    }

  sal = sals.sals[0];
  xfree (sals.sals);

  if (sal.symtab == 0 && sal.pc == 0)
    error ("No source file has been specified.");

  resolve_sal_pc (&sal);


  fn = get_frame_function (get_current_frame ());
  sfn = find_pc_function (sal.pc);
  if (fn != ((void*)0) && sfn != fn)
    {
      if (!query ("Line %d is not in `%s'.  Jump anyway? ", sal.line,
    SYMBOL_PRINT_NAME (fn)))
 {
   error ("Not confirmed.");

 }
    }

  if (sfn != ((void*)0))
    {
      fixup_symbol_section (sfn, 0);
      if (section_is_overlay (SYMBOL_BFD_SECTION (sfn)) &&
   !section_is_mapped (SYMBOL_BFD_SECTION (sfn)))
 {
   if (!query ("WARNING!!!  Destination is in unmapped overlay!  Jump anyway? "))
     {
       error ("Not confirmed.");

     }
 }
    }

  addr = sal.pc;

  if (from_tty)
    {
      printf_filtered ("Continuing at ");
      print_address_numeric (addr, 1, gdb_stdout);
      printf_filtered (".\n");
    }

  clear_proceed_status ();
  proceed (addr, TARGET_SIGNAL_0, 0);
}
