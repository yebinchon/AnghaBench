; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_hard_regno_mode_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_hard_regno_mode_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_INT = common dso_local global i64 0, align 8
@UNITS_PER_FP_WORD = common dso_local global i64 0, align 8
@MODE_CC = common dso_local global i64 0, align 8
@PSImode = common dso_local global i32 0, align 4
@TARGET_SPE = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rs6000_hard_regno_mode_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_hard_regno_mode_ok(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @INT_REGNO_P(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @HARD_REGNO_NREGS(i32 %11, i32 %12)
  %14 = add nsw i32 %10, %13
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @INT_REGNO_P(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %97

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @FP_REGNO_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @SCALAR_FLOAT_MODE_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DECIMAL_FLOAT_MODE_P(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @HARD_REGNO_NREGS(i32 %31, i32 %32)
  %34 = add nsw i32 %30, %33
  %35 = sub nsw i32 %34, 1
  %36 = call i64 @FP_REGNO_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %29, %25, %21
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @GET_MODE_CLASS(i32 %39)
  %41 = load i64, i64* @MODE_INT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @GET_MODE_SIZE(i32 %44)
  %46 = load i64, i64* @UNITS_PER_FP_WORD, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br label %50

50:                                               ; preds = %48, %29
  %51 = phi i1 [ true, %29 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %97

53:                                               ; preds = %17
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @CR_REGNO_P(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @GET_MODE_CLASS(i32 %58)
  %60 = load i64, i64* @MODE_CC, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %97

63:                                               ; preds = %53
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @XER_REGNO_P(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PSImode, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %97

72:                                               ; preds = %63
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @ALTIVEC_REGNO_P(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ALTIVEC_VECTOR_MODE(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %97

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @SPE_SIMD_REGNO_P(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i64, i64* @TARGET_SPE, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @SPE_VECTOR_MODE(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %97

91:                                               ; preds = %86, %83, %79
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @GET_MODE_SIZE(i32 %92)
  %94 = load i64, i64* @UNITS_PER_WORD, align 8
  %95 = icmp sle i64 %93, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %90, %76, %67, %57, %50, %9
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @INT_REGNO_P(i32) #1

declare dso_local i32 @HARD_REGNO_NREGS(i32, i32) #1

declare dso_local i64 @FP_REGNO_P(i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @DECIMAL_FLOAT_MODE_P(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @CR_REGNO_P(i32) #1

declare dso_local i64 @XER_REGNO_P(i32) #1

declare dso_local i64 @ALTIVEC_REGNO_P(i32) #1

declare dso_local i32 @ALTIVEC_VECTOR_MODE(i32) #1

declare dso_local i64 @SPE_SIMD_REGNO_P(i32) #1

declare dso_local i64 @SPE_VECTOR_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
