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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  maintenance_check_symtabs ; 
 int /*<<< orphan*/  maintenance_command ; 
 int /*<<< orphan*/  maintenance_demangle ; 
 int /*<<< orphan*/  maintenance_deprecate ; 
 int /*<<< orphan*/  maintenance_dump_me ; 
 int /*<<< orphan*/  maintenance_info_command ; 
 int /*<<< orphan*/  maintenance_info_psymtabs ; 
 int /*<<< orphan*/  maintenance_info_sections ; 
 int /*<<< orphan*/  maintenance_info_symtabs ; 
 int /*<<< orphan*/  maintenance_internal_error ; 
 int /*<<< orphan*/  maintenance_internal_warning ; 
 int /*<<< orphan*/  maintenance_print_architecture ; 
 int /*<<< orphan*/  maintenance_print_command ; 
 int /*<<< orphan*/  maintenance_print_msymbols ; 
 int /*<<< orphan*/  maintenance_print_objfiles ; 
 int /*<<< orphan*/  maintenance_print_psymbols ; 
 int /*<<< orphan*/  maintenance_print_statistics ; 
 int /*<<< orphan*/  maintenance_print_symbols ; 
 int /*<<< orphan*/  maintenance_print_type ; 
 int /*<<< orphan*/  maintenance_profile_p ; 
 int /*<<< orphan*/  maintenance_set_cmd ; 
 int /*<<< orphan*/  maintenance_set_cmdlist ; 
 int /*<<< orphan*/  maintenance_set_profile_cmd ; 
 int /*<<< orphan*/  maintenance_show_cmd ; 
 int /*<<< orphan*/  maintenance_show_cmdlist ; 
 int /*<<< orphan*/  maintenance_space_display ; 
 int /*<<< orphan*/  maintenance_time_display ; 
 int /*<<< orphan*/  maintenance_translate_address ; 
 int /*<<< orphan*/  maintenance_undeprecate ; 
 int /*<<< orphan*/  maintenanceinfolist ; 
 int /*<<< orphan*/  maintenancelist ; 
 int /*<<< orphan*/  maintenanceprintlist ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_zinteger ; 
 int /*<<< orphan*/  watchdog ; 

void
FUNC7 (void)
{
  struct cmd_list_element *tmpcmd;

  FUNC3 ("maintenance", class_maintenance, maintenance_command,
		  "Commands for use by GDB maintainers.\n\
Includes commands to dump specific internal GDB structures in\n\
a human readable form, to cause GDB to deliberately dump core,\n\
to test internal functions such as the C++/ObjC demangler, etc.",
		  &maintenancelist, "maintenance ", 0,
		  &cmdlist);

  FUNC2 ("mt", "maintenance", class_maintenance, 1);

  FUNC3 ("info", class_maintenance, maintenance_info_command,
     "Commands for showing internal info about the program being debugged.",
		  &maintenanceinfolist, "maintenance info ", 0,
		  &maintenancelist);
  FUNC0 ("i", "info", class_maintenance, 1, &maintenancelist);

  FUNC1 ("sections", class_maintenance, maintenance_info_sections,
	   "List the BFD sections of the exec and core files. \n\
Arguments may be any combination of:\n\
	[one or more section names]\n\
	ALLOC LOAD RELOC READONLY CODE DATA ROM CONSTRUCTOR\n\
	HAS_CONTENTS NEVER_LOAD COFF_SHARED_LIBRARY IS_COMMON\n\
Sections matching any argument will be listed (no argument\n\
implies all sections).  In addition, the special argument\n\
	ALLOBJ\n\
lists all sections from all object files, including shared libraries.",
	   &maintenanceinfolist);

  FUNC3 ("print", class_maintenance, maintenance_print_command,
		  "Maintenance command for printing GDB internal state.",
		  &maintenanceprintlist, "maintenance print ", 0,
		  &maintenancelist);

  FUNC3 ("set", class_maintenance, maintenance_set_cmd, "\
Set GDB internal variables used by the GDB maintainer.\n\
Configure variables internal to GDB that aid in GDB's maintenance",
		  &maintenance_set_cmdlist, "maintenance set ",
		  0/*allow-unknown*/,
		  &maintenancelist);

  FUNC3 ("show", class_maintenance, maintenance_show_cmd, "\
Show GDB internal variables used by the GDB maintainer.\n\
Configure variables internal to GDB that aid in GDB's maintenance",
		  &maintenance_show_cmdlist, "maintenance show ",
		  0/*allow-unknown*/,
		  &maintenancelist);

#ifndef _WIN32
  FUNC1 ("dump-me", class_maintenance, maintenance_dump_me,
	   "Get fatal error; make debugger dump its core.\n\
GDB sets its handling of SIGQUIT back to SIG_DFL and then sends\n\
itself a SIGQUIT signal.",
	   &maintenancelist);
#endif

  FUNC1 ("internal-error", class_maintenance, maintenance_internal_error,
	   "Give GDB an internal error.\n\
Cause GDB to behave as if an internal error was detected.",
	   &maintenancelist);

  FUNC1 ("internal-warning", class_maintenance, maintenance_internal_warning,
	   "Give GDB an internal warning.\n\
Cause GDB to behave as if an internal warning was reported.",
	   &maintenancelist);

  FUNC1 ("demangle", class_maintenance, maintenance_demangle,
	   "Demangle a C++/ObjC mangled name.\n\
Call internal GDB demangler routine to demangle a C++ link name\n\
and prints the result.",
	   &maintenancelist);

  FUNC1 ("time", class_maintenance, maintenance_time_display,
	   "Set the display of time usage.\n\
If nonzero, will cause the execution time for each command to be\n\
displayed, following the command's output.",
	   &maintenancelist);

  FUNC1 ("space", class_maintenance, maintenance_space_display,
	   "Set the display of space usage.\n\
If nonzero, will cause the execution space for each command to be\n\
displayed, following the command's output.",
	   &maintenancelist);

  FUNC1 ("type", class_maintenance, maintenance_print_type,
	   "Print a type chain for a given symbol.\n\
For each node in a type chain, print the raw data for each member of\n\
the type structure, and the interpretation of the data.",
	   &maintenanceprintlist);

  FUNC1 ("symbols", class_maintenance, maintenance_print_symbols,
	   "Print dump of current symbol definitions.\n\
Entries in the full symbol table are dumped to file OUTFILE.\n\
If a SOURCE file is specified, dump only that file's symbols.",
	   &maintenanceprintlist);

  FUNC1 ("msymbols", class_maintenance, maintenance_print_msymbols,
	   "Print dump of current minimal symbol definitions.\n\
Entries in the minimal symbol table are dumped to file OUTFILE.\n\
If a SOURCE file is specified, dump only that file's minimal symbols.",
	   &maintenanceprintlist);

  FUNC1 ("psymbols", class_maintenance, maintenance_print_psymbols,
	   "Print dump of current partial symbol definitions.\n\
Entries in the partial symbol table are dumped to file OUTFILE.\n\
If a SOURCE file is specified, dump only that file's partial symbols.",
	   &maintenanceprintlist);

  FUNC1 ("objfiles", class_maintenance, maintenance_print_objfiles,
	   "Print dump of current object file definitions.",
	   &maintenanceprintlist);

  FUNC1 ("symtabs", class_maintenance, maintenance_info_symtabs,
	   "List the full symbol tables for all object files.\n\
This does not include information about individual symbols, blocks, or\n\
linetables --- just the symbol table structures themselves.\n\
With an argument REGEXP, list the symbol tables whose names that match that.",
	   &maintenanceinfolist);

  FUNC1 ("psymtabs", class_maintenance, maintenance_info_psymtabs,
	   "List the partial symbol tables for all object files.\n\
This does not include information about individual partial symbols,\n\
just the symbol table structures themselves.",
	   &maintenanceinfolist);

  FUNC1 ("statistics", class_maintenance, maintenance_print_statistics,
	   "Print statistics about internal gdb state.",
	   &maintenanceprintlist);

  FUNC1 ("architecture", class_maintenance, maintenance_print_architecture,
	   "Print the internal architecture configuration.\
Takes an optional file parameter.",
	   &maintenanceprintlist);

  FUNC1 ("check-symtabs", class_maintenance, maintenance_check_symtabs,
	   "Check consistency of psymtabs and symtabs.",
	   &maintenancelist);

  FUNC1 ("translate-address", class_maintenance, maintenance_translate_address,
	   "Translate a section name and address to a symbol.",
	   &maintenancelist);

  FUNC1 ("deprecate", class_maintenance, maintenance_deprecate,
	   "Deprecate a command.  Note that this is just in here so the \n\
testsuite can check the comamnd deprecator. You probably shouldn't use this,\n\
rather you should use the C function deprecate_cmd().  If you decide you \n\
want to use it: maintenance deprecate 'commandname' \"replacement\". The \n\
replacement is optional.", &maintenancelist);

  FUNC1 ("undeprecate", class_maintenance, maintenance_undeprecate,
	   "Undeprecate a command.  Note that this is just in here so the \n\
testsuite can check the comamnd deprecator. You probably shouldn't use this,\n\
If you decide you want to use it: maintenance undeprecate 'commandname'",
	   &maintenancelist);

  FUNC6 (
		      FUNC4 ("watchdog", class_maintenance, var_zinteger, (char *) &watchdog,
				   "Set watchdog timer.\n\
When non-zero, this timeout is used instead of waiting forever for a target to\n\
finish a low-level step or continue operation.  If the specified amount of time\n\
passes without a response from the target, an error occurs.", &setlist),
		      &showlist);


  FUNC5 ("profile", class_maintenance,
			   &maintenance_profile_p,
			   "Set internal profiling.\n"
			   "When enabled GDB is profiled.",
			   "Show internal profiling.\n",
			   maintenance_set_profile_cmd, NULL,
			   &maintenance_set_cmdlist,
			   &maintenance_show_cmdlist);
}