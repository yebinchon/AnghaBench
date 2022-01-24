#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_CODE_INT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  address_info ; 
 int /*<<< orphan*/  call_command ; 
 int /*<<< orphan*/  class_vars ; 
 int /*<<< orphan*/  cmdlist ; 
 char* FUNC7 (char*,char*,char*,...) ; 
 int current_display_number ; 
 scalar_t__ dbx_commands ; 
 int /*<<< orphan*/  deletelist ; 
 int /*<<< orphan*/  disable_display_command ; 
 int /*<<< orphan*/  disablelist ; 
 int /*<<< orphan*/  display_command ; 
 int /*<<< orphan*/  display_info ; 
 int /*<<< orphan*/  enable_display ; 
 int /*<<< orphan*/  enablelist ; 
 void* examine_b_type ; 
 void* examine_g_type ; 
 void* examine_h_type ; 
 void* examine_i_type ; 
 void* examine_w_type ; 
 void* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inspect_command ; 
 int /*<<< orphan*/  location_completer ; 
 int /*<<< orphan*/  max_symbolic_offset ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  output_command ; 
 int /*<<< orphan*/  print_command ; 
 int /*<<< orphan*/  print_symbol_filename ; 
 int /*<<< orphan*/  printf_command ; 
 int /*<<< orphan*/  FUNC9 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_command ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  setprintlist ; 
 int /*<<< orphan*/  showprintlist ; 
 int /*<<< orphan*/  sym_info ; 
 int /*<<< orphan*/  undisplay_command ; 
 int /*<<< orphan*/  var_boolean ; 
 int /*<<< orphan*/  var_uinteger ; 
 int /*<<< orphan*/  whereis_command ; 
 int /*<<< orphan*/  x_command ; 

void
FUNC10 (void)
{
  struct cmd_list_element *c;

  current_display_number = -1;

  FUNC3 ("address", address_info,
	    "Describe where symbol SYM is stored.");

  FUNC3 ("symbol", sym_info,
	    "Describe what symbol is at location ADDR.\n\
Only for symbols with fixed locations (global or static scope).");

  FUNC1 ("x", class_vars, x_command,
	   FUNC7 ("Examine memory: x/FMT ADDRESS.\n\
ADDRESS is an expression for the memory address to examine.\n\
FMT is a repeat count followed by a format letter and a size letter.\n\
Format letters are o(octal), x(hex), d(decimal), u(unsigned decimal),\n\
  t(binary), f(float), a(address), i(instruction), c(char) and s(string).\n",
		   "Size letters are b(byte), h(halfword), w(word), g(giant, 8 bytes).\n\
The specified number of objects of the specified size are printed\n\
according to the format.\n\n\
Defaults for format and size letters are those previously used.\n\
Default count is 1.  Default address is following last thing printed\n\
with this command or \"print\".", NULL));

#if 0
  add_com ("whereis", class_vars, whereis_command,
	   "Print line number and file of definition of variable.");
#endif

  FUNC3 ("display", display_info,
	    "Expressions to display when program stops, with code numbers.");

  FUNC0 ("undisplay", class_vars, undisplay_command,
	   "Cancel some expressions to be displayed when program stops.\n\
Arguments are the code numbers of the expressions to stop displaying.\n\
No argument means cancel all automatic-display expressions.\n\
\"delete display\" has the same effect as this command.\n\
Do \"info display\" to see current list of code numbers.",
	   &cmdlist);

  FUNC1 ("display", class_vars, display_command,
	   "Print value of expression EXP each time the program stops.\n\
/FMT may be used before EXP as in the \"print\" command.\n\
/FMT \"i\" or \"s\" or including a size-letter is allowed,\n\
as in the \"x\" command, and then EXP is used to get the address to examine\n\
and examining is done as in the \"x\" command.\n\n\
With no argument, display all currently requested auto-display expressions.\n\
Use \"undisplay\" to cancel display requests previously made."
    );

  FUNC0 ("display", class_vars, enable_display,
	   "Enable some expressions to be displayed when program stops.\n\
Arguments are the code numbers of the expressions to resume displaying.\n\
No argument means enable all automatic-display expressions.\n\
Do \"info display\" to see current list of code numbers.", &enablelist);

  FUNC0 ("display", class_vars, disable_display_command,
	   "Disable some expressions to be displayed when program stops.\n\
Arguments are the code numbers of the expressions to stop displaying.\n\
No argument means disable all automatic-display expressions.\n\
Do \"info display\" to see current list of code numbers.", &disablelist);

  FUNC0 ("display", class_vars, undisplay_command,
	   "Cancel some expressions to be displayed when program stops.\n\
Arguments are the code numbers of the expressions to stop displaying.\n\
No argument means cancel all automatic-display expressions.\n\
Do \"info display\" to see current list of code numbers.", &deletelist);

  FUNC1 ("printf", class_vars, printf_command,
	   "printf \"printf format string\", arg1, arg2, arg3, ..., argn\n\
This is useful for formatted output in user-defined commands.");

  FUNC1 ("output", class_vars, output_command,
	   "Like \"print\" but don't put in value history and don't print newline.\n\
This is useful in user-defined commands.");

  FUNC4 ("set", class_vars, set_command,
		  FUNC7 ("Evaluate expression EXP and assign result to variable VAR, using assignment\n\
syntax appropriate for the current language (VAR = EXP or VAR := EXP for\n\
example).  VAR may be a debugger \"convenience\" variable (names starting\n\
with $), a register (a few standard names starting with $), or an actual\n\
variable in the program being debugged.  EXP is any valid expression.\n",
			  "Use \"set variable\" for variables with names identical to set subcommands.\n\
\nWith a subcommand, this command modifies parts of the gdb environment.\n\
You can see these environment settings with the \"show\" command.", NULL),
		  &setlist, "set ", 1, &cmdlist);
  if (dbx_commands)
    FUNC1 ("assign", class_vars, set_command, FUNC7 ("Evaluate expression \
EXP and assign result to variable VAR, using assignment\n\
syntax appropriate for the current language (VAR = EXP or VAR := EXP for\n\
example).  VAR may be a debugger \"convenience\" variable (names starting\n\
with $), a register (a few standard names starting with $), or an actual\n\
variable in the program being debugged.  EXP is any valid expression.\n",
							"Use \"set variable\" for variables with names identical to set subcommands.\n\
\nWith a subcommand, this command modifies parts of the gdb environment.\n\
You can see these environment settings with the \"show\" command.", NULL));

  /* "call" is the same as "set", but handy for dbx users to call fns. */
  c = FUNC1 ("call", class_vars, call_command,
	       "Call a function in the program.\n\
The argument is the function name and arguments, in the notation of the\n\
current working language.  The result is printed and saved in the value\n\
history, if it is not void.");
  FUNC9 (c, location_completer);

  FUNC0 ("variable", class_vars, set_command,
	   "Evaluate expression EXP and assign result to variable VAR, using assignment\n\
syntax appropriate for the current language (VAR = EXP or VAR := EXP for\n\
example).  VAR may be a debugger \"convenience\" variable (names starting\n\
with $), a register (a few standard names starting with $), or an actual\n\
variable in the program being debugged.  EXP is any valid expression.\n\
This may usually be abbreviated to simply \"set\".",
	   &setlist);

  c = FUNC1 ("print", class_vars, print_command,
	   FUNC7 ("Print value of expression EXP.\n\
Variables accessible are those of the lexical environment of the selected\n\
stack frame, plus all those whose scope is global or an entire file.\n\
\n\
$NUM gets previous value number NUM.  $ and $$ are the last two values.\n\
$$NUM refers to NUM'th value back from the last one.\n\
Names starting with $ refer to registers (with the values they would have\n",
		   "if the program were to return to the stack frame now selected, restoring\n\
all registers saved by frames farther in) or else to debugger\n\
\"convenience\" variables (any such name not a known register).\n\
Use assignment expressions to give values to convenience variables.\n",
		   "\n\
{TYPE}ADREXP refers to a datum of data type TYPE, located at address ADREXP.\n\
@ is a binary operator for treating consecutive data objects\n\
anywhere in memory as an array.  FOO@NUM gives an array whose first\n\
element is FOO, whose second element is stored in the space following\n\
where FOO is stored, etc.  FOO must be an expression whose value\n\
resides in memory.\n",
		   "\n\
EXP may be preceded with /FMT, where FMT is a format letter\n\
but no count or size letter (see \"x\" command).", NULL));
  FUNC9 (c, location_completer);
  FUNC2 ("p", "print", class_vars, 1);

  c = FUNC1 ("inspect", class_vars, inspect_command,
	   "Same as \"print\" command, except that if you are running in the epoch\n\
environment, the value is printed in its own window.");
  FUNC9 (c, location_completer);

  FUNC6 (
		 FUNC5 ("max-symbolic-offset", no_class, var_uinteger,
			      (char *) &max_symbolic_offset,
       "Set the largest offset that will be printed in <symbol+1234> form.",
			      &setprintlist),
		      &showprintlist);
  FUNC6 (
		      FUNC5 ("symbol-filename", no_class, var_boolean,
				   (char *) &print_symbol_filename,
	   "Set printing of source filename and line number with <symbol>.",
				   &setprintlist),
		      &showprintlist);

  /* For examine/instruction a single byte quantity is specified as
     the data.  This avoids problems with value_at_lazy() requiring a
     valid data type (and rejecting VOID). */
  examine_i_type = FUNC8 (TYPE_CODE_INT, 1, 0, "examine_i_type", NULL);

  examine_b_type = FUNC8 (TYPE_CODE_INT, 1, 0, "examine_b_type", NULL);
  examine_h_type = FUNC8 (TYPE_CODE_INT, 2, 0, "examine_h_type", NULL);
  examine_w_type = FUNC8 (TYPE_CODE_INT, 4, 0, "examine_w_type", NULL);
  examine_g_type = FUNC8 (TYPE_CODE_INT, 8, 0, "examine_g_type", NULL);

}