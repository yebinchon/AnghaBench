; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c__initialize_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c__initialize_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@_initialize_breakpoint.breakpoint_set_cmdlist = internal global %struct.cmd_list_element* null, align 8
@_initialize_breakpoint.breakpoint_show_cmdlist = internal global %struct.cmd_list_element* null, align 8
@breakpoint_chain = common dso_local global i64 0, align 8
@breakpoint_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@class_breakpoint = common dso_local global i32 0, align 4
@ignore_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Set ignore-count of breakpoint number N to COUNT.\0AUsage is `ignore N COUNT'.\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"commands\00", align 1
@commands_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [423 x i8] c"Set commands to be executed when a breakpoint is hit.\0AGive breakpoint number as argument after \22commands\22.\0AWith no argument, the targeted breakpoint is the last one set.\0AThe commands themselves follow starting on the next line.\0AType a line containing \22end\22 to indicate the end of them.\0AGive \22silent\22 as the first line to make the breakpoint silent;\0Athen no output is printed when it is hit, except what the commands print.\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@condition_command = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [186 x i8] c"Specify breakpoint number N to break only if COND is true.\0AUsage is `condition N COND', where N is an integer and COND is an\0Aexpression to be evaluated whenever breakpoint N is reached.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"tbreak\00", align 1
@tbreak_command = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [225 x i8] c"Set a temporary breakpoint.  Args like \22break\22 command.\0ALike \22break\22 except the breakpoint is only temporary,\0Aso it will be deleted when hit.  Equivalent to \22break\22 followed\0Aby using \22enable delete\22 on the breakpoint number.\00", align 1
@location_completer = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"hbreak\00", align 1
@hbreak_command = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [174 x i8] c"Set a hardware assisted  breakpoint. Args like \22break\22 command.\0ALike \22break\22 except the breakpoint requires hardware support,\0Asome target hardware may not have this support.\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"thbreak\00", align 1
@thbreak_command = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [160 x i8] c"Set a temporary hardware assisted breakpoint. Args like \22break\22 command.\0ALike \22hbreak\22 except the breakpoint is only temporary,\0Aso it will be deleted when hit.\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@enable_command = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [264 x i8] c"Enable some breakpoints.\0AGive breakpoint numbers (separated by spaces) as arguments.\0AWith no subcommand, breakpoints are enabled until you command otherwise.\0AThis is used to cancel the effect of the \22disable\22 command.\0AWith a subcommand you can enable temporarily.\00", align 1
@enablelist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"enable \00", align 1
@cmdlist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"breakpoints\00", align 1
@.str.19 = private unnamed_addr constant [185 x i8] c"Enable some breakpoints.\0AGive breakpoint numbers (separated by spaces) as arguments.\0AThis is used to cancel the effect of the \22disable\22 command.\0AMay be abbreviated to simply \22enable\22.\0A\00", align 1
@enablebreaklist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.20 = private unnamed_addr constant [20 x i8] c"enable breakpoints \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@no_class = common dso_local global i32 0, align 4
@enable_once_command = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [133 x i8] c"Enable breakpoints for one hit.  Give breakpoint numbers.\0AIf a breakpoint is hit while enabled in this fashion, it becomes disabled.\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@enable_delete_command = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [135 x i8] c"Enable breakpoints and delete when hit.  Give breakpoint numbers.\0AIf a breakpoint is hit while enabled in this fashion, it is deleted.\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@disable_command = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [204 x i8] c"Disable some breakpoints.\0AArguments are breakpoint numbers with spaces in between.\0ATo disable all breakpoints, give no argument.\0AA disabled breakpoint is not forgotten, but has no effect until reenabled.\00", align 1
@disablelist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"disable \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"disa\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@class_alias = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [247 x i8] c"Disable some breakpoints.\0AArguments are breakpoint numbers with spaces in between.\0ATo disable all breakpoints, give no argument.\0AA disabled breakpoint is not forgotten, but has no effect until reenabled.\0AThis command may be abbreviated \22disable\22.\00", align 1
@delete_command = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [264 x i8] c"Delete some breakpoints or auto-display expressions.\0AArguments are breakpoint numbers with spaces in between.\0ATo delete all breakpoints, give no argument.\0A\0AAlso a prefix command for deletion of other GDB objects.\0AThe \22unset\22 command is also an alias for \22delete\22.\00", align 1
@deletelist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.33 = private unnamed_addr constant [8 x i8] c"delete \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"db\00", align 1
@.str.36 = private unnamed_addr constant [128 x i8] c"Delete some breakpoints.\0AArguments are breakpoint numbers with spaces in between.\0ATo delete all breakpoints, give no argument.\0A\00", align 1
@.str.37 = private unnamed_addr constant [197 x i8] c"Delete some breakpoints or auto-display expressions.\0AArguments are breakpoint numbers with spaces in between.\0ATo delete all breakpoints, give no argument.\0AThis command may be abbreviated \22delete\22.\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear_command = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [333 x i8] c"Clear breakpoint at specified line or function.\0AArgument may be line number, function name, or \22*\22 and an address.\0AIf line number is specified, all breakpoints in that line are cleared.\0AIf function is specified, breakpoints at beginning of function are cleared.\0AIf an address is specified, breakpoints at that address are cleared.\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [161 x i8] c"With no argument, clears all breakpoints in the line that the selected frame\0Ais executing in.\0A\0ASee also the \22delete\22 command which clears breakpoints by number.\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@break_command = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [306 x i8] c"Set breakpoint at specified line or function.\0AArgument may be line number, function name, or \22*\22 and an address.\0AIf line number is specified, break at start of code for that line.\0AIf function is specified, break at start of code for that function.\0AIf an address is specified, break at that exact address.\0A\00", align 1
@.str.43 = private unnamed_addr constant [278 x i8] c"With no arg, uses current execution address of selected stack frame.\0AThis is useful for breaking on return to a stack frame.\0A\0AMultiple breakpoints at one place are permitted, and useful if conditional.\0A\0ADo \22help breakpoints\22 for info on other commands dealing with breakpoints.\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@class_run = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"bre\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"brea\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"ba\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"bu\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"ubreak\00", align 1
@dbx_commands = common dso_local global i64 0, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@stop_command = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [66 x i8] c"Break in function/address or break at a line in the current file.\00", align 1
@stoplist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.53 = private unnamed_addr constant [6 x i8] c"stop \00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@stopin_command = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [31 x i8] c"Break in function or address.\0A\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@stopat_command = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [38 x i8] c"Break at a line in the current file.\0A\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@class_info = common dso_local global i32 0, align 4
@breakpoints_info = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [433 x i8] c"Status of user-settable breakpoints, or breakpoint number NUMBER.\0AThe \22Type\22 column indicates one of:\0A\09breakpoint     - normal breakpoint\0A\09watchpoint     - watchpoint\0AThe \22Disp\22 column contains one of \22keep\22, \22del\22, or \22dis\22 to indicate\0Athe disposition of the breakpoint after it gets hit.  \22dis\22 means that the\0Abreakpoint will be disabled.  The \22Address\22 and \22What\22 columns indicate the\0Aaddress and file/line number respectively.\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [195 x i8] c"Convenience variable \22$_\22 and default examine address for \22x\22\0Aare set to the address of the last breakpoint listed.\0A\0AConvenience variable \22$bpnum\22 contains the number of the last\0Abreakpoint set.\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"lb\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@maintenance_info_breakpoints = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [425 x i8] c"Status of all breakpoints, or breakpoint number NUMBER.\0AThe \22Type\22 column indicates one of:\0A\09breakpoint     - normal breakpoint\0A\09watchpoint     - watchpoint\0A\09longjmp        - internal breakpoint used to step through longjmp()\0A\09longjmp resume - internal breakpoint at the target of longjmp()\0A\09until          - internal breakpoint used by the \22until\22 command\0A\09finish         - internal breakpoint used by the \22finish\22 command\0A\00", align 1
@.str.63 = private unnamed_addr constant [266 x i8] c"The \22Disp\22 column contains one of \22keep\22, \22del\22, or \22dis\22 to indicate\0Athe disposition of the breakpoint after it gets hit.  \22dis\22 means that the\0Abreakpoint will be disabled.  The \22Address\22 and \22What\22 columns indicate the\0Aaddress and file/line number respectively.\0A\0A\00", align 1
@maintenanceinfolist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.64 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@catch_command = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [1622 x i8] c"Set catchpoints to catch events.\0ARaised signals may be caught:\0A\09catch signal              - all signals\0A\09catch signal <signame>    - a particular signal\0ARaised exceptions may be caught:\0A\09catch throw               - all exceptions, when thrown\0A\09catch throw <exceptname>  - a particular exception, when thrown\0A\09catch catch               - all exceptions, when caught\0A\09catch catch <exceptname>  - a particular exception, when caught\0AThread or process events may be caught:\0A\09catch thread_start        - any threads, just after creation\0A\09catch thread_exit         - any threads, just before expiration\0A\09catch thread_join         - any threads, just after joins\0AProcess events may be caught:\0A\09catch start               - any processes, just after creation\0A\09catch exit                - any processes, just before expiration\0A\09catch fork                - calls to fork()\0A\09catch vfork               - calls to vfork()\0A\09catch exec                - calls to exec()\0ADynamically-linked library events may be caught:\0A\09catch load                - loads of any library\0A\09catch load <libname>      - loads of a particular library\0A\09catch unload              - unloads of any library\0A\09catch unload <libname>    - unloads of a particular library\0AThe act of your program's execution stopping may also be caught:\0A\09catch stop\0A\0AC++ exceptions may be caught:\0A\09catch throw               - all exceptions, when thrown\0A\09catch catch               - all exceptions, when caught\0A\0ADo \22help set follow-fork-mode\22 for info on debugging your program\0Aafter a fork or vfork is caught.\0A\0ADo \22help breakpoints\22 for info on other commands dealing with breakpoints.\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"tcatch\00", align 1
@tcatch_command = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [239 x i8] c"Set temporary catchpoints to catch events.\0AArgs like \22catch\22 command.\0ALike \22catch\22 except the catchpoint is only temporary,\0Aso it will be deleted when hit.  Equivalent to \22catch\22 followed\0Aby using \22enable delete\22 on the catchpoint number.\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"watch\00", align 1
@watch_command = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [126 x i8] c"Set a watchpoint for an expression.\0AA watchpoint stops execution of your program whenever the value of\0Aan expression changes.\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"rwatch\00", align 1
@rwatch_command = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [131 x i8] c"Set a read watchpoint for an expression.\0AA watchpoint stops execution of your program whenever the value of\0Aan expression is read.\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"awatch\00", align 1
@awatch_command = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [144 x i8] c"Set a watchpoint for an expression.\0AA watchpoint stops execution of your program whenever the value of\0Aan expression is either read or written.\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"watchpoints\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"Synonym for ``info breakpoints''.\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"can-use-hw-watchpoints\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@can_use_hw_watchpoints = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [267 x i8] c"Set debugger's willingness to use watchpoint hardware.\0AIf zero, gdb will not use hardware for new watchpoints, even if\0Asuch is available.  (However, any hardware watchpoints that were\0Acreated before setting this to nonzero, will continue to use watchpoint\0Ahardware.)\00", align 1
@setlist = common dso_local global %struct.cmd_list_element* null, align 8
@showlist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.78 = private unnamed_addr constant [11 x i8] c"breakpoint\00", align 1
@set_breakpoint_cmd = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [113 x i8] c"Breakpoint specific settings\0AConfigure various breakpoint-specific variables such as\0Apending breakpoint behavior\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"set breakpoint \00", align 1
@show_breakpoint_cmd = common dso_local global i32 0, align 4
@.str.81 = private unnamed_addr constant [17 x i8] c"show breakpoint \00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@pending_break_support = common dso_local global i32 0, align 4
@.str.83 = private unnamed_addr constant [331 x i8] c"Set debugger's behavior regarding pending breakpoints.\0AIf on, an unrecognized breakpoint location will cause gdb to create a\0Apending breakpoint.  If off, an unrecognized breakpoint location results in\0Aan error.  If auto, an unrecognized breakpoint location results in a\0Auser-query to see if a pending breakpoint should be created.\00", align 1
@.str.84 = private unnamed_addr constant [332 x i8] c"Show debugger's behavior regarding pending breakpoints.\0AIf on, an unrecognized breakpoint location will cause gdb to create a\0Apending breakpoint.  If off, an unrecognized breakpoint location results in\0Aan error.  If auto, an unrecognized breakpoint location results in a\0Auser-query to see if a pending breakpoint should be created.\00", align 1
@AUTO_BOOLEAN_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_breakpoint() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  store i64 0, i64* @breakpoint_chain, align 8
  store i64 0, i64* @breakpoint_count, align 8
  %2 = load i32, i32* @class_breakpoint, align 4
  %3 = load i32, i32* @ignore_command, align 4
  %4 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i64, i64* @xdb_commands, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @class_breakpoint, align 4
  %9 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i32 1)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @class_breakpoint, align 4
  %12 = load i32, i32* @commands_command, align 4
  %13 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %11, i32 %12, i8* getelementptr inbounds ([423 x i8], [423 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @class_breakpoint, align 4
  %15 = load i32, i32* @condition_command, align 4
  %16 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %14, i32 %15, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* @class_breakpoint, align 4
  %18 = load i32, i32* @tbreak_command, align 4
  %19 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %17, i32 %18, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cmd_list_element* %19, %struct.cmd_list_element** %1, align 8
  %20 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %21 = load i32, i32* @location_completer, align 4
  %22 = call i32 @set_cmd_completer(%struct.cmd_list_element* %20, i32 %21)
  %23 = load i32, i32* @class_breakpoint, align 4
  %24 = load i32, i32* @hbreak_command, align 4
  %25 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %23, i32 %24, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.10, i64 0, i64 0))
  store %struct.cmd_list_element* %25, %struct.cmd_list_element** %1, align 8
  %26 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %27 = load i32, i32* @location_completer, align 4
  %28 = call i32 @set_cmd_completer(%struct.cmd_list_element* %26, i32 %27)
  %29 = load i32, i32* @class_breakpoint, align 4
  %30 = load i32, i32* @thbreak_command, align 4
  %31 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %29, i32 %30, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.12, i64 0, i64 0))
  store %struct.cmd_list_element* %31, %struct.cmd_list_element** %1, align 8
  %32 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %33 = load i32, i32* @location_completer, align 4
  %34 = call i32 @set_cmd_completer(%struct.cmd_list_element* %32, i32 %33)
  %35 = load i32, i32* @class_breakpoint, align 4
  %36 = load i32, i32* @enable_command, align 4
  %37 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %35, i32 %36, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.14, i64 0, i64 0), %struct.cmd_list_element** @enablelist, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 1, %struct.cmd_list_element** @cmdlist)
  %38 = load i64, i64* @xdb_commands, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %10
  %41 = load i32, i32* @class_breakpoint, align 4
  %42 = load i32, i32* @enable_command, align 4
  %43 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %41, i32 %42, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.14, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %10
  %45 = load i32, i32* @class_breakpoint, align 4
  %46 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %45, i32 1)
  %47 = load i32, i32* @class_breakpoint, align 4
  %48 = load i32, i32* @enable_command, align 4
  %49 = call i32 @add_abbrev_prefix_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %47, i32 %48, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.19, i64 0, i64 0), %struct.cmd_list_element** @enablebreaklist, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 1, %struct.cmd_list_element** @enablelist)
  %50 = load i32, i32* @no_class, align 4
  %51 = load i32, i32* @enable_once_command, align 4
  %52 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %50, i32 %51, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.22, i64 0, i64 0), %struct.cmd_list_element** @enablebreaklist)
  %53 = load i32, i32* @no_class, align 4
  %54 = load i32, i32* @enable_delete_command, align 4
  %55 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %53, i32 %54, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.24, i64 0, i64 0), %struct.cmd_list_element** @enablebreaklist)
  %56 = load i32, i32* @no_class, align 4
  %57 = load i32, i32* @enable_delete_command, align 4
  %58 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %56, i32 %57, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.24, i64 0, i64 0), %struct.cmd_list_element** @enablelist)
  %59 = load i32, i32* @no_class, align 4
  %60 = load i32, i32* @enable_once_command, align 4
  %61 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %59, i32 %60, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.22, i64 0, i64 0), %struct.cmd_list_element** @enablelist)
  %62 = load i32, i32* @class_breakpoint, align 4
  %63 = load i32, i32* @disable_command, align 4
  %64 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %62, i32 %63, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.26, i64 0, i64 0), %struct.cmd_list_element** @disablelist, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.cmd_list_element** @cmdlist)
  %65 = load i32, i32* @class_breakpoint, align 4
  %66 = call i32 @add_com_alias(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %65, i32 1)
  %67 = load i32, i32* @class_breakpoint, align 4
  %68 = call i32 @add_com_alias(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %67, i32 1)
  %69 = load i64, i64* @xdb_commands, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %44
  %72 = load i32, i32* @class_breakpoint, align 4
  %73 = load i32, i32* @disable_command, align 4
  %74 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 %72, i32 %73, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.26, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %44
  %76 = load i32, i32* @class_alias, align 4
  %77 = load i32, i32* @disable_command, align 4
  %78 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %76, i32 %77, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.31, i64 0, i64 0), %struct.cmd_list_element** @disablelist)
  %79 = load i32, i32* @class_breakpoint, align 4
  %80 = load i32, i32* @delete_command, align 4
  %81 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %79, i32 %80, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.32, i64 0, i64 0), %struct.cmd_list_element** @deletelist, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 1, %struct.cmd_list_element** @cmdlist)
  %82 = load i32, i32* @class_breakpoint, align 4
  %83 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %82, i32 1)
  %84 = load i64, i64* @xdb_commands, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load i32, i32* @class_breakpoint, align 4
  %88 = load i32, i32* @delete_command, align 4
  %89 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i32 %87, i32 %88, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.36, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %75
  %91 = load i32, i32* @class_alias, align 4
  %92 = load i32, i32* @delete_command, align 4
  %93 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %91, i32 %92, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.37, i64 0, i64 0), %struct.cmd_list_element** @deletelist)
  %94 = load i32, i32* @class_breakpoint, align 4
  %95 = load i32, i32* @clear_command, align 4
  %96 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([333 x i8], [333 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.40, i64 0, i64 0), i8* null)
  %97 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %94, i32 %95, i8* %96)
  %98 = load i32, i32* @class_breakpoint, align 4
  %99 = load i32, i32* @break_command, align 4
  %100 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([306 x i8], [306 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.43, i64 0, i64 0), i8* null)
  %101 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %98, i32 %99, i8* %100)
  store %struct.cmd_list_element* %101, %struct.cmd_list_element** %1, align 8
  %102 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %103 = load i32, i32* @location_completer, align 4
  %104 = call i32 @set_cmd_completer(%struct.cmd_list_element* %102, i32 %103)
  %105 = load i32, i32* @class_run, align 4
  %106 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %105, i32 1)
  %107 = load i32, i32* @class_run, align 4
  %108 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %107, i32 1)
  %109 = load i32, i32* @class_run, align 4
  %110 = call i32 @add_com_alias(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %109, i32 1)
  %111 = load i32, i32* @class_run, align 4
  %112 = call i32 @add_com_alias(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %111, i32 1)
  %113 = load i64, i64* @xdb_commands, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %90
  %116 = load i32, i32* @class_breakpoint, align 4
  %117 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %116, i32 1)
  %118 = load i32, i32* @class_breakpoint, align 4
  %119 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i32 %118, i32 1)
  br label %120

120:                                              ; preds = %115, %90
  %121 = load i64, i64* @dbx_commands, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32, i32* @class_breakpoint, align 4
  %125 = load i32, i32* @stop_command, align 4
  %126 = call i32 @add_abbrev_prefix_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32 %124, i32 %125, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.52, i64 0, i64 0), %struct.cmd_list_element** @stoplist, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i32 1, %struct.cmd_list_element** @cmdlist)
  %127 = load i32, i32* @class_breakpoint, align 4
  %128 = load i32, i32* @stopin_command, align 4
  %129 = call i32 @add_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 %127, i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i64 0, i64 0), %struct.cmd_list_element** @stoplist)
  %130 = load i32, i32* @class_breakpoint, align 4
  %131 = load i32, i32* @stopat_command, align 4
  %132 = call i32 @add_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32 %130, i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i64 0, i64 0), %struct.cmd_list_element** @stoplist)
  %133 = load i32, i32* @class_info, align 4
  %134 = load i32, i32* @breakpoints_info, align 4
  %135 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([433 x i8], [433 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.60, i64 0, i64 0), i8* null)
  %136 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i32 %133, i32 %134, i8* %135)
  br label %137

137:                                              ; preds = %123, %120
  %138 = load i32, i32* @breakpoints_info, align 4
  %139 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([433 x i8], [433 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.60, i64 0, i64 0), i8* null)
  %140 = call i32 @add_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %138, i8* %139)
  %141 = load i64, i64* @xdb_commands, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* @class_breakpoint, align 4
  %145 = load i32, i32* @breakpoints_info, align 4
  %146 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([433 x i8], [433 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.60, i64 0, i64 0), i8* null)
  %147 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i32 %144, i32 %145, i8* %146)
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i32, i32* @class_maintenance, align 4
  %150 = load i32, i32* @maintenance_info_breakpoints, align 4
  %151 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([425 x i8], [425 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.60, i64 0, i64 0), i8* null)
  %152 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %149, i32 %150, i8* %151, %struct.cmd_list_element** @maintenanceinfolist)
  %153 = load i32, i32* @class_breakpoint, align 4
  %154 = load i32, i32* @catch_command, align 4
  %155 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i32 %153, i32 %154, i8* getelementptr inbounds ([1622 x i8], [1622 x i8]* @.str.65, i64 0, i64 0))
  %156 = load i32, i32* @class_breakpoint, align 4
  %157 = load i32, i32* @tcatch_command, align 4
  %158 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i32 %156, i32 %157, i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.67, i64 0, i64 0))
  %159 = load i32, i32* @class_breakpoint, align 4
  %160 = load i32, i32* @watch_command, align 4
  %161 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i32 %159, i32 %160, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.69, i64 0, i64 0))
  store %struct.cmd_list_element* %161, %struct.cmd_list_element** %1, align 8
  %162 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %163 = load i32, i32* @location_completer, align 4
  %164 = call i32 @set_cmd_completer(%struct.cmd_list_element* %162, i32 %163)
  %165 = load i32, i32* @class_breakpoint, align 4
  %166 = load i32, i32* @rwatch_command, align 4
  %167 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 %165, i32 %166, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.71, i64 0, i64 0))
  store %struct.cmd_list_element* %167, %struct.cmd_list_element** %1, align 8
  %168 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %169 = load i32, i32* @location_completer, align 4
  %170 = call i32 @set_cmd_completer(%struct.cmd_list_element* %168, i32 %169)
  %171 = load i32, i32* @class_breakpoint, align 4
  %172 = load i32, i32* @awatch_command, align 4
  %173 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 %171, i32 %172, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.73, i64 0, i64 0))
  store %struct.cmd_list_element* %173, %struct.cmd_list_element** %1, align 8
  %174 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %175 = load i32, i32* @location_completer, align 4
  %176 = call i32 @set_cmd_completer(%struct.cmd_list_element* %174, i32 %175)
  %177 = load i32, i32* @breakpoints_info, align 4
  %178 = call i32 @add_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.75, i64 0, i64 0))
  %179 = load i32, i32* @class_support, align 4
  %180 = load i32, i32* @var_zinteger, align 4
  %181 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.76, i64 0, i64 0), i32 %179, i32 %180, i8* bitcast (i32* @can_use_hw_watchpoints to i8*), i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.77, i64 0, i64 0), %struct.cmd_list_element** @setlist)
  store %struct.cmd_list_element* %181, %struct.cmd_list_element** %1, align 8
  %182 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %183 = call i32 @add_show_from_set(%struct.cmd_list_element* %182, %struct.cmd_list_element** @showlist)
  store i32 1, i32* @can_use_hw_watchpoints, align 4
  %184 = load i32, i32* @class_maintenance, align 4
  %185 = load i32, i32* @set_breakpoint_cmd, align 4
  %186 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0), i32 %184, i32 %185, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.79, i64 0, i64 0), %struct.cmd_list_element** @_initialize_breakpoint.breakpoint_set_cmdlist, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i64 0, i64 0), i32 0, %struct.cmd_list_element** @setlist)
  %187 = load i32, i32* @class_maintenance, align 4
  %188 = load i32, i32* @show_breakpoint_cmd, align 4
  %189 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0), i32 %187, i32 %188, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.79, i64 0, i64 0), %struct.cmd_list_element** @_initialize_breakpoint.breakpoint_show_cmdlist, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0), i32 0, %struct.cmd_list_element** @showlist)
  %190 = load i32, i32* @no_class, align 4
  %191 = call i32 @add_setshow_auto_boolean_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i64 0, i64 0), i32 %190, i32* @pending_break_support, i8* getelementptr inbounds ([331 x i8], [331 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([332 x i8], [332 x i8]* @.str.84, i64 0, i64 0), i32* null, i32* null, %struct.cmd_list_element** @_initialize_breakpoint.breakpoint_set_cmdlist, %struct.cmd_list_element** @_initialize_breakpoint.breakpoint_show_cmdlist)
  %192 = load i32, i32* @AUTO_BOOLEAN_AUTO, align 4
  store i32 %192, i32* @pending_break_support, align 4
  ret void
}

declare dso_local %struct.cmd_list_element* @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, %struct.cmd_list_element**) #1

declare dso_local i32 @add_abbrev_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, %struct.cmd_list_element**) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, %struct.cmd_list_element**) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, %struct.cmd_list_element**) #1

declare dso_local i32 @add_setshow_auto_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
