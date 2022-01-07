; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_get_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_get_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*)* @noce_get_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @noce_get_condition(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @any_condjump_p(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @NULL_RTX, align 8
  store i64 %14, i64* %3, align 8
  br label %73

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @pc_set(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @SET_SRC(i64 %18)
  %20 = call i64 @XEXP(i64 %19, i32 2)
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @LABEL_REF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @SET_SRC(i64 %25)
  %27 = call i64 @XEXP(i64 %26, i32 2)
  %28 = call i64 @XEXP(i64 %27, i32 0)
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @JUMP_LABEL(i64 %29)
  %31 = icmp eq i64 %28, %30
  br label %32

32:                                               ; preds = %24, %15
  %33 = phi i1 [ false, %15 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @SET_SRC(i64 %35)
  %37 = call i64 @XEXP(i64 %36, i32 0)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @XEXP(i64 %38, i32 0)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @REG_P(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %32
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @GET_MODE(i64 %44)
  %46 = call i64 @GET_MODE_CLASS(i32 %45)
  %47 = load i64, i64* @MODE_INT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = call i32 @reverse_condition(i64 %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @GET_MODE(i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @XEXP(i64 %61, i32 1)
  %63 = call i64 @gen_rtx_fmt_ee(i32 %57, i32 %59, i64 %60, i64 %62)
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %54, %49
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  br label %73

66:                                               ; preds = %43, %32
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* @NULL_RTX, align 8
  %72 = call i64 @canonicalize_condition(i64 %67, i64 %68, i32 %69, i64* %70, i64 %71, i32 0, i32 1)
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %66, %64, %13
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local i32 @any_condjump_p(i64) #1

declare dso_local i64 @pc_set(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @JUMP_LABEL(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i32 @reverse_condition(i64) #1

declare dso_local i64 @canonicalize_condition(i64, i64, i32, i64*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
