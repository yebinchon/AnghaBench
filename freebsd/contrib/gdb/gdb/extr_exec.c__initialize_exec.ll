; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c__initialize_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c__initialize_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@dbx_commands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@class_files = common dso_local global i32 0, align 4
@file_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [340 x i8] c"Use FILE as program to be debugged.\0AIt is read for its symbols, for getting the contents of pure memory,\0Aand it is the program executed when you use the `run' command.\0AIf FILE cannot be found as specified, your execution directory path\0A($PATH) is searched for a command of that name.\0ANo arg means to have no executable file and no symbols.\00", align 1
@cmdlist = common dso_local global i32 0, align 4
@filename_completer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"exec-file\00", align 1
@exec_file_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [203 x i8] c"Use FILE as program for getting contents of pure memory.\0AIf FILE cannot be found as specified, your execution directory path\0Ais searched for a command of that name.\0ANo arg means have no executable file.\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@set_section_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [346 x i8] c"Change the base address of section SECTION of the exec file to ADDR.\0AThis can be used if the exec file does not contain section addresses,\0A(such as in the a.out format), or when the addresses specified in the\0Afile itself are wrong.  Each section must be changed separately.  The\0A``info files'' command lists all the sections and their addresses.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@write_files = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Set writing into executable and core files.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@exec_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_exec() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = call i32 (...) @init_exec_ops()
  %3 = load i32, i32* @dbx_commands, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @class_files, align 4
  %7 = load i32, i32* @file_command, align 4
  %8 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i8* getelementptr inbounds ([340 x i8], [340 x i8]* @.str.1, i64 0, i64 0), i32* @cmdlist)
  store %struct.cmd_list_element* %8, %struct.cmd_list_element** %1, align 8
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %10 = load i32, i32* @filename_completer, align 4
  %11 = call i32 @set_cmd_completer(%struct.cmd_list_element* %9, i32 %10)
  br label %12

12:                                               ; preds = %5, %0
  %13 = load i32, i32* @class_files, align 4
  %14 = load i32, i32* @exec_file_command, align 4
  %15 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %14, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3, i64 0, i64 0), i32* @cmdlist)
  store %struct.cmd_list_element* %15, %struct.cmd_list_element** %1, align 8
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %17 = load i32, i32* @filename_completer, align 4
  %18 = call i32 @set_cmd_completer(%struct.cmd_list_element* %16, i32 %17)
  %19 = load i32, i32* @class_files, align 4
  %20 = load i32, i32* @set_section_command, align 4
  %21 = call i32 @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32 %20, i8* getelementptr inbounds ([346 x i8], [346 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32, i32* @class_support, align 4
  %23 = load i32, i32* @var_boolean, align 4
  %24 = call i32 @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %22, i32 %23, i8* bitcast (i32* @write_files to i8*), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32* @setlist)
  %25 = call i32 @add_show_from_set(i32 %24, i32* @showlist)
  %26 = call i32 @add_target(i32* @exec_ops)
  ret void
}

declare dso_local i32 @init_exec_ops(...) #1

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
