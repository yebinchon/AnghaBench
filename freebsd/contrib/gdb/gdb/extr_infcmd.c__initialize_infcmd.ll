; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c__initialize_infcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c__initialize_infcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@class_run = common dso_local global i32 0, align 4
@tty_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Set terminal for future runs of program being debugged.\00", align 1
@filename_completer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@var_string_noescape = common dso_local global i32 0, align 4
@inferior_args = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [143 x i8] c"Set argument list to give program being debugged when it is started.\0AFollow this command with any number of args, to be passed to the program.\00", align 1
@setlist = common dso_local global i32 0, align 4
@notice_args_set = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@notice_args_read = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"environment\00", align 1
@no_class = common dso_local global i32 0, align 4
@environment_info = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [243 x i8] c"The environment to give the program, or one variable's value.\0AWith an argument VAR, prints the value of environment variable VAR to\0Agive the program being debugged.  With no arguments, prints the entire\0Aenvironment to be given to the program.\00", align 1
@noop_completer = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@unset_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Complement to certain \22set\22 commands.\00", align 1
@unsetlist = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"unset \00", align 1
@cmdlist = common dso_local global i32 0, align 4
@unset_environment_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [112 x i8] c"Cancel environment variable VAR for the program.\0AThis does not affect the program until the next \22run\22 command.\00", align 1
@set_environment_command = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [245 x i8] c"Set environment variable value to give the program.\0AArguments are VAR VALUE where VAR is variable name and VALUE is value.\0AVALUES of environment variables are uninterpreted strings.\0AThis does not affect the program until the next \22run\22 command.\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@class_files = common dso_local global i32 0, align 4
@path_command = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [343 x i8] c"Add directory DIR(s) to beginning of search path for object files.\0A$cwd in the path means the current working directory.\0AThis path is equivalent to the $PATH shell variable.  It is a list of\0Adirectories, separated by colons.  These directories are searched to find\0Afully linked executable files and separately compiled object files as needed.\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"paths\00", align 1
@path_info = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [322 x i8] c"Current search path for finding object files.\0A$cwd in the path means the current working directory.\0AThis path is equivalent to the $PATH shell variable.  It is a list of\0Adirectories, separated by colons.  These directories are searched to find\0Afully linked executable files and separately compiled object files as needed.\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@attach_command = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [692 x i8] c"Attach to a process or file outside of GDB.\0AThis command attaches to another target, of the same type as your last\0A\22target\22 command (\22info files\22 will show your target stack).\0AThe command may take as argument a process id or a device file.\0AFor a process id, you must have permission to send the process a signal,\0Aand it must have the same effective uid as the debugger.\0AWhen using \22attach\22 with a process id, the debugger finds the\0Aprogram running in the process, looking first in the current working\0Adirectory, or (if not found there) using the source file search path\0A(see the \22directory\22 command).  You can also use the \22file\22 command\0Ato specify the program, and to load its symbol table.\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@detach_command = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [197 x i8] c"Detach a process or file previously attached.\0AIf a process, it is no longer traced, and it continues its execution.  If\0Ayou were debugging a file, the file is closed and gdb no longer accesses it.\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@disconnect_command = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [112 x i8] c"Disconnect from a target.\0AThe target will wait for another debugger to connect.  Not available for\0Aall targets.\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@signal_command = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [131 x i8] c"Continue program giving it signal specified by the argument.\0AAn argument of \220\22 means continue program without giving it a signal.\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"stepi\00", align 1
@stepi_command = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [107 x i8] c"Step one instruction exactly.\0AArgument N means do this N times (or till program stops for another reason).\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@class_alias = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"nexti\00", align 1
@nexti_command = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [137 x i8] c"Step one instruction, but proceed through subroutine calls.\0AArgument N means do this N times (or till program stops for another reason).\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"ni\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@finish_command = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [117 x i8] c"Execute until selected stack frame returns.\0AUpon return, the value returned is printed and put in the value history.\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@next_command = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [249 x i8] c"Step program, proceeding through subroutine calls.\0ALike the \22step\22 command as long as subroutine calls do not happen;\0Awhen they do, the call is treated as one instruction.\0AArgument N means do this N times (or till program stops for another reason).\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@step_command = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [132 x i8] c"Step program until it reaches a different source line.\0AArgument N means do this N times (or till program stops for another reason).\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@until_command = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [152 x i8] c"Execute until the program reaches a source line greater than the current\0Aor a specified location (same args as break command) within the current frame.\00", align 1
@location_completer = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"advance\00", align 1
@advance_command = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [150 x i8] c"Continue the program up to the given location (same form as args for break command).\0AExecution will also stop upon exit from the current stack frame.\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@jump_command = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [160 x i8] c"Continue program being debugged at specified line or address.\0AGive as argument either LINENUM or *ADDR, where ADDR is an expression\0Afor an address to start at.\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@go_command = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [243 x i8] c"Usage: go <location>\0AContinue program being debugged, stopping at specified line or \0Aaddress.\0AGive as argument either LINENUM or *ADDR, where ADDR is an \0Aexpression for an address to start at.\0AThis command is a combination of tbreak and jump.\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@continue_command = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [266 x i8] c"Continue program being debugged, after signal or breakpoint.\0AIf proceeding from breakpoint, a number N may be used as an argument,\0Awhich means to set the ignore count of that breakpoint to N - 1 (so that\0Athe breakpoint won't break until the Nth time it is reached).\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"cont\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"fg\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@run_command = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [365 x i8] c"Start debugged program.  You may specify arguments to give it.\0AArgs may include \22*\22, or \22[...]\22; they are expanded using \22sh\22.\0AInput and output redirection with \22>\22, \22<\22, or \22>>\22 are also allowed.\0A\0AWith no arguments, uses arguments last specified (with \22run\22 or \22set args\22).\0ATo cancel previous arguments and run with no arguments,\0Ause \22set args\22 without arguments.\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@run_no_args_command = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [42 x i8] c"Start debugged program with no arguments.\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@interrupt_target_command = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [49 x i8] c"Interrupt the execution of the debugged program.\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@nofp_registers_info = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [133 x i8] c"List of integer registers and their contents, for selected stack frame.\0ARegister name as argument means describe only that register.\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@class_info = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [135 x i8] c"List of integer registers and their contents, for selected stack frame.\0A  Register name as argument means describe only that register.\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"all-registers\00", align 1
@all_registers_info = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [129 x i8] c"List of all registers and their contents, for selected stack frame.\0ARegister name as argument means describe only that register.\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@program_info = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [33 x i8] c"Execution status of the program.\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@float_info = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [45 x i8] c"Print the status of the floating point unit\0A\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@vector_info = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [37 x i8] c"Print the status of the vector unit\0A\00", align 1
@inferior_environ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_infcmd() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_run, align 4
  %3 = load i32, i32* @tty_command, align 4
  %4 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_list_element* %4, %struct.cmd_list_element** %1, align 8
  %5 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %6 = load i32, i32* @filename_completer, align 4
  %7 = call i32 @set_cmd_completer(%struct.cmd_list_element* %5, i32 %6)
  %8 = load i32, i32* @class_run, align 4
  %9 = load i32, i32* @var_string_noescape, align 4
  %10 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32 %9, i8* bitcast (i32* @inferior_args to i8*), i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.3, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %10, %struct.cmd_list_element** %1, align 8
  %11 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %12 = load i32, i32* @filename_completer, align 4
  %13 = call i32 @set_cmd_completer(%struct.cmd_list_element* %11, i32 %12)
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %15 = load i32, i32* @notice_args_set, align 4
  %16 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %14, i32 %15)
  %17 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %18 = call %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element* %17, i32* @showlist)
  store %struct.cmd_list_element* %18, %struct.cmd_list_element** %1, align 8
  %19 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %20 = load i32, i32* @notice_args_read, align 4
  %21 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %19, i32 %20)
  %22 = load i32, i32* @no_class, align 4
  %23 = load i32, i32* @environment_info, align 4
  %24 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %22, i32 %23, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.5, i64 0, i64 0), i32* @showlist)
  store %struct.cmd_list_element* %24, %struct.cmd_list_element** %1, align 8
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %26 = load i32, i32* @noop_completer, align 4
  %27 = call i32 @set_cmd_completer(%struct.cmd_list_element* %25, i32 %26)
  %28 = load i32, i32* @no_class, align 4
  %29 = load i32, i32* @unset_command, align 4
  %30 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %28, i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32* @unsetlist, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* @cmdlist)
  %31 = load i32, i32* @class_run, align 4
  %32 = load i32, i32* @unset_environment_command, align 4
  %33 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %32, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0), i32* @unsetlist)
  store %struct.cmd_list_element* %33, %struct.cmd_list_element** %1, align 8
  %34 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %35 = load i32, i32* @noop_completer, align 4
  %36 = call i32 @set_cmd_completer(%struct.cmd_list_element* %34, i32 %35)
  %37 = load i32, i32* @class_run, align 4
  %38 = load i32, i32* @set_environment_command, align 4
  %39 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %37, i32 %38, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.10, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %39, %struct.cmd_list_element** %1, align 8
  %40 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %41 = load i32, i32* @noop_completer, align 4
  %42 = call i32 @set_cmd_completer(%struct.cmd_list_element* %40, i32 %41)
  %43 = load i32, i32* @class_files, align 4
  %44 = load i32, i32* @path_command, align 4
  %45 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %43, i32 %44, i8* getelementptr inbounds ([343 x i8], [343 x i8]* @.str.12, i64 0, i64 0))
  store %struct.cmd_list_element* %45, %struct.cmd_list_element** %1, align 8
  %46 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %47 = load i32, i32* @filename_completer, align 4
  %48 = call i32 @set_cmd_completer(%struct.cmd_list_element* %46, i32 %47)
  %49 = load i32, i32* @no_class, align 4
  %50 = load i32, i32* @path_info, align 4
  %51 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %49, i32 %50, i8* getelementptr inbounds ([322 x i8], [322 x i8]* @.str.14, i64 0, i64 0), i32* @showlist)
  store %struct.cmd_list_element* %51, %struct.cmd_list_element** %1, align 8
  %52 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %53 = load i32, i32* @noop_completer, align 4
  %54 = call i32 @set_cmd_completer(%struct.cmd_list_element* %52, i32 %53)
  %55 = load i32, i32* @class_run, align 4
  %56 = load i32, i32* @attach_command, align 4
  %57 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %55, i32 %56, i8* getelementptr inbounds ([692 x i8], [692 x i8]* @.str.16, i64 0, i64 0))
  %58 = load i32, i32* @class_run, align 4
  %59 = load i32, i32* @detach_command, align 4
  %60 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %58, i32 %59, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.18, i64 0, i64 0))
  %61 = load i32, i32* @class_run, align 4
  %62 = load i32, i32* @disconnect_command, align 4
  %63 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %61, i32 %62, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.20, i64 0, i64 0))
  %64 = load i32, i32* @class_run, align 4
  %65 = load i32, i32* @signal_command, align 4
  %66 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %64, i32 %65, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.22, i64 0, i64 0))
  %67 = load i32, i32* @class_run, align 4
  %68 = load i32, i32* @stepi_command, align 4
  %69 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %67, i32 %68, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.24, i64 0, i64 0))
  %70 = load i32, i32* @class_alias, align 4
  %71 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %70, i32 0)
  %72 = load i32, i32* @class_run, align 4
  %73 = load i32, i32* @nexti_command, align 4
  %74 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %72, i32 %73, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.27, i64 0, i64 0))
  %75 = load i32, i32* @class_alias, align 4
  %76 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %75, i32 0)
  %77 = load i32, i32* @class_run, align 4
  %78 = load i32, i32* @finish_command, align 4
  %79 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %77, i32 %78, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.30, i64 0, i64 0))
  %80 = load i32, i32* @class_run, align 4
  %81 = load i32, i32* @next_command, align 4
  %82 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %80, i32 %81, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.32, i64 0, i64 0))
  %83 = load i32, i32* @class_run, align 4
  %84 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %83, i32 1)
  %85 = load i64, i64* @xdb_commands, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %0
  %88 = load i32, i32* @class_run, align 4
  %89 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %88, i32 1)
  br label %90

90:                                               ; preds = %87, %0
  %91 = load i32, i32* @class_run, align 4
  %92 = load i32, i32* @step_command, align 4
  %93 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 %91, i32 %92, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.36, i64 0, i64 0))
  %94 = load i32, i32* @class_run, align 4
  %95 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 %94, i32 1)
  %96 = load i32, i32* @class_run, align 4
  %97 = load i32, i32* @until_command, align 4
  %98 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %96, i32 %97, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.39, i64 0, i64 0))
  store %struct.cmd_list_element* %98, %struct.cmd_list_element** %1, align 8
  %99 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %100 = load i32, i32* @location_completer, align 4
  %101 = call i32 @set_cmd_completer(%struct.cmd_list_element* %99, i32 %100)
  %102 = load i32, i32* @class_run, align 4
  %103 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %102, i32 1)
  %104 = load i32, i32* @class_run, align 4
  %105 = load i32, i32* @advance_command, align 4
  %106 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 %104, i32 %105, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.42, i64 0, i64 0))
  store %struct.cmd_list_element* %106, %struct.cmd_list_element** %1, align 8
  %107 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %108 = load i32, i32* @location_completer, align 4
  %109 = call i32 @set_cmd_completer(%struct.cmd_list_element* %107, i32 %108)
  %110 = load i32, i32* @class_run, align 4
  %111 = load i32, i32* @jump_command, align 4
  %112 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 %110, i32 %111, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.44, i64 0, i64 0))
  store %struct.cmd_list_element* %112, %struct.cmd_list_element** %1, align 8
  %113 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %114 = load i32, i32* @location_completer, align 4
  %115 = call i32 @set_cmd_completer(%struct.cmd_list_element* %113, i32 %114)
  %116 = load i64, i64* @xdb_commands, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %90
  %119 = load i32, i32* @class_run, align 4
  %120 = load i32, i32* @go_command, align 4
  %121 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %119, i32 %120, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.46, i64 0, i64 0))
  store %struct.cmd_list_element* %121, %struct.cmd_list_element** %1, align 8
  %122 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %123 = load i32, i32* @location_completer, align 4
  %124 = call i32 @set_cmd_completer(%struct.cmd_list_element* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %90
  %126 = load i64, i64* @xdb_commands, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @class_run, align 4
  %130 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %129, i32 1)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* @class_run, align 4
  %133 = load i32, i32* @continue_command, align 4
  %134 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %132, i32 %133, i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.49, i64 0, i64 0))
  %135 = load i32, i32* @class_run, align 4
  %136 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32 %135, i32 1)
  %137 = load i32, i32* @class_run, align 4
  %138 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32 %137, i32 1)
  %139 = load i32, i32* @class_run, align 4
  %140 = load i32, i32* @run_command, align 4
  %141 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i32 %139, i32 %140, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.54, i64 0, i64 0))
  store %struct.cmd_list_element* %141, %struct.cmd_list_element** %1, align 8
  %142 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %143 = load i32, i32* @filename_completer, align 4
  %144 = call i32 @set_cmd_completer(%struct.cmd_list_element* %142, i32 %143)
  %145 = load i32, i32* @class_run, align 4
  %146 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i32 %145, i32 1)
  %147 = load i64, i64* @xdb_commands, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %131
  %150 = load i32, i32* @class_run, align 4
  %151 = load i32, i32* @run_no_args_command, align 4
  %152 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i32 %150, i32 %151, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %131
  %154 = load i32, i32* @class_run, align 4
  %155 = load i32, i32* @interrupt_target_command, align 4
  %156 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i32 %154, i32 %155, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i64 0, i64 0))
  %157 = load i32, i32* @nofp_registers_info, align 4
  %158 = call i32 @add_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i32 %157, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.61, i64 0, i64 0))
  %159 = call i32 @add_info_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i32 1)
  %160 = load i64, i64* @xdb_commands, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load i32, i32* @class_info, align 4
  %164 = load i32, i32* @nofp_registers_info, align 4
  %165 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i32 %163, i32 %164, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.63, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %153
  %167 = load i32, i32* @all_registers_info, align 4
  %168 = call i32 @add_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0), i32 %167, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.65, i64 0, i64 0))
  %169 = load i32, i32* @program_info, align 4
  %170 = call i32 @add_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i32 %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0))
  %171 = load i32, i32* @float_info, align 4
  %172 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i32 %171, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.69, i64 0, i64 0))
  %173 = load i32, i32* @vector_info, align 4
  %174 = call i32 @add_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i64 0, i64 0))
  %175 = call i32 (...) @make_environ()
  store i32 %175, i32* @inferior_environ, align 4
  %176 = load i32, i32* @inferior_environ, align 4
  %177 = call i32 @init_environ(i32 %176)
  ret void
}

declare dso_local %struct.cmd_list_element* @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local %struct.cmd_list_element* @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_info_alias(i8*, i8*, i32) #1

declare dso_local i32 @make_environ(...) #1

declare dso_local i32 @init_environ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
