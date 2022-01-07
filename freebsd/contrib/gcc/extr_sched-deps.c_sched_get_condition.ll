; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_sched_get_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_sched_get_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXEC = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @sched_get_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sched_get_condition(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @PATTERN(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %67

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @GET_CODE(i64 %14)
  %16 = load i64, i64* @COND_EXEC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @COND_EXEC_TEST(i64 %19)
  store i64 %20, i64* %2, align 8
  br label %67

21:                                               ; preds = %13
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @any_condjump_p(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @onlyjump_p(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %21
  store i64 0, i64* %2, align 8
  br label %67

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @pc_set(i64 %31)
  %33 = call i64 @SET_SRC(i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @XEXP(i64 %34, i32 2)
  %36 = load i64, i64* @pc_rtx, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @XEXP(i64 %39, i32 0)
  store i64 %40, i64* %2, align 8
  br label %67

41:                                               ; preds = %30
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @XEXP(i64 %42, i32 1)
  %44 = load i64, i64* @pc_rtx, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @XEXP(i64 %47, i32 0)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @reversed_comparison_code(i64 %49, i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @UNKNOWN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i64 0, i64* %2, align 8
  br label %67

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @GET_MODE(i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @XEXP(i64 %60, i32 0)
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @XEXP(i64 %62, i32 1)
  %64 = call i64 @gen_rtx_fmt_ee(i32 %57, i32 %59, i64 %61, i64 %63)
  store i64 %64, i64* %2, align 8
  br label %67

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65
  store i64 0, i64* %2, align 8
  br label %67

67:                                               ; preds = %66, %56, %55, %38, %29, %18, %12
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @COND_EXEC_TEST(i64) #1

declare dso_local i32 @any_condjump_p(i64) #1

declare dso_local i32 @onlyjump_p(i64) #1

declare dso_local i64 @SET_SRC(i32) #1

declare dso_local i32 @pc_set(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @reversed_comparison_code(i64, i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
