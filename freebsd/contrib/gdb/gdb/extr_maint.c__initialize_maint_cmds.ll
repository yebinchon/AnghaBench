; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c__initialize_maint_cmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c__initialize_maint_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"maintenance\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@maintenance_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [226 x i8] c"Commands for use by GDB maintainers.\0AIncludes commands to dump specific internal GDB structures in\0Aa human readable form, to cause GDB to deliberately dump core,\0Ato test internal functions such as the C++/ObjC demangler, etc.\00", align 1
@maintenancelist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"maintenance \00", align 1
@cmdlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"mt\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@maintenance_info_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"Commands for showing internal info about the program being debugged.\00", align 1
@maintenanceinfolist = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"maintenance info \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@maintenance_info_sections = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [420 x i8] c"List the BFD sections of the exec and core files. \0AArguments may be any combination of:\0A\09[one or more section names]\0A\09ALLOC LOAD RELOC READONLY CODE DATA ROM CONSTRUCTOR\0A\09HAS_CONTENTS NEVER_LOAD COFF_SHARED_LIBRARY IS_COMMON\0ASections matching any argument will be listed (no argument\0Aimplies all sections).  In addition, the special argument\0A\09ALLOBJ\0Alists all sections from all object files, including shared libraries.\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@maintenance_print_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"Maintenance command for printing GDB internal state.\00", align 1
@maintenanceprintlist = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"maintenance print \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@maintenance_set_cmd = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [121 x i8] c"Set GDB internal variables used by the GDB maintainer.\0AConfigure variables internal to GDB that aid in GDB's maintenance\00", align 1
@maintenance_set_cmdlist = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"maintenance set \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@maintenance_show_cmd = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [122 x i8] c"Show GDB internal variables used by the GDB maintainer.\0AConfigure variables internal to GDB that aid in GDB's maintenance\00", align 1
@maintenance_show_cmdlist = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"maintenance show \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"dump-me\00", align 1
@maintenance_dump_me = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [135 x i8] c"Get fatal error; make debugger dump its core.\0AGDB sets its handling of SIGQUIT back to SIG_DFL and then sends\0Aitself a SIGQUIT signal.\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"internal-error\00", align 1
@maintenance_internal_error = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [86 x i8] c"Give GDB an internal error.\0ACause GDB to behave as if an internal error was detected.\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"internal-warning\00", align 1
@maintenance_internal_warning = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [90 x i8] c"Give GDB an internal warning.\0ACause GDB to behave as if an internal warning was reported.\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"demangle\00", align 1
@maintenance_demangle = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [121 x i8] c"Demangle a C++/ObjC mangled name.\0ACall internal GDB demangler routine to demangle a C++ link name\0Aand prints the result.\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@maintenance_time_display = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [139 x i8] c"Set the display of time usage.\0AIf nonzero, will cause the execution time for each command to be\0Adisplayed, following the command's output.\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@maintenance_space_display = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [141 x i8] c"Set the display of space usage.\0AIf nonzero, will cause the execution space for each command to be\0Adisplayed, following the command's output.\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@maintenance_print_type = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [164 x i8] c"Print a type chain for a given symbol.\0AFor each node in a type chain, print the raw data for each member of\0Athe type structure, and the interpretation of the data.\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@maintenance_print_symbols = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [165 x i8] c"Print dump of current symbol definitions.\0AEntries in the full symbol table are dumped to file OUTFILE.\0AIf a SOURCE file is specified, dump only that file's symbols.\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"msymbols\00", align 1
@maintenance_print_msymbols = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [184 x i8] c"Print dump of current minimal symbol definitions.\0AEntries in the minimal symbol table are dumped to file OUTFILE.\0AIf a SOURCE file is specified, dump only that file's minimal symbols.\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"psymbols\00", align 1
@maintenance_print_psymbols = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [184 x i8] c"Print dump of current partial symbol definitions.\0AEntries in the partial symbol table are dumped to file OUTFILE.\0AIf a SOURCE file is specified, dump only that file's partial symbols.\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"objfiles\00", align 1
@maintenance_print_objfiles = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [47 x i8] c"Print dump of current object file definitions.\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"symtabs\00", align 1
@maintenance_info_symtabs = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [258 x i8] c"List the full symbol tables for all object files.\0AThis does not include information about individual symbols, blocks, or\0Alinetables --- just the symbol table structures themselves.\0AWith an argument REGEXP, list the symbol tables whose names that match that.\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"psymtabs\00", align 1
@maintenance_info_psymtabs = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [166 x i8] c"List the partial symbol tables for all object files.\0AThis does not include information about individual partial symbols,\0Ajust the symbol table structures themselves.\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@maintenance_print_statistics = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [43 x i8] c"Print statistics about internal gdb state.\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"architecture\00", align 1
@maintenance_print_architecture = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [80 x i8] c"Print the internal architecture configuration.Takes an optional file parameter.\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"check-symtabs\00", align 1
@maintenance_check_symtabs = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [43 x i8] c"Check consistency of psymtabs and symtabs.\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"translate-address\00", align 1
@maintenance_translate_address = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [50 x i8] c"Translate a section name and address to a symbol.\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"deprecate\00", align 1
@maintenance_deprecate = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [309 x i8] c"Deprecate a command.  Note that this is just in here so the \0Atestsuite can check the comamnd deprecator. You probably shouldn't use this,\0Arather you should use the C function deprecate_cmd().  If you decide you \0Awant to use it: maintenance deprecate 'commandname' \22replacement\22. The \0Areplacement is optional.\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"undeprecate\00", align 1
@maintenance_undeprecate = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [212 x i8] c"Undeprecate a command.  Note that this is just in here so the \0Atestsuite can check the comamnd deprecator. You probably shouldn't use this,\0AIf you decide you want to use it: maintenance undeprecate 'commandname'\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@var_zinteger = common dso_local global i32 0, align 4
@watchdog = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [239 x i8] c"Set watchdog timer.\0AWhen non-zero, this timeout is used instead of waiting forever for a target to\0Afinish a low-level step or continue operation.  If the specified amount of time\0Apasses without a response from the target, an error occurs.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@maintenance_profile_p = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [54 x i8] c"Set internal profiling.\0AWhen enabled GDB is profiled.\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"Show internal profiling.\0A\00", align 1
@maintenance_set_profile_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_maint_cmds() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_maintenance, align 4
  %3 = load i32, i32* @maintenance_command, align 4
  %4 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.1, i64 0, i64 0), i32* @maintenancelist, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @cmdlist)
  %5 = load i32, i32* @class_maintenance, align 4
  %6 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %5, i32 1)
  %7 = load i32, i32* @class_maintenance, align 4
  %8 = load i32, i32* @maintenance_info_command, align 4
  %9 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32* @maintenanceinfolist, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* @maintenancelist)
  %10 = load i32, i32* @class_maintenance, align 4
  %11 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %10, i32 1, i32* @maintenancelist)
  %12 = load i32, i32* @class_maintenance, align 4
  %13 = load i32, i32* @maintenance_info_sections, align 4
  %14 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %12, i32 %13, i8* getelementptr inbounds ([420 x i8], [420 x i8]* @.str.9, i64 0, i64 0), i32* @maintenanceinfolist)
  %15 = load i32, i32* @class_maintenance, align 4
  %16 = load i32, i32* @maintenance_print_command, align 4
  %17 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32* @maintenanceprintlist, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 0, i32* @maintenancelist)
  %18 = load i32, i32* @class_maintenance, align 4
  %19 = load i32, i32* @maintenance_set_cmd, align 4
  %20 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.14, i64 0, i64 0), i32* @maintenance_set_cmdlist, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 0, i32* @maintenancelist)
  %21 = load i32, i32* @class_maintenance, align 4
  %22 = load i32, i32* @maintenance_show_cmd, align 4
  %23 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.17, i64 0, i64 0), i32* @maintenance_show_cmdlist, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 0, i32* @maintenancelist)
  %24 = load i32, i32* @class_maintenance, align 4
  %25 = load i32, i32* @maintenance_dump_me, align 4
  %26 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %24, i32 %25, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.20, i64 0, i64 0), i32* @maintenancelist)
  %27 = load i32, i32* @class_maintenance, align 4
  %28 = load i32, i32* @maintenance_internal_error, align 4
  %29 = call i32 @add_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %27, i32 %28, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.22, i64 0, i64 0), i32* @maintenancelist)
  %30 = load i32, i32* @class_maintenance, align 4
  %31 = load i32, i32* @maintenance_internal_warning, align 4
  %32 = call i32 @add_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %30, i32 %31, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.24, i64 0, i64 0), i32* @maintenancelist)
  %33 = load i32, i32* @class_maintenance, align 4
  %34 = load i32, i32* @maintenance_demangle, align 4
  %35 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %33, i32 %34, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.26, i64 0, i64 0), i32* @maintenancelist)
  %36 = load i32, i32* @class_maintenance, align 4
  %37 = load i32, i32* @maintenance_time_display, align 4
  %38 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %36, i32 %37, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.28, i64 0, i64 0), i32* @maintenancelist)
  %39 = load i32, i32* @class_maintenance, align 4
  %40 = load i32, i32* @maintenance_space_display, align 4
  %41 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 %39, i32 %40, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.30, i64 0, i64 0), i32* @maintenancelist)
  %42 = load i32, i32* @class_maintenance, align 4
  %43 = load i32, i32* @maintenance_print_type, align 4
  %44 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %42, i32 %43, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.32, i64 0, i64 0), i32* @maintenanceprintlist)
  %45 = load i32, i32* @class_maintenance, align 4
  %46 = load i32, i32* @maintenance_print_symbols, align 4
  %47 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 %45, i32 %46, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.34, i64 0, i64 0), i32* @maintenanceprintlist)
  %48 = load i32, i32* @class_maintenance, align 4
  %49 = load i32, i32* @maintenance_print_msymbols, align 4
  %50 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32 %48, i32 %49, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.36, i64 0, i64 0), i32* @maintenanceprintlist)
  %51 = load i32, i32* @class_maintenance, align 4
  %52 = load i32, i32* @maintenance_print_psymbols, align 4
  %53 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i32 %51, i32 %52, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.38, i64 0, i64 0), i32* @maintenanceprintlist)
  %54 = load i32, i32* @class_maintenance, align 4
  %55 = load i32, i32* @maintenance_print_objfiles, align 4
  %56 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i32 %54, i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0), i32* @maintenanceprintlist)
  %57 = load i32, i32* @class_maintenance, align 4
  %58 = load i32, i32* @maintenance_info_symtabs, align 4
  %59 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 %57, i32 %58, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.42, i64 0, i64 0), i32* @maintenanceinfolist)
  %60 = load i32, i32* @class_maintenance, align 4
  %61 = load i32, i32* @maintenance_info_psymtabs, align 4
  %62 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i32 %60, i32 %61, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.44, i64 0, i64 0), i32* @maintenanceinfolist)
  %63 = load i32, i32* @class_maintenance, align 4
  %64 = load i32, i32* @maintenance_print_statistics, align 4
  %65 = call i32 @add_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i32 %63, i32 %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i64 0, i64 0), i32* @maintenanceprintlist)
  %66 = load i32, i32* @class_maintenance, align 4
  %67 = load i32, i32* @maintenance_print_architecture, align 4
  %68 = call i32 @add_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i32 %66, i32 %67, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.48, i64 0, i64 0), i32* @maintenanceprintlist)
  %69 = load i32, i32* @class_maintenance, align 4
  %70 = load i32, i32* @maintenance_check_symtabs, align 4
  %71 = call i32 @add_cmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i32 %69, i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i32* @maintenancelist)
  %72 = load i32, i32* @class_maintenance, align 4
  %73 = load i32, i32* @maintenance_translate_address, align 4
  %74 = call i32 @add_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0), i32 %72, i32 %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.52, i64 0, i64 0), i32* @maintenancelist)
  %75 = load i32, i32* @class_maintenance, align 4
  %76 = load i32, i32* @maintenance_deprecate, align 4
  %77 = call i32 @add_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i32 %75, i32 %76, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.54, i64 0, i64 0), i32* @maintenancelist)
  %78 = load i32, i32* @class_maintenance, align 4
  %79 = load i32, i32* @maintenance_undeprecate, align 4
  %80 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 %78, i32 %79, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.56, i64 0, i64 0), i32* @maintenancelist)
  %81 = load i32, i32* @class_maintenance, align 4
  %82 = load i32, i32* @var_zinteger, align 4
  %83 = call i32 @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i32 %81, i32 %82, i8* bitcast (i32* @watchdog to i8*), i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.58, i64 0, i64 0), i32* @setlist)
  %84 = call i32 @add_show_from_set(i32 %83, i32* @showlist)
  %85 = load i32, i32* @class_maintenance, align 4
  %86 = load i32, i32* @maintenance_set_profile_cmd, align 4
  %87 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), i32 %85, i32* @maintenance_profile_p, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0), i32 %86, i32* null, i32* @maintenance_set_cmdlist, i32* @maintenance_show_cmdlist)
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_alias_cmd(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_setshow_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
