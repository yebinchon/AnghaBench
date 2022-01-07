; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_hard_regno_nregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_hard_regno_nregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_FP_WORD = common dso_local global i32 0, align 4
@TARGET_SPE = common dso_local global i64 0, align 8
@UNITS_PER_SPE_WORD = common dso_local global i32 0, align 4
@UNITS_PER_ALTIVEC_WORD = common dso_local global i32 0, align 4
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@SCmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_hard_regno_nregs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @FP_REGNO_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GET_MODE_SIZE(i32 %10)
  %12 = load i32, i32* @UNITS_PER_FP_WORD, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @UNITS_PER_FP_WORD, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @SPE_SIMD_REGNO_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i64, i64* @TARGET_SPE, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @SPE_VECTOR_MODE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @GET_MODE_SIZE(i32 %29)
  %31 = load i32, i32* @UNITS_PER_SPE_WORD, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @UNITS_PER_SPE_WORD, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %3, align 4
  br label %75

36:                                               ; preds = %24, %21, %17
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @ALTIVEC_REGNO_P(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @GET_MODE_SIZE(i32 %41)
  %43 = load i32, i32* @UNITS_PER_ALTIVEC_WORD, align 4
  %44 = add nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @UNITS_PER_ALTIVEC_WORD, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %3, align 4
  br label %75

48:                                               ; preds = %36
  %49 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @FLOAT_MODE_P(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SCmode, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @GET_MODE_SIZE(i32 %60)
  %62 = load i32, i32* @UNITS_PER_FP_WORD, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @UNITS_PER_FP_WORD, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %55, %51, %48
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @GET_MODE_SIZE(i32 %68)
  %70 = load i32, i32* @UNITS_PER_WORD, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @UNITS_PER_WORD, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %59, %40, %28, %9
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @FP_REGNO_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @SPE_SIMD_REGNO_P(i32) #1

declare dso_local i64 @SPE_VECTOR_MODE(i32) #1

declare dso_local i64 @ALTIVEC_REGNO_P(i32) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
