; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_value_regno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_value_regno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i32 0, align 4
@TARGET_MMX = common dso_local global i64 0, align 8
@FIRST_MMX_REG = common dso_local global i32 0, align 4
@TImode = common dso_local global i32 0, align 4
@TARGET_SSE = common dso_local global i64 0, align 8
@FIRST_SSE_REG = common dso_local global i32 0, align 4
@TARGET_FLOAT_RETURNS_IN_80387 = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@FIRST_FLOAT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @ix86_value_regno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_value_regno(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @TARGET_64BIT, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @VECTOR_MODE_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @GET_MODE_SIZE(i32 %18)
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i64, i64* @TARGET_MMX, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @FIRST_MMX_REG, align 4
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  store i32 %28, i32* %4, align 4
  br label %98

29:                                               ; preds = %17, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TImode, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @VECTOR_MODE_P(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @GET_MODE_SIZE(i32 %38)
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %49

41:                                               ; preds = %37, %29
  %42 = load i64, i64* @TARGET_SSE, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @FIRST_SSE_REG, align 4
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %4, align 4
  br label %98

49:                                               ; preds = %37, %33
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @DECIMAL_FLOAT_MODE_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %98

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @SCALAR_FLOAT_MODE_P(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @TARGET_FLOAT_RETURNS_IN_80387, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %54
  store i32 0, i32* %4, align 4
  br label %98

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SFmode, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DFmode, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %72, %68
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @ix86_function_sseregparm(i64 %77, i64 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @SFmode, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @DFmode, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %82
  %94 = load i32, i32* @FIRST_SSE_REG, align 4
  store i32 %94, i32* %4, align 4
  br label %98

95:                                               ; preds = %89, %86
  br label %96

96:                                               ; preds = %95, %72, %65
  %97 = load i32, i32* @FIRST_FLOAT_REG, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %93, %61, %53, %47, %27
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @DECIMAL_FLOAT_MODE_P(i32) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @ix86_function_sseregparm(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
