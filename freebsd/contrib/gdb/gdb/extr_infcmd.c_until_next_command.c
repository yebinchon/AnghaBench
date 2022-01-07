
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int end; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int BLOCK_START (int ) ;
 int STEP_OVER_ALL ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int TARGET_SIGNAL_DEFAULT ;
 int clear_proceed_status () ;
 int error (char*) ;
 struct symbol* find_pc_function (int ) ;
 struct symtab_and_line find_pc_line (int ,int ) ;
 struct frame_info* get_current_frame () ;
 int get_frame_id (struct frame_info*) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;
 int proceed (int ,int ,int) ;
 int read_pc () ;
 int read_sp () ;
 int step_frame_id ;
 scalar_t__ step_multi ;
 int step_over_calls ;
 int step_range_end ;
 int step_range_start ;
 int step_sp ;

__attribute__((used)) static void
until_next_command (int from_tty)
{
  struct frame_info *frame;
  CORE_ADDR pc;
  struct symbol *func;
  struct symtab_and_line sal;

  clear_proceed_status ();

  frame = get_current_frame ();





  pc = read_pc ();
  func = find_pc_function (pc);

  if (!func)
    {
      struct minimal_symbol *msymbol = lookup_minimal_symbol_by_pc (pc);

      if (msymbol == ((void*)0))
 error ("Execution is not within a known function.");

      step_range_start = SYMBOL_VALUE_ADDRESS (msymbol);
      step_range_end = pc;
    }
  else
    {
      sal = find_pc_line (pc, 0);

      step_range_start = BLOCK_START (SYMBOL_BLOCK_VALUE (func));
      step_range_end = sal.end;
    }

  step_over_calls = STEP_OVER_ALL;
  step_frame_id = get_frame_id (frame);
  step_sp = read_sp ();

  step_multi = 0;

  proceed ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 1);
}
