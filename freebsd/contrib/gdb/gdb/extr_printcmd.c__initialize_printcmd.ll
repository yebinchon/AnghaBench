; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c__initialize_printcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c__initialize_printcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@current_display_number = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"address\00", align 1
@address_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Describe where symbol SYM is stored.\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@sym_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [106 x i8] c"Describe what symbol is at location ADDR.\0AOnly for symbols with fixed locations (global or static scope).\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@class_vars = common dso_local global i32 0, align 4
@x_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [305 x i8] c"Examine memory: x/FMT ADDRESS.\0AADDRESS is an expression for the memory address to examine.\0AFMT is a repeat count followed by a format letter and a size letter.\0AFormat letters are o(octal), x(hex), d(decimal), u(unsigned decimal),\0A  t(binary), f(float), a(address), i(instruction), c(char) and s(string).\0A\00", align 1
@.str.6 = private unnamed_addr constant [322 x i8] c"Size letters are b(byte), h(halfword), w(word), g(giant, 8 bytes).\0AThe specified number of objects of the specified size are printed\0Aaccording to the format.\0A\0ADefaults for format and size letters are those previously used.\0ADefault count is 1.  Default address is following last thing printed\0Awith this command or \22print\22.\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@display_info = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"Expressions to display when program stops, with code numbers.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"undisplay\00", align 1
@undisplay_command = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [299 x i8] c"Cancel some expressions to be displayed when program stops.\0AArguments are the code numbers of the expressions to stop displaying.\0ANo argument means cancel all automatic-display expressions.\0A\22delete display\22 has the same effect as this command.\0ADo \22info display\22 to see current list of code numbers.\00", align 1
@cmdlist = common dso_local global i32 0, align 4
@display_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [425 x i8] c"Print value of expression EXP each time the program stops.\0A/FMT may be used before EXP as in the \22print\22 command.\0A/FMT \22i\22 or \22s\22 or including a size-letter is allowed,\0Aas in the \22x\22 command, and then EXP is used to get the address to examine\0Aand examining is done as in the \22x\22 command.\0A\0AWith no argument, display all currently requested auto-display expressions.\0AUse \22undisplay\22 to cancel display requests previously made.\00", align 1
@enable_display = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [247 x i8] c"Enable some expressions to be displayed when program stops.\0AArguments are the code numbers of the expressions to resume displaying.\0ANo argument means enable all automatic-display expressions.\0ADo \22info display\22 to see current list of code numbers.\00", align 1
@enablelist = common dso_local global i32 0, align 4
@disable_display_command = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [247 x i8] c"Disable some expressions to be displayed when program stops.\0AArguments are the code numbers of the expressions to stop displaying.\0ANo argument means disable all automatic-display expressions.\0ADo \22info display\22 to see current list of code numbers.\00", align 1
@disablelist = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [245 x i8] c"Cancel some expressions to be displayed when program stops.\0AArguments are the code numbers of the expressions to stop displaying.\0ANo argument means cancel all automatic-display expressions.\0ADo \22info display\22 to see current list of code numbers.\00", align 1
@deletelist = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@printf_command = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [121 x i8] c"printf \22printf format string\22, arg1, arg2, arg3, ..., argn\0AThis is useful for formatted output in user-defined commands.\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@output_command = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [110 x i8] c"Like \22print\22 but don't put in value history and don't print newline.\0AThis is useful in user-defined commands.\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@set_command = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [365 x i8] c"Evaluate expression EXP and assign result to variable VAR, using assignment\0Asyntax appropriate for the current language (VAR = EXP or VAR := EXP for\0Aexample).  VAR may be a debugger \22convenience\22 variable (names starting\0Awith $), a register (a few standard names starting with $), or an actual\0Avariable in the program being debugged.  EXP is any valid expression.\0A\00", align 1
@.str.21 = private unnamed_addr constant [210 x i8] c"Use \22set variable\22 for variables with names identical to set subcommands.\0A\0AWith a subcommand, this command modifies parts of the gdb environment.\0AYou can see these environment settings with the \22show\22 command.\00", align 1
@setlist = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"set \00", align 1
@dbx_commands = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"assign\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@call_command = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [204 x i8] c"Call a function in the program.\0AThe argument is the function name and arguments, in the notation of the\0Acurrent working language.  The result is printed and saved in the value\0Ahistory, if it is not void.\00", align 1
@location_completer = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.27 = private unnamed_addr constant [413 x i8] c"Evaluate expression EXP and assign result to variable VAR, using assignment\0Asyntax appropriate for the current language (VAR = EXP or VAR := EXP for\0Aexample).  VAR may be a debugger \22convenience\22 variable (names starting\0Awith $), a register (a few standard names starting with $), or an actual\0Avariable in the program being debugged.  EXP is any valid expression.\0AThis may usually be abbreviated to simply \22set\22.\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@print_command = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [375 x i8] c"Print value of expression EXP.\0AVariables accessible are those of the lexical environment of the selected\0Astack frame, plus all those whose scope is global or an entire file.\0A\0A$NUM gets previous value number NUM.  $ and $$ are the last two values.\0A$$NUM refers to NUM'th value back from the last one.\0ANames starting with $ refer to registers (with the values they would have\0A\00", align 1
@.str.30 = private unnamed_addr constant [266 x i8] c"if the program were to return to the stack frame now selected, restoring\0Aall registers saved by frames farther in) or else to debugger\0A\22convenience\22 variables (any such name not a known register).\0AUse assignment expressions to give values to convenience variables.\0A\00", align 1
@.str.31 = private unnamed_addr constant [362 x i8] c"\0A{TYPE}ADREXP refers to a datum of data type TYPE, located at address ADREXP.\0A@ is a binary operator for treating consecutive data objects\0Aanywhere in memory as an array.  FOO@NUM gives an array whose first\0Aelement is FOO, whose second element is stored in the space following\0Awhere FOO is stored, etc.  FOO must be an expression whose value\0Aresides in memory.\0A\00", align 1
@.str.32 = private unnamed_addr constant [108 x i8] c"\0AEXP may be preceded with /FMT, where FMT is a format letter\0Abut no count or size letter (see \22x\22 command).\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@inspect_command = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [122 x i8] c"Same as \22print\22 command, except that if you are running in the epoch\0Aenvironment, the value is printed in its own window.\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"max-symbolic-offset\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_uinteger = common dso_local global i32 0, align 4
@max_symbolic_offset = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [67 x i8] c"Set the largest offset that will be printed in <symbol+1234> form.\00", align 1
@setprintlist = common dso_local global i32 0, align 4
@showprintlist = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [16 x i8] c"symbol-filename\00", align 1
@var_boolean = common dso_local global i32 0, align 4
@print_symbol_filename = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [63 x i8] c"Set printing of source filename and line number with <symbol>.\00", align 1
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [15 x i8] c"examine_i_type\00", align 1
@examine_i_type = common dso_local global i8* null, align 8
@.str.41 = private unnamed_addr constant [15 x i8] c"examine_b_type\00", align 1
@examine_b_type = common dso_local global i8* null, align 8
@.str.42 = private unnamed_addr constant [15 x i8] c"examine_h_type\00", align 1
@examine_h_type = common dso_local global i8* null, align 8
@.str.43 = private unnamed_addr constant [15 x i8] c"examine_w_type\00", align 1
@examine_w_type = common dso_local global i8* null, align 8
@.str.44 = private unnamed_addr constant [15 x i8] c"examine_g_type\00", align 1
@examine_g_type = common dso_local global i8* null, align 8
@whereis_command = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_printcmd() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  store i32 -1, i32* @current_display_number, align 4
  %2 = load i32, i32* @address_info, align 4
  %3 = call i32 @add_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @sym_info, align 4
  %5 = call i32 @add_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0))
  %6 = load i32, i32* @class_vars, align 4
  %7 = load i32, i32* @x_command, align 4
  %8 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([322 x i8], [322 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %9 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %6, i32 %7, i8* %8)
  %10 = load i32, i32* @display_info, align 4
  %11 = call i32 @add_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %10, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %12 = load i32, i32* @class_vars, align 4
  %13 = load i32, i32* @undisplay_command, align 4
  %14 = call i32 @add_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %12, i32 %13, i8* getelementptr inbounds ([299 x i8], [299 x i8]* @.str.10, i64 0, i64 0), i32* @cmdlist)
  %15 = load i32, i32* @class_vars, align 4
  %16 = load i32, i32* @display_command, align 4
  %17 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([425 x i8], [425 x i8]* @.str.11, i64 0, i64 0))
  %18 = load i32, i32* @class_vars, align 4
  %19 = load i32, i32* @enable_display, align 4
  %20 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.12, i64 0, i64 0), i32* @enablelist)
  %21 = load i32, i32* @class_vars, align 4
  %22 = load i32, i32* @disable_display_command, align 4
  %23 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.13, i64 0, i64 0), i32* @disablelist)
  %24 = load i32, i32* @class_vars, align 4
  %25 = load i32, i32* @undisplay_command, align 4
  %26 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %24, i32 %25, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.14, i64 0, i64 0), i32* @deletelist)
  %27 = load i32, i32* @class_vars, align 4
  %28 = load i32, i32* @printf_command, align 4
  %29 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %27, i32 %28, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.16, i64 0, i64 0))
  %30 = load i32, i32* @class_vars, align 4
  %31 = load i32, i32* @output_command, align 4
  %32 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %30, i32 %31, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.18, i64 0, i64 0))
  %33 = load i32, i32* @class_vars, align 4
  %34 = load i32, i32* @set_command, align 4
  %35 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.21, i64 0, i64 0), i8* null)
  %36 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %33, i32 %34, i8* %35, i32* @setlist, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 1, i32* @cmdlist)
  %37 = load i64, i64* @dbx_commands, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %0
  %40 = load i32, i32* @class_vars, align 4
  %41 = load i32, i32* @set_command, align 4
  %42 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.21, i64 0, i64 0), i8* null)
  %43 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %40, i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %0
  %45 = load i32, i32* @class_vars, align 4
  %46 = load i32, i32* @call_command, align 4
  %47 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %45, i32 %46, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.25, i64 0, i64 0))
  store %struct.cmd_list_element* %47, %struct.cmd_list_element** %1, align 8
  %48 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %49 = load i32, i32* @location_completer, align 4
  %50 = call i32 @set_cmd_completer(%struct.cmd_list_element* %48, i32 %49)
  %51 = load i32, i32* @class_vars, align 4
  %52 = load i32, i32* @set_command, align 4
  %53 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %51, i32 %52, i8* getelementptr inbounds ([413 x i8], [413 x i8]* @.str.27, i64 0, i64 0), i32* @setlist)
  %54 = load i32, i32* @class_vars, align 4
  %55 = load i32, i32* @print_command, align 4
  %56 = call i8* (i8*, i8*, i8*, ...) @concat(i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.32, i64 0, i64 0), i8* null)
  %57 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 %54, i32 %55, i8* %56)
  store %struct.cmd_list_element* %57, %struct.cmd_list_element** %1, align 8
  %58 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %59 = load i32, i32* @location_completer, align 4
  %60 = call i32 @set_cmd_completer(%struct.cmd_list_element* %58, i32 %59)
  %61 = load i32, i32* @class_vars, align 4
  %62 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 %61, i32 1)
  %63 = load i32, i32* @class_vars, align 4
  %64 = load i32, i32* @inspect_command, align 4
  %65 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32 %63, i32 %64, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.35, i64 0, i64 0))
  store %struct.cmd_list_element* %65, %struct.cmd_list_element** %1, align 8
  %66 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %67 = load i32, i32* @location_completer, align 4
  %68 = call i32 @set_cmd_completer(%struct.cmd_list_element* %66, i32 %67)
  %69 = load i32, i32* @no_class, align 4
  %70 = load i32, i32* @var_uinteger, align 4
  %71 = call i32 @add_set_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 %69, i32 %70, i8* bitcast (i32* @max_symbolic_offset to i8*), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.37, i64 0, i64 0), i32* @setprintlist)
  %72 = call i32 @add_show_from_set(i32 %71, i32* @showprintlist)
  %73 = load i32, i32* @no_class, align 4
  %74 = load i32, i32* @var_boolean, align 4
  %75 = call i32 @add_set_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i32 %73, i32 %74, i8* bitcast (i32* @print_symbol_filename to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.39, i64 0, i64 0), i32* @setprintlist)
  %76 = call i32 @add_show_from_set(i32 %75, i32* @showprintlist)
  %77 = load i32, i32* @TYPE_CODE_INT, align 4
  %78 = call i8* @init_type(i32 %77, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32* null)
  store i8* %78, i8** @examine_i_type, align 8
  %79 = load i32, i32* @TYPE_CODE_INT, align 4
  %80 = call i8* @init_type(i32 %79, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i32* null)
  store i8* %80, i8** @examine_b_type, align 8
  %81 = load i32, i32* @TYPE_CODE_INT, align 4
  %82 = call i8* @init_type(i32 %81, i32 2, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32* null)
  store i8* %82, i8** @examine_h_type, align 8
  %83 = load i32, i32* @TYPE_CODE_INT, align 4
  %84 = call i8* @init_type(i32 %83, i32 4, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i32* null)
  store i8* %84, i8** @examine_w_type, align 8
  %85 = load i32, i32* @TYPE_CODE_INT, align 4
  %86 = call i8* @init_type(i32 %85, i32 8, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i32* null)
  store i8* %86, i8** @examine_g_type, align 8
  ret void
}

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local %struct.cmd_list_element* @add_com(i8*, i32, i32, i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*, ...) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i8* @init_type(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
