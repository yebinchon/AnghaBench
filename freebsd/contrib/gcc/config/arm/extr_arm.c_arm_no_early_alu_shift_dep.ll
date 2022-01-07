; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_no_early_alu_shift_dep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_no_early_alu_shift_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXEC = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_no_early_alu_shift_dep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @PATTERN(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @PATTERN(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @GET_CODE(i32 %12)
  %14 = load i64, i64* @COND_EXEC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @COND_EXEC_CODE(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @PARALLEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @XVECEXP(i32 %25, i32 0, i32 0)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @COND_EXEC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @COND_EXEC_CODE(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @GET_CODE(i32 %38)
  %40 = load i64, i64* @PARALLEL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @XVECEXP(i32 %43, i32 0, i32 0)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @XEXP(i32 %46, i32 1)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @XEXP(i32 %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @GET_CODE(i32 %50)
  %52 = load i64, i64* @REG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %45
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @reg_overlap_mentioned_p(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  ret i32 %62
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
