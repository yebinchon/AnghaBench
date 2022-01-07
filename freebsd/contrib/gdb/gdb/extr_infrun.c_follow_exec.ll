; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_follow_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_follow_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@may_follow_exec = common dso_local global i32 0, align 4
@step_resume_breakpoint = common dso_local global i32* null, align 8
@step_range_start = common dso_local global i64 0, align 8
@step_range_end = common dso_local global i64 0, align 8
@through_sigtramp_breakpoint = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Executing new program: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Could find run target to save before following exec\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @follow_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @follow_exec(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.target_ops*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @may_follow_exec, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = call i32 (...) @update_breakpoints_after_exec()
  store i32* null, i32** @step_resume_breakpoint, align 8
  store i64 0, i64* @step_range_start, align 8
  store i64 0, i64* @step_range_end, align 8
  store i32* null, i32** @through_sigtramp_breakpoint, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call %struct.target_ops* (...) @find_run_target()
  store %struct.target_ops* %15, %struct.target_ops** %6, align 8
  %16 = load %struct.target_ops*, %struct.target_ops** %6, align 8
  %17 = icmp eq %struct.target_ops* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* @gdb_stdout, align 4
  %22 = call i32 @gdb_flush(i32 %21)
  %23 = call i32 (...) @target_mourn_inferior()
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pid_to_ptid(i32 %24)
  store i32 %25, i32* @inferior_ptid, align 4
  %26 = load %struct.target_ops*, %struct.target_ops** %6, align 8
  %27 = call i32 @push_target(%struct.target_ops* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @exec_file_attach(i8* %28, i32 0)
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @symbol_file_add_main(i8* %30, i32 0)
  %32 = call i32 (...) @insert_breakpoints()
  br label %33

33:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @update_breakpoints_after_exec(...) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*) #1

declare dso_local %struct.target_ops* @find_run_target(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @push_target(%struct.target_ops*) #1

declare dso_local i32 @exec_file_attach(i8*, i32) #1

declare dso_local i32 @symbol_file_add_main(i8*, i32) #1

declare dso_local i32 @insert_breakpoints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
