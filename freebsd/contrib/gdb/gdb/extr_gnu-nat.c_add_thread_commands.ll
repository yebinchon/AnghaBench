; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_add_thread_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_add_thread_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@no_class = common dso_local global i32 0, align 4
@set_thread_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Command prefix for setting thread properties.\00", align 1
@set_thread_cmd_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"set thread \00", align 1
@setlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@show_thread_cmd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Command prefix for setting default thread properties.\00", align 1
@set_thread_default_cmd_list = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"set thread default \00", align 1
@set_thread_default_cmd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Command prefix for showing thread properties.\00", align 1
@show_thread_cmd_list = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"show thread \00", align 1
@showlist = common dso_local global i32 0, align 4
@show_thread_default_cmd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"Command prefix for showing default thread properties.\00", align 1
@show_thread_default_cmd_list = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"show thread default \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@class_run = common dso_local global i32 0, align 4
@set_thread_pause_cmd = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [341 x i8] c"Set whether the current thread is suspended while gdb has control.\0AA value of \22on\22 takes effect immediately, otherwise nothing happens\0Auntil the next time the program is continued.  This property normally\0Ahas no effect because the whole task is suspended, however, that may\0Abe disabled with \22set task pause off\22.\0AThe default value is \22off\22.\00", align 1
@show_thread_pause_cmd = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [68 x i8] c"Show whether the current thread is suspended while gdb has control.\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@set_thread_run_cmd = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [50 x i8] c"Set whether the current thread is allowed to run.\00", align 1
@show_thread_run_cmd = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [51 x i8] c"Show whether the current thread is allowed to run.\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"detach-suspend-count\00", align 1
@set_thread_detach_sc_cmd = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [210 x i8] c"Set the suspend count will leave on the thread when detaching.\0ANote that this is relative to suspend count when gdb noticed the thread;\0Ause the `thread takeover-suspend-count' to force it to an absolute value.\00", align 1
@show_thread_detach_sc_cmd = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [211 x i8] c"Show the suspend count will leave on the thread when detaching.\0ANote that this is relative to suspend count when gdb noticed the thread;\0Ause the `thread takeover-suspend-count' to force it to an absolute value.\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"exception-port\00", align 1
@set_thread_exc_port_cmd = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [166 x i8] c"Set the thread exception port to which we forward exceptions.\0AThis overrides the task exception port.\0AThe argument should be the value of the send right in the task.\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"excp\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"exc-port\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"takeover-suspend-count\00", align 1
@thread_takeover_sc_cmd = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [193 x i8] c"Force the threads absolute suspend-count to be gdb's.\0APrior to giving this command, gdb's thread suspend-counts are relative\0Ato the thread's initial suspend-count when gdb notices the threads.\00", align 1
@thread_cmd_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_thread_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_thread_commands() #0 {
  %1 = load i32, i32* @no_class, align 4
  %2 = load i32, i32* @set_thread_cmd, align 4
  %3 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* @set_thread_cmd_list, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @setlist)
  %4 = load i32, i32* @no_class, align 4
  %5 = load i32, i32* @show_thread_cmd, align 4
  %6 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %4, i32 %5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32* @set_thread_default_cmd_list, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* @set_thread_cmd_list)
  %7 = load i32, i32* @no_class, align 4
  %8 = load i32, i32* @set_thread_default_cmd, align 4
  %9 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32* @show_thread_cmd_list, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* @showlist)
  %10 = load i32, i32* @no_class, align 4
  %11 = load i32, i32* @show_thread_default_cmd, align 4
  %12 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %10, i32 %11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32* @show_thread_default_cmd_list, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* @show_thread_cmd_list)
  %13 = load i32, i32* @class_run, align 4
  %14 = load i32, i32* @set_thread_pause_cmd, align 4
  %15 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %13, i32 %14, i8* getelementptr inbounds ([341 x i8], [341 x i8]* @.str.11, i64 0, i64 0), i32* @set_thread_cmd_list)
  %16 = load i32, i32* @no_class, align 4
  %17 = load i32, i32* @show_thread_pause_cmd, align 4
  %18 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %16, i32 %17, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i32* @show_thread_cmd_list)
  %19 = load i32, i32* @class_run, align 4
  %20 = load i32, i32* @set_thread_run_cmd, align 4
  %21 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %19, i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32* @set_thread_cmd_list)
  %22 = load i32, i32* @no_class, align 4
  %23 = load i32, i32* @show_thread_run_cmd, align 4
  %24 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %22, i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32* @show_thread_cmd_list)
  %25 = load i32, i32* @class_run, align 4
  %26 = load i32, i32* @set_thread_detach_sc_cmd, align 4
  %27 = call i32 @add_cmd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %25, i32 %26, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.17, i64 0, i64 0), i32* @set_thread_cmd_list)
  %28 = load i32, i32* @no_class, align 4
  %29 = load i32, i32* @show_thread_detach_sc_cmd, align 4
  %30 = call i32 @add_cmd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %28, i32 %29, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.18, i64 0, i64 0), i32* @show_thread_cmd_list)
  %31 = load i32, i32* @no_class, align 4
  %32 = load i32, i32* @set_thread_exc_port_cmd, align 4
  %33 = call i32 @add_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %31, i32 %32, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.20, i64 0, i64 0), i32* @set_thread_cmd_list)
  %34 = load i32, i32* @no_class, align 4
  %35 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %34, i32 1, i32* @set_thread_cmd_list)
  %36 = load i32, i32* @no_class, align 4
  %37 = call i32 @add_alias_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %36, i32 1, i32* @set_thread_cmd_list)
  %38 = load i32, i32* @no_class, align 4
  %39 = load i32, i32* @thread_takeover_sc_cmd, align 4
  %40 = call i32 @add_cmd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %38, i32 %39, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.24, i64 0, i64 0), i32* @thread_cmd_list)
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_alias_cmd(i8*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
