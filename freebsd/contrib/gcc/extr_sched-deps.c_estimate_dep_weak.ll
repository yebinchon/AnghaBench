; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_estimate_dep_weak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_estimate_dep_weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_DEP_WEAK = common dso_local global i32 0, align 4
@NO_DEP_WEAK = common dso_local global i32 0, align 4
@UNCERTAIN_DEP_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @estimate_dep_weak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_dep_weak(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MIN_DEP_WEAK, align 4
  store i32 %12, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @XEXP(i64 %14, i32 0)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @XEXP(i64 %16, i32 0)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %13
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @REG_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @REG_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @REGNO(i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @REGNO(i64 %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %13
  %36 = load i32, i32* @MIN_DEP_WEAK, align 4
  store i32 %36, i32* %3, align 4
  br label %62

37:                                               ; preds = %29, %25, %21
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @REG_P(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @REG_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @REG_P(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @REG_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @NO_DEP_WEAK, align 4
  %55 = load i32, i32* @NO_DEP_WEAK, align 4
  %56 = load i32, i32* @UNCERTAIN_DEP_WEAK, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sdiv i32 %57, 2
  %59 = sub nsw i32 %54, %58
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %49, %45
  %61 = load i32, i32* @UNCERTAIN_DEP_WEAK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %53, %35, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
