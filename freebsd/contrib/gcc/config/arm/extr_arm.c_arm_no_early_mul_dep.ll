; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_no_early_mul_dep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_no_early_mul_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXEC = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_no_early_mul_dep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @PATTERN(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PATTERN(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @COND_EXEC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @COND_EXEC_CODE(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @PARALLEL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @XVECEXP(i32 %24, i32 0, i32 0)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @GET_CODE(i32 %29)
  %31 = load i64, i64* @COND_EXEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @COND_EXEC_CODE(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @PARALLEL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @XVECEXP(i32 %42, i32 0, i32 0)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @XEXP(i32 %45, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @PLUS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @XEXP(i32 %53, i32 0)
  %55 = call i32 @reg_overlap_mentioned_p(i32 %52, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %51, %44
  %59 = phi i1 [ false, %44 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @COND_EXEC_CODE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @reg_overlap_mentioned_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
