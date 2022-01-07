; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c__initialize_inflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c__initialize_inflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@term_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Print inferior's saved terminal status.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@class_run = common dso_local global i32 0, align 4
@kill_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Kill execution of program being debugged.\00", align 1
@null_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@terminal_is_ours = common dso_local global i32 0, align 4
@_SC_JOB_CONTROL = common dso_local global i32 0, align 4
@job_control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_inflow() #0 {
  %1 = load i32, i32* @term_info, align 4
  %2 = call i32 @add_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* @class_run, align 4
  %4 = load i32, i32* @kill_command, align 4
  %5 = call i32 @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %3, i32 %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %6 = load i32, i32* @null_ptid, align 4
  store i32 %6, i32* @inferior_ptid, align 4
  store i32 1, i32* @terminal_is_ours, align 4
  ret void
}

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
