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
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC7 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  advance_command ; 
 int /*<<< orphan*/  all_registers_info ; 
 int /*<<< orphan*/  attach_command ; 
 int /*<<< orphan*/  class_alias ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  class_info ; 
 int /*<<< orphan*/  class_run ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  continue_command ; 
 int /*<<< orphan*/  detach_command ; 
 int /*<<< orphan*/  disconnect_command ; 
 int /*<<< orphan*/  environment_info ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  finish_command ; 
 int /*<<< orphan*/  float_info ; 
 int /*<<< orphan*/  go_command ; 
 int /*<<< orphan*/  inferior_args ; 
 int /*<<< orphan*/  inferior_environ ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  interrupt_target_command ; 
 int /*<<< orphan*/  jump_command ; 
 int /*<<< orphan*/  location_completer ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  next_command ; 
 int /*<<< orphan*/  nexti_command ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  nofp_registers_info ; 
 int /*<<< orphan*/  noop_completer ; 
 int /*<<< orphan*/  notice_args_read ; 
 int /*<<< orphan*/  notice_args_set ; 
 int /*<<< orphan*/  path_command ; 
 int /*<<< orphan*/  path_info ; 
 int /*<<< orphan*/  program_info ; 
 int /*<<< orphan*/  run_command ; 
 int /*<<< orphan*/  run_no_args_command ; 
 int /*<<< orphan*/  FUNC10 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_environment_command ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  signal_command ; 
 int /*<<< orphan*/  step_command ; 
 int /*<<< orphan*/  stepi_command ; 
 int /*<<< orphan*/  tty_command ; 
 int /*<<< orphan*/  unset_command ; 
 int /*<<< orphan*/  unset_environment_command ; 
 int /*<<< orphan*/  unsetlist ; 
 int /*<<< orphan*/  until_command ; 
 int /*<<< orphan*/  var_string_noescape ; 
 int /*<<< orphan*/  vector_info ; 
 scalar_t__ xdb_commands ; 

void
FUNC12 (void)
{
  struct cmd_list_element *c;

  c = FUNC1 ("tty", class_run, tty_command,
	       "Set terminal for future runs of program being debugged.");
  FUNC10 (c, filename_completer);

  c = FUNC6 ("args", class_run, var_string_noescape,
		   (char *) &inferior_args,
		   "Set argument list to give program being debugged when it is started.\n\
Follow this command with any number of args, to be passed to the program.",
		   &setlist);
  FUNC10 (c, filename_completer);
  FUNC11 (c, notice_args_set);
  c = FUNC7 (c, &showlist);
  FUNC11 (c, notice_args_read);

  c = FUNC0
    ("environment", no_class, environment_info,
     "The environment to give the program, or one variable's value.\n\
With an argument VAR, prints the value of environment variable VAR to\n\
give the program being debugged.  With no arguments, prints the entire\n\
environment to be given to the program.", &showlist);
  FUNC10 (c, noop_completer);

  FUNC5 ("unset", no_class, unset_command,
		  "Complement to certain \"set\" commands.",
		  &unsetlist, "unset ", 0, &cmdlist);

  c = FUNC0 ("environment", class_run, unset_environment_command,
	       "Cancel environment variable VAR for the program.\n\
This does not affect the program until the next \"run\" command.",
	       &unsetlist);
  FUNC10 (c, noop_completer);

  c = FUNC0 ("environment", class_run, set_environment_command,
	       "Set environment variable value to give the program.\n\
Arguments are VAR VALUE where VAR is variable name and VALUE is value.\n\
VALUES of environment variables are uninterpreted strings.\n\
This does not affect the program until the next \"run\" command.",
	       &setlist);
  FUNC10 (c, noop_completer);

  c = FUNC1 ("path", class_files, path_command,
	       "Add directory DIR(s) to beginning of search path for object files.\n\
$cwd in the path means the current working directory.\n\
This path is equivalent to the $PATH shell variable.  It is a list of\n\
directories, separated by colons.  These directories are searched to find\n\
fully linked executable files and separately compiled object files as needed.");
  FUNC10 (c, filename_completer);

  c = FUNC0 ("paths", no_class, path_info,
	       "Current search path for finding object files.\n\
$cwd in the path means the current working directory.\n\
This path is equivalent to the $PATH shell variable.  It is a list of\n\
directories, separated by colons.  These directories are searched to find\n\
fully linked executable files and separately compiled object files as needed.",
	       &showlist);
  FUNC10 (c, noop_completer);

  FUNC1 ("attach", class_run, attach_command,
	   "Attach to a process or file outside of GDB.\n\
This command attaches to another target, of the same type as your last\n\
\"target\" command (\"info files\" will show your target stack).\n\
The command may take as argument a process id or a device file.\n\
For a process id, you must have permission to send the process a signal,\n\
and it must have the same effective uid as the debugger.\n\
When using \"attach\" with a process id, the debugger finds the\n\
program running in the process, looking first in the current working\n\
directory, or (if not found there) using the source file search path\n\
(see the \"directory\" command).  You can also use the \"file\" command\n\
to specify the program, and to load its symbol table.");

  FUNC1 ("detach", class_run, detach_command,
	   "Detach a process or file previously attached.\n\
If a process, it is no longer traced, and it continues its execution.  If\n\
you were debugging a file, the file is closed and gdb no longer accesses it.");

  FUNC1 ("disconnect", class_run, disconnect_command,
	   "Disconnect from a target.\n\
The target will wait for another debugger to connect.  Not available for\n\
all targets.");

  FUNC1 ("signal", class_run, signal_command,
	   "Continue program giving it signal specified by the argument.\n\
An argument of \"0\" means continue program without giving it a signal.");

  FUNC1 ("stepi", class_run, stepi_command,
	   "Step one instruction exactly.\n\
Argument N means do this N times (or till program stops for another reason).");
  FUNC2 ("si", "stepi", class_alias, 0);

  FUNC1 ("nexti", class_run, nexti_command,
	   "Step one instruction, but proceed through subroutine calls.\n\
Argument N means do this N times (or till program stops for another reason).");
  FUNC2 ("ni", "nexti", class_alias, 0);

  FUNC1 ("finish", class_run, finish_command,
	   "Execute until selected stack frame returns.\n\
Upon return, the value returned is printed and put in the value history.");

  FUNC1 ("next", class_run, next_command,
	   "Step program, proceeding through subroutine calls.\n\
Like the \"step\" command as long as subroutine calls do not happen;\n\
when they do, the call is treated as one instruction.\n\
Argument N means do this N times (or till program stops for another reason).");
  FUNC2 ("n", "next", class_run, 1);
  if (xdb_commands)
    FUNC2 ("S", "next", class_run, 1);

  FUNC1 ("step", class_run, step_command,
	   "Step program until it reaches a different source line.\n\
Argument N means do this N times (or till program stops for another reason).");
  FUNC2 ("s", "step", class_run, 1);

  c = FUNC1 ("until", class_run, until_command,
	       "Execute until the program reaches a source line greater than the current\n\
or a specified location (same args as break command) within the current frame.");
  FUNC10 (c, location_completer);
  FUNC2 ("u", "until", class_run, 1);

  c = FUNC1 ("advance", class_run, advance_command,
	       "Continue the program up to the given location (same form as args for break command).\n\
Execution will also stop upon exit from the current stack frame.");
  FUNC10 (c, location_completer);

  c = FUNC1 ("jump", class_run, jump_command,
	       "Continue program being debugged at specified line or address.\n\
Give as argument either LINENUM or *ADDR, where ADDR is an expression\n\
for an address to start at.");
  FUNC10 (c, location_completer);

  if (xdb_commands)
    {
      c = FUNC1 ("go", class_run, go_command,
		   "Usage: go <location>\n\
Continue program being debugged, stopping at specified line or \n\
address.\n\
Give as argument either LINENUM or *ADDR, where ADDR is an \n\
expression for an address to start at.\n\
This command is a combination of tbreak and jump.");
      FUNC10 (c, location_completer);
    }

  if (xdb_commands)
    FUNC2 ("g", "go", class_run, 1);

  FUNC1 ("continue", class_run, continue_command,
	   "Continue program being debugged, after signal or breakpoint.\n\
If proceeding from breakpoint, a number N may be used as an argument,\n\
which means to set the ignore count of that breakpoint to N - 1 (so that\n\
the breakpoint won't break until the Nth time it is reached).");
  FUNC2 ("c", "cont", class_run, 1);
  FUNC2 ("fg", "cont", class_run, 1);

  c = FUNC1 ("run", class_run, run_command,
	   "Start debugged program.  You may specify arguments to give it.\n\
Args may include \"*\", or \"[...]\"; they are expanded using \"sh\".\n\
Input and output redirection with \">\", \"<\", or \">>\" are also allowed.\n\n\
With no arguments, uses arguments last specified (with \"run\" or \"set args\").\n\
To cancel previous arguments and run with no arguments,\n\
use \"set args\" without arguments.");
  FUNC10 (c, filename_completer);
  FUNC2 ("r", "run", class_run, 1);
  if (xdb_commands)
    FUNC1 ("R", class_run, run_no_args_command,
	     "Start debugged program with no arguments.");

  FUNC1 ("interrupt", class_run, interrupt_target_command,
	   "Interrupt the execution of the debugged program.");

  FUNC3 ("registers", nofp_registers_info,
	    "List of integer registers and their contents, for selected stack frame.\n\
Register name as argument means describe only that register.");
  FUNC4 ("r", "registers", 1);

  if (xdb_commands)
    FUNC1 ("lr", class_info, nofp_registers_info,
	     "List of integer registers and their contents, for selected stack frame.\n\
  Register name as argument means describe only that register.");
  FUNC3 ("all-registers", all_registers_info,
	    "List of all registers and their contents, for selected stack frame.\n\
Register name as argument means describe only that register.");

  FUNC3 ("program", program_info,
	    "Execution status of the program.");

  FUNC3 ("float", float_info,
	    "Print the status of the floating point unit\n");

  FUNC3 ("vector", vector_info,
	    "Print the status of the vector unit\n");

  inferior_environ = FUNC9 ();
  FUNC8 (inferior_environ);
}