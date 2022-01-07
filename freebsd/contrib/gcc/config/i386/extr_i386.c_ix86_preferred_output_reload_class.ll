; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_preferred_output_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_preferred_output_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SSE_MATH = common dso_local global i64 0, align 8
@SSE_REGS = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@TARGET_80387 = common dso_local global i64 0, align 8
@FP_TOP_SSE_REGS = common dso_local global i32 0, align 4
@FP_TOP_REG = common dso_local global i32 0, align 4
@FP_SECOND_SSE_REGS = common dso_local global i32 0, align 4
@FP_SECOND_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_preferred_output_reload_class(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @GET_MODE(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @GET_MODE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* @TARGET_SSE_MATH, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @SSE_FLOAT_MODE_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @MAYBE_SSE_CLASS_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SSE_REGS, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @NO_REGS, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %3, align 4
  br label %58

27:                                               ; preds = %13, %2
  %28 = load i64, i64* @TARGET_80387, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @SCALAR_FLOAT_MODE_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @FP_TOP_SSE_REGS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @FP_TOP_REG, align 4
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FP_SECOND_SSE_REGS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @FP_SECOND_REG, align 4
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @FLOAT_CLASS_P(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @NO_REGS, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %30, %27
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %54, %44, %38, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @SSE_FLOAT_MODE_P(i32) #1

declare dso_local i64 @MAYBE_SSE_CLASS_P(i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @FLOAT_CLASS_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
