; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c__initialize_tasks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c__initialize_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@_initialize_tasks.task_cmd_list = internal global %struct.cmd_list_element* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@info_tasks_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [122 x i8] c"Without argument: list all known Ada tasks, with status information.\0Ainfo tasks n: print detailed information of task n.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@class_run = common dso_local global i32 0, align 4
@task_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"Use this command to switch between tasks.\0A The new task ID must be currently known.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"task \00", align 1
@cmdlist = external dso_local global %struct.cmd_list_element*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_tasks() #0 {
  %1 = load i32, i32* @info_tasks_command, align 4
  %2 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* @class_run, align 4
  %4 = load i32, i32* @task_command, align 4
  %5 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %3, i32 %4, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_list_element** @_initialize_tasks.task_cmd_list, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1, %struct.cmd_list_element** @cmdlist)
  ret void
}

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
