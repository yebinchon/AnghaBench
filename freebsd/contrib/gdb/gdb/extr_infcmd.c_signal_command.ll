; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_signal_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_signal_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_NO_INFERIOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"signal number\00", align 1
@TARGET_SIGNAL_UNKNOWN = common dso_local global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Continuing with no signal.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Continuing with signal %s.\0A\00", align 1
@stop_pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @signal_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @dont_repeat()
  %8 = load i32, i32* @ERROR_NO_INFERIOR, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @error_no_arg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @target_signal_from_name(i8* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TARGET_SIGNAL_UNKNOWN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @parse_and_eval_long(i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @TARGET_SIGNAL_0, align 4
  store i32 %25, i32* %5, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @target_signal_from_command(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %24
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @target_signal_to_name(i32 %40)
  %42 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %37
  br label %44

44:                                               ; preds = %43, %30
  %45 = call i32 (...) @clear_proceed_status()
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @stop_pc, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ -1, %49 ], [ %51, %50 ]
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @proceed(i32 %53, i32 %54, i32 0)
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i32 @target_signal_from_name(i8*) #1

declare dso_local i32 @parse_and_eval_long(i8*) #1

declare dso_local i32 @target_signal_from_command(i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @target_signal_to_name(i32) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
