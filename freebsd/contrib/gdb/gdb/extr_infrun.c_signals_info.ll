; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_signals_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_signals_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SIGNAL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TARGET_SIGNAL_FIRST = common dso_local global i32 0, align 4
@TARGET_SIGNAL_LAST = common dso_local global i64 0, align 8
@QUIT = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"\0AUse the \22handle\22 command to change these tables.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @signals_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signals_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @sig_print_header()
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @target_signal_from_name(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TARGET_SIGNAL_UNKNOWN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @parse_and_eval_long(i8* %16)
  %18 = call i32 @target_signal_from_command(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sig_print_info(i32 %20)
  br label %52

22:                                               ; preds = %2
  %23 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @TARGET_SIGNAL_FIRST, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %47, %22
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* @TARGET_SIGNAL_LAST, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load i32, i32* @QUIT, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TARGET_SIGNAL_UNKNOWN, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @sig_print_info(i32 %44)
  br label %46

46:                                               ; preds = %43, %39, %35, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %25

50:                                               ; preds = %25
  %51 = call i32 @printf_filtered(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %19
  ret void
}

declare dso_local i32 @sig_print_header(...) #1

declare dso_local i32 @target_signal_from_name(i8*) #1

declare dso_local i32 @target_signal_from_command(i32) #1

declare dso_local i32 @parse_and_eval_long(i8*) #1

declare dso_local i32 @sig_print_info(i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
