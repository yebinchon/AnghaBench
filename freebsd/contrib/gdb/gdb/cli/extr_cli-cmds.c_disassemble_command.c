
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asection ;
typedef int CORE_ADDR ;


 int DISASSEM_WIN ;
 scalar_t__ FUNCTION_START_OFFSET ;
 int deprecated_selected_frame ;
 int error (char*) ;
 scalar_t__ find_pc_partial_function (int ,char**,int *,int *) ;
 int gdb_disassembly (int ,int ,int ,int ,int,int ,int ) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int get_frame_pc (int ) ;
 int parse_and_eval_address (char*) ;
 int print_address_numeric (int ,int,int ) ;
 int printf_filtered (char*,...) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ tui_active ;
 int tui_get_low_disassembly_address (int ,int ) ;
 int tui_is_window_visible (int ) ;
 int tui_show_assembly (int ) ;
 int uiout ;

__attribute__((used)) static void
disassemble_command (char *arg, int from_tty)
{
  CORE_ADDR low, high;
  char *name;
  CORE_ADDR pc, pc_masked;
  char *space_index;




  name = ((void*)0);
  if (!arg)
    {
      if (!deprecated_selected_frame)
 error ("No frame selected.\n");

      pc = get_frame_pc (deprecated_selected_frame);
      if (find_pc_partial_function (pc, &name, &low, &high) == 0)
 error ("No function contains program counter for selected frame.\n");







      low += FUNCTION_START_OFFSET;
    }
  else if (!(space_index = (char *) strchr (arg, ' ')))
    {

      pc = parse_and_eval_address (arg);
      if (find_pc_partial_function (pc, &name, &low, &high) == 0)
 error ("No function contains specified address.\n");







      low += FUNCTION_START_OFFSET;
    }
  else
    {

      *space_index = '\0';
      low = parse_and_eval_address (arg);
      high = parse_and_eval_address (space_index + 1);
    }




    {
      printf_filtered ("Dump of assembler code ");
      if (name != ((void*)0))
 {
   printf_filtered ("for function %s:\n", name);
 }
      else
 {
   printf_filtered ("from ");
   print_address_numeric (low, 1, gdb_stdout);
   printf_filtered (" to ");
   print_address_numeric (high, 1, gdb_stdout);
   printf_filtered (":\n");
 }


      gdb_disassembly (uiout, 0, 0, 0, -1, low, high);

      printf_filtered ("End of assembler dump.\n");
      gdb_flush (gdb_stdout);
    }






}
