; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_kill_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_kill_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"The program is not being run.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Kill the program being debugged? \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Not confirmed.\00", align 1
@target_has_stack = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"In %s,\0A\00", align 1
@target_longname = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"No selected stack frame.\0A\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kill_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @inferior_ptid, align 4
  %6 = load i32, i32* @null_ptid, align 4
  %7 = call i64 @ptid_equal(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = call i32 @query(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = call i32 (...) @target_kill()
  %18 = call i32 (...) @init_thread_list()
  %19 = load i64, i64* @target_has_stack, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* @target_longname, align 4
  %23 = call i32 @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** @deprecated_selected_frame, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @gdb_stdout, align 4
  %28 = call i32 @fputs_filtered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  br label %34

29:                                               ; preds = %21
  %30 = load i32*, i32** @deprecated_selected_frame, align 8
  %31 = load i32*, i32** @deprecated_selected_frame, align 8
  %32 = call i32 @frame_relative_level(i32* %31)
  %33 = call i32 @print_stack_frame(i32* %30, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %16
  ret void
}

declare dso_local i64 @ptid_equal(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @query(i8*) #1

declare dso_local i32 @target_kill(...) #1

declare dso_local i32 @init_thread_list(...) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @print_stack_frame(i32*, i32, i32) #1

declare dso_local i32 @frame_relative_level(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
