
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int TYPE_CODE_INT ;
 int add_cmd (char*,int ,int ,char*,int *) ;
 struct cmd_list_element* add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int) ;
 int add_info (char*,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int,int *) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int address_info ;
 int call_command ;
 int class_vars ;
 int cmdlist ;
 char* concat (char*,char*,char*,...) ;
 int current_display_number ;
 scalar_t__ dbx_commands ;
 int deletelist ;
 int disable_display_command ;
 int disablelist ;
 int display_command ;
 int display_info ;
 int enable_display ;
 int enablelist ;
 void* examine_b_type ;
 void* examine_g_type ;
 void* examine_h_type ;
 void* examine_i_type ;
 void* examine_w_type ;
 void* init_type (int ,int,int ,char*,int *) ;
 int inspect_command ;
 int location_completer ;
 int max_symbolic_offset ;
 int no_class ;
 int output_command ;
 int print_command ;
 int print_symbol_filename ;
 int printf_command ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int set_command ;
 int setlist ;
 int setprintlist ;
 int showprintlist ;
 int sym_info ;
 int undisplay_command ;
 int var_boolean ;
 int var_uinteger ;
 int whereis_command ;
 int x_command ;

void
_initialize_printcmd (void)
{
  struct cmd_list_element *c;

  current_display_number = -1;

  add_info ("address", address_info,
     "Describe where symbol SYM is stored.");

  add_info ("symbol", sym_info,
     "Describe what symbol is at location ADDR.\nOnly for symbols with fixed locations (global or static scope).");


  add_com ("x", class_vars, x_command,
    concat ("Examine memory: x/FMT ADDRESS.\nADDRESS is an expression for the memory address to examine.\nFMT is a repeat count followed by a format letter and a size letter.\nFormat letters are o(octal), x(hex), d(decimal), u(unsigned decimal),\n  t(binary), f(float), a(address), i(instruction), c(char) and s(string).\n",




     "Size letters are b(byte), h(halfword), w(word), g(giant, 8 bytes).\nThe specified number of objects of the specified size are printed\naccording to the format.\n\nDefaults for format and size letters are those previously used.\nDefault count is 1.  Default address is following last thing printed\nwith this command or \"print\".", ((void*)0)));
  add_info ("display", display_info,
     "Expressions to display when program stops, with code numbers.");

  add_cmd ("undisplay", class_vars, undisplay_command,
    "Cancel some expressions to be displayed when program stops.\nArguments are the code numbers of the expressions to stop displaying.\nNo argument means cancel all automatic-display expressions.\n\"delete display\" has the same effect as this command.\nDo \"info display\" to see current list of code numbers.",




    &cmdlist);

  add_com ("display", class_vars, display_command,
    "Print value of expression EXP each time the program stops.\n/FMT may be used before EXP as in the \"print\" command.\n/FMT \"i\" or \"s\" or including a size-letter is allowed,\nas in the \"x\" command, and then EXP is used to get the address to examine\nand examining is done as in the \"x\" command.\n\nWith no argument, display all currently requested auto-display expressions.\nUse \"undisplay\" to cancel display requests previously made."






    );

  add_cmd ("display", class_vars, enable_display,
    "Enable some expressions to be displayed when program stops.\nArguments are the code numbers of the expressions to resume displaying.\nNo argument means enable all automatic-display expressions.\nDo \"info display\" to see current list of code numbers.", &enablelist);




  add_cmd ("display", class_vars, disable_display_command,
    "Disable some expressions to be displayed when program stops.\nArguments are the code numbers of the expressions to stop displaying.\nNo argument means disable all automatic-display expressions.\nDo \"info display\" to see current list of code numbers.", &disablelist);




  add_cmd ("display", class_vars, undisplay_command,
    "Cancel some expressions to be displayed when program stops.\nArguments are the code numbers of the expressions to stop displaying.\nNo argument means cancel all automatic-display expressions.\nDo \"info display\" to see current list of code numbers.", &deletelist);




  add_com ("printf", class_vars, printf_command,
    "printf \"printf format string\", arg1, arg2, arg3, ..., argn\nThis is useful for formatted output in user-defined commands.");


  add_com ("output", class_vars, output_command,
    "Like \"print\" but don't put in value history and don't print newline.\nThis is useful in user-defined commands.");


  add_prefix_cmd ("set", class_vars, set_command,
    concat ("Evaluate expression EXP and assign result to variable VAR, using assignment\nsyntax appropriate for the current language (VAR = EXP or VAR := EXP for\nexample).  VAR may be a debugger \"convenience\" variable (names starting\nwith $), a register (a few standard names starting with $), or an actual\nvariable in the program being debugged.  EXP is any valid expression.\n",




     "Use \"set variable\" for variables with names identical to set subcommands.\n\nWith a subcommand, this command modifies parts of the gdb environment.\nYou can see these environment settings with the \"show\" command.", ((void*)0)),


    &setlist, "set ", 1, &cmdlist);
  if (dbx_commands)
    add_com ("assign", class_vars, set_command, concat ("Evaluate expression EXP and assign result to variable VAR, using assignment\nsyntax appropriate for the current language (VAR = EXP or VAR := EXP for\nexample).  VAR may be a debugger \"convenience\" variable (names starting\nwith $), a register (a few standard names starting with $), or an actual\nvariable in the program being debugged.  EXP is any valid expression.\n",





       "Use \"set variable\" for variables with names identical to set subcommands.\n\nWith a subcommand, this command modifies parts of the gdb environment.\nYou can see these environment settings with the \"show\" command.", ((void*)0)));




  c = add_com ("call", class_vars, call_command,
        "Call a function in the program.\nThe argument is the function name and arguments, in the notation of the\ncurrent working language.  The result is printed and saved in the value\nhistory, if it is not void.");



  set_cmd_completer (c, location_completer);

  add_cmd ("variable", class_vars, set_command,
    "Evaluate expression EXP and assign result to variable VAR, using assignment\nsyntax appropriate for the current language (VAR = EXP or VAR := EXP for\nexample).  VAR may be a debugger \"convenience\" variable (names starting\nwith $), a register (a few standard names starting with $), or an actual\nvariable in the program being debugged.  EXP is any valid expression.\nThis may usually be abbreviated to simply \"set\".",





    &setlist);

  c = add_com ("print", class_vars, print_command,
    concat ("Print value of expression EXP.\nVariables accessible are those of the lexical environment of the selected\nstack frame, plus all those whose scope is global or an entire file.\n\n$NUM gets previous value number NUM.  $ and $$ are the last two values.\n$$NUM refers to NUM'th value back from the last one.\nNames starting with $ refer to registers (with the values they would have\n",






     "if the program were to return to the stack frame now selected, restoring\nall registers saved by frames farther in) or else to debugger\n\"convenience\" variables (any such name not a known register).\nUse assignment expressions to give values to convenience variables.\n",



     "\n{TYPE}ADREXP refers to a datum of data type TYPE, located at address ADREXP.\n@ is a binary operator for treating consecutive data objects\nanywhere in memory as an array.  FOO@NUM gives an array whose first\nelement is FOO, whose second element is stored in the space following\nwhere FOO is stored, etc.  FOO must be an expression whose value\nresides in memory.\n",






     "\nEXP may be preceded with /FMT, where FMT is a format letter\nbut no count or size letter (see \"x\" command).", ((void*)0)));


  set_cmd_completer (c, location_completer);
  add_com_alias ("p", "print", class_vars, 1);

  c = add_com ("inspect", class_vars, inspect_command,
    "Same as \"print\" command, except that if you are running in the epoch\nenvironment, the value is printed in its own window.");

  set_cmd_completer (c, location_completer);

  add_show_from_set (
   add_set_cmd ("max-symbolic-offset", no_class, var_uinteger,
         (char *) &max_symbolic_offset,
       "Set the largest offset that will be printed in <symbol+1234> form.",
         &setprintlist),
        &showprintlist);
  add_show_from_set (
        add_set_cmd ("symbol-filename", no_class, var_boolean,
       (char *) &print_symbol_filename,
    "Set printing of source filename and line number with <symbol>.",
       &setprintlist),
        &showprintlist);




  examine_i_type = init_type (TYPE_CODE_INT, 1, 0, "examine_i_type", ((void*)0));

  examine_b_type = init_type (TYPE_CODE_INT, 1, 0, "examine_b_type", ((void*)0));
  examine_h_type = init_type (TYPE_CODE_INT, 2, 0, "examine_h_type", ((void*)0));
  examine_w_type = init_type (TYPE_CODE_INT, 4, 0, "examine_w_type", ((void*)0));
  examine_g_type = init_type (TYPE_CODE_INT, 8, 0, "examine_g_type", ((void*)0));

}
