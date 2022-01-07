; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_eliminate_constant_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_eliminate_constant_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @eliminate_constant_term(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @PLUS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %3, align 8
  br label %84

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @XEXP(i64 %16, i32 1)
  %18 = call i64 @GET_CODE(i64 %17)
  %19 = load i64, i64* @CONST_INT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load i64, i64* @PLUS, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @GET_MODE(i64 %23)
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @XEXP(i64 %27, i32 1)
  %29 = call i64 @simplify_binary_operation(i64 %22, i32 %24, i64 %26, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = icmp ne i64 0, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = load i64, i64* @CONST_INT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %5, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @XEXP(i64 %39, i32 0)
  %41 = load i64*, i64** %5, align 8
  %42 = call i64 @eliminate_constant_term(i64 %40, i64* %41)
  store i64 %42, i64* %3, align 8
  br label %84

43:                                               ; preds = %31, %21, %15
  %44 = load i64, i64* @const0_rtx, align 8
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @XEXP(i64 %45, i32 0)
  %47 = call i64 @eliminate_constant_term(i64 %46, i64* %8)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @XEXP(i64 %48, i32 1)
  %50 = call i64 @eliminate_constant_term(i64 %49, i64* %8)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @XEXP(i64 %52, i32 1)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @XEXP(i64 %57, i32 0)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %55, %43
  %61 = load i64, i64* @PLUS, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @GET_MODE(i64 %62)
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @simplify_binary_operation(i64 %61, i32 %63, i64 %65, i64 %66)
  store i64 %67, i64* %8, align 8
  %68 = icmp ne i64 0, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @GET_CODE(i64 %70)
  %72 = load i64, i64* @CONST_INT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @GET_MODE(i64 %77)
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @gen_rtx_PLUS(i32 %78, i64 %79, i64 %80)
  store i64 %81, i64* %3, align 8
  br label %84

82:                                               ; preds = %69, %60, %55
  %83 = load i64, i64* %4, align 8
  store i64 %83, i64* %3, align 8
  br label %84

84:                                               ; preds = %82, %74, %36, %13
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @simplify_binary_operation(i64, i32, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
