; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_Backtrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_Backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32 }

@_URC_NO_REASON = common dso_local global i64 0, align 8
@_URC_END_OF_STACK = common dso_local global i64 0, align 8
@_URC_FATAL_PHASE1_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_Unwind_Backtrace(i64 (%struct._Unwind_Context*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64 (%struct._Unwind_Context*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._Unwind_Context, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 (%struct._Unwind_Context*, i8*)* %0, i64 (%struct._Unwind_Context*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i32 @uw_init_context(%struct._Unwind_Context* %6)
  br label %10

10:                                               ; preds = %2, %34
  %11 = call i64 @uw_frame_state_for(%struct._Unwind_Context* %6, i32* %8)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @_URC_NO_REASON, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @_URC_END_OF_STACK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @_URC_FATAL_PHASE1_ERROR, align 8
  store i64 %20, i64* %3, align 8
  br label %38

21:                                               ; preds = %15, %10
  %22 = load i64 (%struct._Unwind_Context*, i8*)*, i64 (%struct._Unwind_Context*, i8*)** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 %22(%struct._Unwind_Context* %6, i8* %23)
  %25 = load i64, i64* @_URC_NO_REASON, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @_URC_FATAL_PHASE1_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %38

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @_URC_END_OF_STACK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %36

34:                                               ; preds = %29
  %35 = call i32 @uw_update_context(%struct._Unwind_Context* %6, i32* %8)
  br label %10

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %27, %19
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @uw_init_context(%struct._Unwind_Context*) #1

declare dso_local i64 @uw_frame_state_for(%struct._Unwind_Context*, i32*) #1

declare dso_local i32 @uw_update_context(%struct._Unwind_Context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
