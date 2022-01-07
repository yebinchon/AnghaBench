; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-logging.c__initialize_cli_logging.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-logging.c__initialize_cli_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@_initialize_cli_logging.set_logging_cmdlist = internal global %struct.cmd_list_element* null, align 8
@_initialize_cli_logging.show_logging_cmdlist = internal global %struct.cmd_list_element* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"logging\00", align 1
@class_support = common dso_local global i32 0, align 4
@set_logging_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Set logging options\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"set logging \00", align 1
@setlist = common dso_local global i32 0, align 4
@show_logging_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Show logging options\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"show logging \00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@logging_overwrite = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"Set whether logging overwrites or appends to the log file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Show whether logging overwrites or appends to the log file.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@logging_redirect = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [157 x i8] c"Set the logging output mode.\0AIf redirect is off, output will go to both the screen and the log file.\0AIf redirect is on, output will go only to the log file.\00", align 1
@.str.10 = private unnamed_addr constant [158 x i8] c"Show the logging output mode.\0AIf redirect is off, output will go to both the screen and the log file.\0AIf redirect is on, output will go only to the log file.\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@var_filename = common dso_local global i32 0, align 4
@logging_filename = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"Set the current logfile.\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Show the current logfile.\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@set_logging_on = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"Enable logging.\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@set_logging_off = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"Disable logging.\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"gdb.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_cli_logging() #0 {
  %1 = load i32, i32* @class_support, align 4
  %2 = load i32, i32* @set_logging_command, align 4
  %3 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.cmd_list_element** @_initialize_cli_logging.set_logging_cmdlist, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @setlist)
  %4 = load i32, i32* @class_support, align 4
  %5 = load i32, i32* @show_logging_command, align 4
  %6 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_list_element** @_initialize_cli_logging.show_logging_cmdlist, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* @showlist)
  %7 = load i32, i32* @class_support, align 4
  %8 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %7, i32* @logging_overwrite, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, %struct.cmd_list_element** @_initialize_cli_logging.set_logging_cmdlist, %struct.cmd_list_element** @_initialize_cli_logging.show_logging_cmdlist)
  %9 = load i32, i32* @class_support, align 4
  %10 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %9, i32* @logging_redirect, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* null, %struct.cmd_list_element** @_initialize_cli_logging.set_logging_cmdlist, %struct.cmd_list_element** @_initialize_cli_logging.show_logging_cmdlist)
  %11 = load i32, i32* @class_support, align 4
  %12 = load i32, i32* @var_filename, align 4
  %13 = call i32 @add_setshow_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %11, i32 %12, i32* @logging_filename, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null, %struct.cmd_list_element** @_initialize_cli_logging.set_logging_cmdlist, %struct.cmd_list_element** @_initialize_cli_logging.show_logging_cmdlist)
  %14 = load i32, i32* @class_support, align 4
  %15 = load i32, i32* @set_logging_on, align 4
  %16 = call i32 @add_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), %struct.cmd_list_element** @_initialize_cli_logging.set_logging_cmdlist)
  %17 = load i32, i32* @class_support, align 4
  %18 = load i32, i32* @set_logging_off, align 4
  %19 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %17, i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), %struct.cmd_list_element** @_initialize_cli_logging.set_logging_cmdlist)
  %20 = call i32 @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  store i32 %20, i32* @logging_filename, align 4
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, i32*) #1

declare dso_local i32 @add_setshow_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @add_setshow_cmd(i8*, i32, i32, i32*, i8*, i8*, i32*, i32*, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
