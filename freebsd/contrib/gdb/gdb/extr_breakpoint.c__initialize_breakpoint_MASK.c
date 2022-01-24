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
 int /*<<< orphan*/  AUTO_BOOLEAN_AUTO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**,char*,int,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**) ; 
 struct cmd_list_element* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cmd_list_element**,char*,int,struct cmd_list_element**) ; 
 struct cmd_list_element* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cmd_list_element**,struct cmd_list_element**) ; 
 int /*<<< orphan*/  FUNC8 (struct cmd_list_element*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  awatch_command ; 
 int /*<<< orphan*/  break_command ; 
 scalar_t__ breakpoint_chain ; 
 scalar_t__ breakpoint_count ; 
 int /*<<< orphan*/  breakpoints_info ; 
 int can_use_hw_watchpoints ; 
 int /*<<< orphan*/  catch_command ; 
 int /*<<< orphan*/  class_alias ; 
 int /*<<< orphan*/  class_breakpoint ; 
 int /*<<< orphan*/  class_info ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  class_run ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  clear_command ; 
 struct cmd_list_element* cmdlist ; 
 int /*<<< orphan*/  commands_command ; 
 char* FUNC9 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  condition_command ; 
 scalar_t__ dbx_commands ; 
 int /*<<< orphan*/  delete_command ; 
 struct cmd_list_element* deletelist ; 
 int /*<<< orphan*/  disable_command ; 
 struct cmd_list_element* disablelist ; 
 int /*<<< orphan*/  enable_command ; 
 int /*<<< orphan*/  enable_delete_command ; 
 int /*<<< orphan*/  enable_once_command ; 
 struct cmd_list_element* enablebreaklist ; 
 struct cmd_list_element* enablelist ; 
 int /*<<< orphan*/  hbreak_command ; 
 int /*<<< orphan*/  ignore_command ; 
 int /*<<< orphan*/  location_completer ; 
 int /*<<< orphan*/  maintenance_info_breakpoints ; 
 struct cmd_list_element* maintenanceinfolist ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  pending_break_support ; 
 int /*<<< orphan*/  rwatch_command ; 
 int /*<<< orphan*/  set_breakpoint_cmd ; 
 int /*<<< orphan*/  FUNC10 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 struct cmd_list_element* setlist ; 
 int /*<<< orphan*/  show_breakpoint_cmd ; 
 struct cmd_list_element* showlist ; 
 int /*<<< orphan*/  stop_command ; 
 int /*<<< orphan*/  stopat_command ; 
 int /*<<< orphan*/  stopin_command ; 
 struct cmd_list_element* stoplist ; 
 int /*<<< orphan*/  tbreak_command ; 
 int /*<<< orphan*/  tcatch_command ; 
 int /*<<< orphan*/  thbreak_command ; 
 int /*<<< orphan*/  var_zinteger ; 
 int /*<<< orphan*/  watch_command ; 
 scalar_t__ xdb_commands ; 

void
FUNC11 (void)
{
  static struct cmd_list_element *breakpoint_set_cmdlist;
  static struct cmd_list_element *breakpoint_show_cmdlist;
  struct cmd_list_element *c;

  breakpoint_chain = 0;
  /* Don't bother to call set_breakpoint_count.  $bpnum isn't useful
     before a breakpoint is set.  */
  breakpoint_count = 0;

  FUNC2 ("ignore", class_breakpoint, ignore_command,
	   "Set ignore-count of breakpoint number N to COUNT.\n\
Usage is `ignore N COUNT'.");
  if (xdb_commands)
    FUNC3 ("bc", "ignore", class_breakpoint, 1);

  FUNC2 ("commands", class_breakpoint, commands_command,
	   "Set commands to be executed when a breakpoint is hit.\n\
Give breakpoint number as argument after \"commands\".\n\
With no argument, the targeted breakpoint is the last one set.\n\
The commands themselves follow starting on the next line.\n\
Type a line containing \"end\" to indicate the end of them.\n\
Give \"silent\" as the first line to make the breakpoint silent;\n\
then no output is printed when it is hit, except what the commands print.");

  FUNC2 ("condition", class_breakpoint, condition_command,
	   "Specify breakpoint number N to break only if COND is true.\n\
Usage is `condition N COND', where N is an integer and COND is an\n\
expression to be evaluated whenever breakpoint N is reached.");

  c = FUNC2 ("tbreak", class_breakpoint, tbreak_command,
	       "Set a temporary breakpoint.  Args like \"break\" command.\n\
Like \"break\" except the breakpoint is only temporary,\n\
so it will be deleted when hit.  Equivalent to \"break\" followed\n\
by using \"enable delete\" on the breakpoint number.");
  FUNC10 (c, location_completer);

  c = FUNC2 ("hbreak", class_breakpoint, hbreak_command,
	       "Set a hardware assisted  breakpoint. Args like \"break\" command.\n\
Like \"break\" except the breakpoint requires hardware support,\n\
some target hardware may not have this support.");
  FUNC10 (c, location_completer);

  c = FUNC2 ("thbreak", class_breakpoint, thbreak_command,
	       "Set a temporary hardware assisted breakpoint. Args like \"break\" command.\n\
Like \"hbreak\" except the breakpoint is only temporary,\n\
so it will be deleted when hit.");
  FUNC10 (c, location_completer);

  FUNC5 ("enable", class_breakpoint, enable_command,
		  "Enable some breakpoints.\n\
Give breakpoint numbers (separated by spaces) as arguments.\n\
With no subcommand, breakpoints are enabled until you command otherwise.\n\
This is used to cancel the effect of the \"disable\" command.\n\
With a subcommand you can enable temporarily.",
		  &enablelist, "enable ", 1, &cmdlist);
  if (xdb_commands)
    FUNC2 ("ab", class_breakpoint, enable_command,
	     "Enable some breakpoints.\n\
Give breakpoint numbers (separated by spaces) as arguments.\n\
With no subcommand, breakpoints are enabled until you command otherwise.\n\
This is used to cancel the effect of the \"disable\" command.\n\
With a subcommand you can enable temporarily.");

  FUNC3 ("en", "enable", class_breakpoint, 1);

  FUNC0 ("breakpoints", class_breakpoint, enable_command,
			 "Enable some breakpoints.\n\
Give breakpoint numbers (separated by spaces) as arguments.\n\
This is used to cancel the effect of the \"disable\" command.\n\
May be abbreviated to simply \"enable\".\n",
		   &enablebreaklist, "enable breakpoints ", 1, &enablelist);

  FUNC1 ("once", no_class, enable_once_command,
	   "Enable breakpoints for one hit.  Give breakpoint numbers.\n\
If a breakpoint is hit while enabled in this fashion, it becomes disabled.",
	   &enablebreaklist);

  FUNC1 ("delete", no_class, enable_delete_command,
	   "Enable breakpoints and delete when hit.  Give breakpoint numbers.\n\
If a breakpoint is hit while enabled in this fashion, it is deleted.",
	   &enablebreaklist);

  FUNC1 ("delete", no_class, enable_delete_command,
	   "Enable breakpoints and delete when hit.  Give breakpoint numbers.\n\
If a breakpoint is hit while enabled in this fashion, it is deleted.",
	   &enablelist);

  FUNC1 ("once", no_class, enable_once_command,
	   "Enable breakpoints for one hit.  Give breakpoint numbers.\n\
If a breakpoint is hit while enabled in this fashion, it becomes disabled.",
	   &enablelist);

  FUNC5 ("disable", class_breakpoint, disable_command,
		  "Disable some breakpoints.\n\
Arguments are breakpoint numbers with spaces in between.\n\
To disable all breakpoints, give no argument.\n\
A disabled breakpoint is not forgotten, but has no effect until reenabled.",
		  &disablelist, "disable ", 1, &cmdlist);
  FUNC3 ("dis", "disable", class_breakpoint, 1);
  FUNC3 ("disa", "disable", class_breakpoint, 1);
  if (xdb_commands)
    FUNC2 ("sb", class_breakpoint, disable_command,
	     "Disable some breakpoints.\n\
Arguments are breakpoint numbers with spaces in between.\n\
To disable all breakpoints, give no argument.\n\
A disabled breakpoint is not forgotten, but has no effect until reenabled.");

  FUNC1 ("breakpoints", class_alias, disable_command,
	   "Disable some breakpoints.\n\
Arguments are breakpoint numbers with spaces in between.\n\
To disable all breakpoints, give no argument.\n\
A disabled breakpoint is not forgotten, but has no effect until reenabled.\n\
This command may be abbreviated \"disable\".",
	   &disablelist);

  FUNC5 ("delete", class_breakpoint, delete_command,
		  "Delete some breakpoints or auto-display expressions.\n\
Arguments are breakpoint numbers with spaces in between.\n\
To delete all breakpoints, give no argument.\n\
\n\
Also a prefix command for deletion of other GDB objects.\n\
The \"unset\" command is also an alias for \"delete\".",
		  &deletelist, "delete ", 1, &cmdlist);
  FUNC3 ("d", "delete", class_breakpoint, 1);
  if (xdb_commands)
    FUNC2 ("db", class_breakpoint, delete_command,
	     "Delete some breakpoints.\n\
Arguments are breakpoint numbers with spaces in between.\n\
To delete all breakpoints, give no argument.\n");

  FUNC1 ("breakpoints", class_alias, delete_command,
	   "Delete some breakpoints or auto-display expressions.\n\
Arguments are breakpoint numbers with spaces in between.\n\
To delete all breakpoints, give no argument.\n\
This command may be abbreviated \"delete\".",
	   &deletelist);

  FUNC2 ("clear", class_breakpoint, clear_command,
	   FUNC9 ("Clear breakpoint at specified line or function.\n\
Argument may be line number, function name, or \"*\" and an address.\n\
If line number is specified, all breakpoints in that line are cleared.\n\
If function is specified, breakpoints at beginning of function are cleared.\n\
If an address is specified, breakpoints at that address are cleared.\n\n",
		   "With no argument, clears all breakpoints in the line that the selected frame\n\
is executing in.\n\
\n\
See also the \"delete\" command which clears breakpoints by number.", NULL));

  c = FUNC2 ("break", class_breakpoint, break_command,
	       FUNC9 ("Set breakpoint at specified line or function.\n\
Argument may be line number, function name, or \"*\" and an address.\n\
If line number is specified, break at start of code for that line.\n\
If function is specified, break at start of code for that function.\n\
If an address is specified, break at that exact address.\n",
		   "With no arg, uses current execution address of selected stack frame.\n\
This is useful for breaking on return to a stack frame.\n\
\n\
Multiple breakpoints at one place are permitted, and useful if conditional.\n\
\n\
Do \"help breakpoints\" for info on other commands dealing with breakpoints.", NULL));
  FUNC10 (c, location_completer);

  FUNC3 ("b", "break", class_run, 1);
  FUNC3 ("br", "break", class_run, 1);
  FUNC3 ("bre", "break", class_run, 1);
  FUNC3 ("brea", "break", class_run, 1);

 if (xdb_commands)
    {
      FUNC3 ("ba", "break", class_breakpoint, 1);
      FUNC3 ("bu", "ubreak", class_breakpoint, 1);
    }

  if (dbx_commands)
    {
      FUNC0 ("stop", class_breakpoint, stop_command,
	"Break in function/address or break at a line in the current file.",
			     &stoplist, "stop ", 1, &cmdlist);
      FUNC1 ("in", class_breakpoint, stopin_command,
	       "Break in function or address.\n", &stoplist);
      FUNC1 ("at", class_breakpoint, stopat_command,
	       "Break at a line in the current file.\n", &stoplist);
      FUNC2 ("status", class_info, breakpoints_info,
	       FUNC9 ("Status of user-settable breakpoints, or breakpoint number NUMBER.\n\
The \"Type\" column indicates one of:\n\
\tbreakpoint     - normal breakpoint\n\
\twatchpoint     - watchpoint\n\
The \"Disp\" column contains one of \"keep\", \"del\", or \"dis\" to indicate\n\
the disposition of the breakpoint after it gets hit.  \"dis\" means that the\n\
breakpoint will be disabled.  The \"Address\" and \"What\" columns indicate the\n\
address and file/line number respectively.\n\n",
		       "Convenience variable \"$_\" and default examine address for \"x\"\n\
are set to the address of the last breakpoint listed.\n\n\
Convenience variable \"$bpnum\" contains the number of the last\n\
breakpoint set.", NULL));
    }

  FUNC4 ("breakpoints", breakpoints_info,
	    FUNC9 ("Status of user-settable breakpoints, or breakpoint number NUMBER.\n\
The \"Type\" column indicates one of:\n\
\tbreakpoint     - normal breakpoint\n\
\twatchpoint     - watchpoint\n\
The \"Disp\" column contains one of \"keep\", \"del\", or \"dis\" to indicate\n\
the disposition of the breakpoint after it gets hit.  \"dis\" means that the\n\
breakpoint will be disabled.  The \"Address\" and \"What\" columns indicate the\n\
address and file/line number respectively.\n\n",
		    "Convenience variable \"$_\" and default examine address for \"x\"\n\
are set to the address of the last breakpoint listed.\n\n\
Convenience variable \"$bpnum\" contains the number of the last\n\
breakpoint set.", NULL));

  if (xdb_commands)
    FUNC2 ("lb", class_breakpoint, breakpoints_info,
	     FUNC9 ("Status of user-settable breakpoints, or breakpoint number NUMBER.\n\
The \"Type\" column indicates one of:\n\
\tbreakpoint     - normal breakpoint\n\
\twatchpoint     - watchpoint\n\
The \"Disp\" column contains one of \"keep\", \"del\", or \"dis\" to indicate\n\
the disposition of the breakpoint after it gets hit.  \"dis\" means that the\n\
breakpoint will be disabled.  The \"Address\" and \"What\" columns indicate the\n\
address and file/line number respectively.\n\n",
		     "Convenience variable \"$_\" and default examine address for \"x\"\n\
are set to the address of the last breakpoint listed.\n\n\
Convenience variable \"$bpnum\" contains the number of the last\n\
breakpoint set.", NULL));

  FUNC1 ("breakpoints", class_maintenance, maintenance_info_breakpoints,
	   FUNC9 ("Status of all breakpoints, or breakpoint number NUMBER.\n\
The \"Type\" column indicates one of:\n\
\tbreakpoint     - normal breakpoint\n\
\twatchpoint     - watchpoint\n\
\tlongjmp        - internal breakpoint used to step through longjmp()\n\
\tlongjmp resume - internal breakpoint at the target of longjmp()\n\
\tuntil          - internal breakpoint used by the \"until\" command\n\
\tfinish         - internal breakpoint used by the \"finish\" command\n",
		   "The \"Disp\" column contains one of \"keep\", \"del\", or \"dis\" to indicate\n\
the disposition of the breakpoint after it gets hit.  \"dis\" means that the\n\
breakpoint will be disabled.  The \"Address\" and \"What\" columns indicate the\n\
address and file/line number respectively.\n\n",
		   "Convenience variable \"$_\" and default examine address for \"x\"\n\
are set to the address of the last breakpoint listed.\n\n\
Convenience variable \"$bpnum\" contains the number of the last\n\
breakpoint set.", NULL),
	   &maintenanceinfolist);

  FUNC2 ("catch", class_breakpoint, catch_command,
	   "Set catchpoints to catch events.\n\
Raised signals may be caught:\n\
\tcatch signal              - all signals\n\
\tcatch signal <signame>    - a particular signal\n\
Raised exceptions may be caught:\n\
\tcatch throw               - all exceptions, when thrown\n\
\tcatch throw <exceptname>  - a particular exception, when thrown\n\
\tcatch catch               - all exceptions, when caught\n\
\tcatch catch <exceptname>  - a particular exception, when caught\n\
Thread or process events may be caught:\n\
\tcatch thread_start        - any threads, just after creation\n\
\tcatch thread_exit         - any threads, just before expiration\n\
\tcatch thread_join         - any threads, just after joins\n\
Process events may be caught:\n\
\tcatch start               - any processes, just after creation\n\
\tcatch exit                - any processes, just before expiration\n\
\tcatch fork                - calls to fork()\n\
\tcatch vfork               - calls to vfork()\n\
\tcatch exec                - calls to exec()\n\
Dynamically-linked library events may be caught:\n\
\tcatch load                - loads of any library\n\
\tcatch load <libname>      - loads of a particular library\n\
\tcatch unload              - unloads of any library\n\
\tcatch unload <libname>    - unloads of a particular library\n\
The act of your program's execution stopping may also be caught:\n\
\tcatch stop\n\n\
C++ exceptions may be caught:\n\
\tcatch throw               - all exceptions, when thrown\n\
\tcatch catch               - all exceptions, when caught\n\
\n\
Do \"help set follow-fork-mode\" for info on debugging your program\n\
after a fork or vfork is caught.\n\n\
Do \"help breakpoints\" for info on other commands dealing with breakpoints.");

  FUNC2 ("tcatch", class_breakpoint, tcatch_command,
	   "Set temporary catchpoints to catch events.\n\
Args like \"catch\" command.\n\
Like \"catch\" except the catchpoint is only temporary,\n\
so it will be deleted when hit.  Equivalent to \"catch\" followed\n\
by using \"enable delete\" on the catchpoint number.");

  c = FUNC2 ("watch", class_breakpoint, watch_command,
	       "Set a watchpoint for an expression.\n\
A watchpoint stops execution of your program whenever the value of\n\
an expression changes.");
  FUNC10 (c, location_completer);

  c = FUNC2 ("rwatch", class_breakpoint, rwatch_command,
	       "Set a read watchpoint for an expression.\n\
A watchpoint stops execution of your program whenever the value of\n\
an expression is read.");
  FUNC10 (c, location_completer);

  c = FUNC2 ("awatch", class_breakpoint, awatch_command,
	       "Set a watchpoint for an expression.\n\
A watchpoint stops execution of your program whenever the value of\n\
an expression is either read or written.");
  FUNC10 (c, location_completer);

  FUNC4 ("watchpoints", breakpoints_info,
	    "Synonym for ``info breakpoints''.");


  c = FUNC6 ("can-use-hw-watchpoints", class_support, var_zinteger,
		   (char *) &can_use_hw_watchpoints,
		   "Set debugger's willingness to use watchpoint hardware.\n\
If zero, gdb will not use hardware for new watchpoints, even if\n\
such is available.  (However, any hardware watchpoints that were\n\
created before setting this to nonzero, will continue to use watchpoint\n\
hardware.)",
		   &setlist);
  FUNC8 (c, &showlist);

  can_use_hw_watchpoints = 1;

  FUNC5 ("breakpoint", class_maintenance, set_breakpoint_cmd, "\
Breakpoint specific settings\n\
Configure various breakpoint-specific variables such as\n\
pending breakpoint behavior",
		  &breakpoint_set_cmdlist, "set breakpoint ",
		  0/*allow-unknown*/, &setlist);
  FUNC5 ("breakpoint", class_maintenance, show_breakpoint_cmd, "\
Breakpoint specific settings\n\
Configure various breakpoint-specific variables such as\n\
pending breakpoint behavior",
		  &breakpoint_show_cmdlist, "show breakpoint ",
		  0/*allow-unknown*/, &showlist);

  FUNC7 ("pending", no_class, &pending_break_support, "\
Set debugger's behavior regarding pending breakpoints.\n\
If on, an unrecognized breakpoint location will cause gdb to create a\n\
pending breakpoint.  If off, an unrecognized breakpoint location results in\n\
an error.  If auto, an unrecognized breakpoint location results in a\n\
user-query to see if a pending breakpoint should be created.","\
Show debugger's behavior regarding pending breakpoints.\n\
If on, an unrecognized breakpoint location will cause gdb to create a\n\
pending breakpoint.  If off, an unrecognized breakpoint location results in\n\
an error.  If auto, an unrecognized breakpoint location results in a\n\
user-query to see if a pending breakpoint should be created.",
				NULL, NULL,
				&breakpoint_set_cmdlist,
				&breakpoint_show_cmdlist);

  pending_break_support = AUTO_BOOLEAN_AUTO;
}