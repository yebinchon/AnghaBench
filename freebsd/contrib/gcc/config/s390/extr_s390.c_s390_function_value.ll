; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_function_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_function_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_INT = common dso_local global i64 0, align 8
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_function_value(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @TYPE_UNSIGNED(i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @TYPE_MODE(i64 %13)
  %15 = call i32 @promote_mode(i64 %12, i32 %14, i32* %6, i32 1)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @GET_MODE_CLASS(i32 %17)
  %19 = load i64, i64* @MODE_INT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @SCALAR_FLOAT_MODE_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ true, %16 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @GET_MODE_SIZE(i32 %29)
  %31 = icmp sle i32 %30, 8
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @SCALAR_FLOAT_MODE_P(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @gen_rtx_REG(i32 %41, i32 16)
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %36, %25
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @gen_rtx_REG(i32 %44, i32 2)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @promote_mode(i64, i32, i32*, i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
