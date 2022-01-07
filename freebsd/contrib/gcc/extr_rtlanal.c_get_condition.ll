; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_get_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_get_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_REF = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_condition(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @JUMP_P(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @any_condjump_p(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %4
  store i64 0, i64* %5, align 8
  br label %52

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @pc_set(i64 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @SET_SRC(i64 %24)
  %26 = call i64 @XEXP(i64 %25, i32 0)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @SET_SRC(i64 %27)
  %29 = call i64 @XEXP(i64 %28, i32 2)
  %30 = call i64 @GET_CODE(i64 %29)
  %31 = load i64, i64* @LABEL_REF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @SET_SRC(i64 %34)
  %36 = call i64 @XEXP(i64 %35, i32 2)
  %37 = call i64 @XEXP(i64 %36, i32 0)
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @JUMP_LABEL(i64 %38)
  %40 = icmp eq i64 %37, %39
  br label %41

41:                                               ; preds = %33, %21
  %42 = phi i1 [ false, %21 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* @NULL_RTX, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @canonicalize_condition(i64 %44, i64 %45, i32 %46, i64* %47, i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %41, %20
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i32 @JUMP_P(i64) #1

declare dso_local i32 @any_condjump_p(i64) #1

declare dso_local i64 @pc_set(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @JUMP_LABEL(i64) #1

declare dso_local i64 @canonicalize_condition(i64, i64, i32, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
