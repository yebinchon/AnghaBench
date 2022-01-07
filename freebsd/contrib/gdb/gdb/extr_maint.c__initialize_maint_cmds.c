
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_alias_cmd (char*,char*,int ,int,int *) ;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_com_alias (char*,char*,int ,int) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int ,int *,int *,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_maintenance ;
 int cmdlist ;
 int maintenance_check_symtabs ;
 int maintenance_command ;
 int maintenance_demangle ;
 int maintenance_deprecate ;
 int maintenance_dump_me ;
 int maintenance_info_command ;
 int maintenance_info_psymtabs ;
 int maintenance_info_sections ;
 int maintenance_info_symtabs ;
 int maintenance_internal_error ;
 int maintenance_internal_warning ;
 int maintenance_print_architecture ;
 int maintenance_print_command ;
 int maintenance_print_msymbols ;
 int maintenance_print_objfiles ;
 int maintenance_print_psymbols ;
 int maintenance_print_statistics ;
 int maintenance_print_symbols ;
 int maintenance_print_type ;
 int maintenance_profile_p ;
 int maintenance_set_cmd ;
 int maintenance_set_cmdlist ;
 int maintenance_set_profile_cmd ;
 int maintenance_show_cmd ;
 int maintenance_show_cmdlist ;
 int maintenance_space_display ;
 int maintenance_time_display ;
 int maintenance_translate_address ;
 int maintenance_undeprecate ;
 int maintenanceinfolist ;
 int maintenancelist ;
 int maintenanceprintlist ;
 int setlist ;
 int showlist ;
 int var_zinteger ;
 int watchdog ;

void
_initialize_maint_cmds (void)
{
  struct cmd_list_element *tmpcmd;

  add_prefix_cmd ("maintenance", class_maintenance, maintenance_command,
    "Commands for use by GDB maintainers.\nIncludes commands to dump specific internal GDB structures in\na human readable form, to cause GDB to deliberately dump core,\nto test internal functions such as the C++/ObjC demangler, etc.",



    &maintenancelist, "maintenance ", 0,
    &cmdlist);

  add_com_alias ("mt", "maintenance", class_maintenance, 1);

  add_prefix_cmd ("info", class_maintenance, maintenance_info_command,
     "Commands for showing internal info about the program being debugged.",
    &maintenanceinfolist, "maintenance info ", 0,
    &maintenancelist);
  add_alias_cmd ("i", "info", class_maintenance, 1, &maintenancelist);

  add_cmd ("sections", class_maintenance, maintenance_info_sections,
    "List the BFD sections of the exec and core files. \nArguments may be any combination of:\n	[one or more section names]\n	ALLOC LOAD RELOC READONLY CODE DATA ROM CONSTRUCTOR\n	HAS_CONTENTS NEVER_LOAD COFF_SHARED_LIBRARY IS_COMMON\nSections matching any argument will be listed (no argument\nimplies all sections).  In addition, the special argument\n	ALLOBJ\nlists all sections from all object files, including shared libraries.",
    &maintenanceinfolist);

  add_prefix_cmd ("print", class_maintenance, maintenance_print_command,
    "Maintenance command for printing GDB internal state.",
    &maintenanceprintlist, "maintenance print ", 0,
    &maintenancelist);

  add_prefix_cmd ("set", class_maintenance, maintenance_set_cmd, "Set GDB internal variables used by the GDB maintainer.\nConfigure variables internal to GDB that aid in GDB's maintenance",


    &maintenance_set_cmdlist, "maintenance set ",
    0 ,
    &maintenancelist);

  add_prefix_cmd ("show", class_maintenance, maintenance_show_cmd, "Show GDB internal variables used by the GDB maintainer.\nConfigure variables internal to GDB that aid in GDB's maintenance",


    &maintenance_show_cmdlist, "maintenance show ",
    0 ,
    &maintenancelist);


  add_cmd ("dump-me", class_maintenance, maintenance_dump_me,
    "Get fatal error; make debugger dump its core.\nGDB sets its handling of SIGQUIT back to SIG_DFL and then sends\nitself a SIGQUIT signal.",


    &maintenancelist);


  add_cmd ("internal-error", class_maintenance, maintenance_internal_error,
    "Give GDB an internal error.\nCause GDB to behave as if an internal error was detected.",

    &maintenancelist);

  add_cmd ("internal-warning", class_maintenance, maintenance_internal_warning,
    "Give GDB an internal warning.\nCause GDB to behave as if an internal warning was reported.",

    &maintenancelist);

  add_cmd ("demangle", class_maintenance, maintenance_demangle,
    "Demangle a C++/ObjC mangled name.\nCall internal GDB demangler routine to demangle a C++ link name\nand prints the result.",


    &maintenancelist);

  add_cmd ("time", class_maintenance, maintenance_time_display,
    "Set the display of time usage.\nIf nonzero, will cause the execution time for each command to be\ndisplayed, following the command's output.",


    &maintenancelist);

  add_cmd ("space", class_maintenance, maintenance_space_display,
    "Set the display of space usage.\nIf nonzero, will cause the execution space for each command to be\ndisplayed, following the command's output.",


    &maintenancelist);

  add_cmd ("type", class_maintenance, maintenance_print_type,
    "Print a type chain for a given symbol.\nFor each node in a type chain, print the raw data for each member of\nthe type structure, and the interpretation of the data.",


    &maintenanceprintlist);

  add_cmd ("symbols", class_maintenance, maintenance_print_symbols,
    "Print dump of current symbol definitions.\nEntries in the full symbol table are dumped to file OUTFILE.\nIf a SOURCE file is specified, dump only that file's symbols.",


    &maintenanceprintlist);

  add_cmd ("msymbols", class_maintenance, maintenance_print_msymbols,
    "Print dump of current minimal symbol definitions.\nEntries in the minimal symbol table are dumped to file OUTFILE.\nIf a SOURCE file is specified, dump only that file's minimal symbols.",


    &maintenanceprintlist);

  add_cmd ("psymbols", class_maintenance, maintenance_print_psymbols,
    "Print dump of current partial symbol definitions.\nEntries in the partial symbol table are dumped to file OUTFILE.\nIf a SOURCE file is specified, dump only that file's partial symbols.",


    &maintenanceprintlist);

  add_cmd ("objfiles", class_maintenance, maintenance_print_objfiles,
    "Print dump of current object file definitions.",
    &maintenanceprintlist);

  add_cmd ("symtabs", class_maintenance, maintenance_info_symtabs,
    "List the full symbol tables for all object files.\nThis does not include information about individual symbols, blocks, or\nlinetables --- just the symbol table structures themselves.\nWith an argument REGEXP, list the symbol tables whose names that match that.",



    &maintenanceinfolist);

  add_cmd ("psymtabs", class_maintenance, maintenance_info_psymtabs,
    "List the partial symbol tables for all object files.\nThis does not include information about individual partial symbols,\njust the symbol table structures themselves.",


    &maintenanceinfolist);

  add_cmd ("statistics", class_maintenance, maintenance_print_statistics,
    "Print statistics about internal gdb state.",
    &maintenanceprintlist);

  add_cmd ("architecture", class_maintenance, maintenance_print_architecture,
    "Print the internal architecture configuration.Takes an optional file parameter.",

    &maintenanceprintlist);

  add_cmd ("check-symtabs", class_maintenance, maintenance_check_symtabs,
    "Check consistency of psymtabs and symtabs.",
    &maintenancelist);

  add_cmd ("translate-address", class_maintenance, maintenance_translate_address,
    "Translate a section name and address to a symbol.",
    &maintenancelist);

  add_cmd ("deprecate", class_maintenance, maintenance_deprecate,
    "Deprecate a command.  Note that this is just in here so the \ntestsuite can check the comamnd deprecator. You probably shouldn't use this,\nrather you should use the C function deprecate_cmd().  If you decide you \nwant to use it: maintenance deprecate 'commandname' \"replacement\". The \nreplacement is optional.", &maintenancelist);





  add_cmd ("undeprecate", class_maintenance, maintenance_undeprecate,
    "Undeprecate a command.  Note that this is just in here so the \ntestsuite can check the comamnd deprecator. You probably shouldn't use this,\nIf you decide you want to use it: maintenance undeprecate 'commandname'",


    &maintenancelist);

  add_show_from_set (
        add_set_cmd ("watchdog", class_maintenance, var_zinteger, (char *) &watchdog,
       "Set watchdog timer.\nWhen non-zero, this timeout is used instead of waiting forever for a target to\nfinish a low-level step or continue operation.  If the specified amount of time\npasses without a response from the target, an error occurs.", &setlist),



        &showlist);


  add_setshow_boolean_cmd ("profile", class_maintenance,
      &maintenance_profile_p,
      "Set internal profiling.\n"
      "When enabled GDB is profiled.",
      "Show internal profiling.\n",
      maintenance_set_profile_cmd, ((void*)0),
      &maintenance_set_cmdlist,
      &maintenance_show_cmdlist);
}
