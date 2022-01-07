; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_cond_exec_get_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_cond_exec_get_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @cond_exec_get_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cond_exec_get_condition(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @any_condjump_p(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @pc_set(i64 %11)
  %13 = call i64 @SET_SRC(i32 %12)
  store i64 %13, i64* %4, align 8
  br label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @NULL_RTX, align 8
  store i64 %15, i64* %2, align 8
  br label %51

16:                                               ; preds = %10
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @XEXP(i64 %17, i32 0)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @XEXP(i64 %19, i32 2)
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @LABEL_REF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @XEXP(i64 %25, i32 2)
  %27 = call i64 @XEXP(i64 %26, i32 0)
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @JUMP_LABEL(i64 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @reversed_comparison_code(i64 %32, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @UNKNOWN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @NULL_RTX, align 8
  store i64 %39, i64* %2, align 8
  br label %51

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @GET_MODE(i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @XEXP(i64 %44, i32 0)
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @XEXP(i64 %46, i32 1)
  %48 = call i64 @gen_rtx_fmt_ee(i32 %41, i32 %43, i64 %45, i64 %47)
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %40, %24, %16
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %38, %14
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @any_condjump_p(i64) #1

declare dso_local i64 @SET_SRC(i32) #1

declare dso_local i32 @pc_set(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @JUMP_LABEL(i64) #1

declare dso_local i32 @reversed_comparison_code(i64, i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
