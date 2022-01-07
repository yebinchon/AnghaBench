; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_continue_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_continue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_NO_INFERIOR = common dso_local global i32 0, align 4
@event_loop_p = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Asynchronous execution not supported on this target.\00", align 1
@stop_bpstat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Not stopped at any breakpoint; argument ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Continuing.\0A\00", align 1
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @continue_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @ERROR_NO_INFERIOR, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @strip_bg_char(i8** %3)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i64, i64* @event_loop_p, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i64 (...) @target_can_async_p()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19, %16, %13
  %25 = load i64, i64* @event_loop_p, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = call i64 (...) @target_can_async_p()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @async_disable_stdin()
  br label %35

35:                                               ; preds = %33, %30, %27, %24
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load i32, i32* @stop_bpstat, align 4
  store i32 %39, i32* %6, align 4
  %40 = call i32 @bpstat_num(i32* %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @printf_filtered(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43, %38
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @parse_and_eval_long(i8* %54)
  %56 = sub nsw i64 %55, 1
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @set_ignore_count(i32 %53, i64 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i32 @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %52
  %64 = call i32 @bpstat_num(i32* %6)
  store i32 %64, i32* %7, align 4
  br label %49

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @printf_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = call i32 (...) @clear_proceed_status()
  %73 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %74 = call i32 @proceed(i32 -1, i32 %73, i32 0)
  ret void
}

declare dso_local i32 @strip_bg_char(i8**) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @async_disable_stdin(...) #1

declare dso_local i32 @bpstat_num(i32*) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @set_ignore_count(i32, i64, i32) #1

declare dso_local i64 @parse_and_eval_long(i8*) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
