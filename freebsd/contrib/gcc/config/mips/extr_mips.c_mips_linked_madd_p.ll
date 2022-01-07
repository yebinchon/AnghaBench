; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_linked_madd_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_linked_madd_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@MULT = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_linked_madd_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @single_set(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @SET_SRC(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @GET_CODE(i64 %15)
  %17 = load i64, i64* @PLUS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @XEXP(i64 %20, i32 0)
  %22 = call i64 @GET_CODE(i64 %21)
  %23 = load i64, i64* @MULT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @XEXP(i64 %26, i32 1)
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @reg_set_p(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %51

32:                                               ; preds = %25, %19, %12
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @GET_CODE(i64 %33)
  %35 = load i64, i64* @MINUS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @XEXP(i64 %38, i32 1)
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @MULT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @XEXP(i64 %44, i32 0)
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @reg_set_p(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %43, %37, %32
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %31, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @reg_set_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
