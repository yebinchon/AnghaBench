; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_secondary_memory_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_secondary_memory_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SSE2 = common dso_local global i32 0, align 4
@TARGET_INTER_UNIT_MOVES = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_secondary_memory_needed(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @MAYBE_FLOAT_CLASS_P(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @FLOAT_CLASS_P(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @MAYBE_FLOAT_CLASS_P(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @FLOAT_CLASS_P(i32 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @MAYBE_SSE_CLASS_P(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @SSE_CLASS_P(i32 %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @MAYBE_SSE_CLASS_P(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @SSE_CLASS_P(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @MAYBE_MMX_CLASS_P(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @MMX_CLASS_P(i32 %36)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @MAYBE_MMX_CLASS_P(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @MMX_CLASS_P(i32 %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39, %33, %27, %21, %15, %4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @gcc_assert(i32 %49)
  store i32 1, i32* %5, align 4
  br label %99

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @FLOAT_CLASS_P(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @FLOAT_CLASS_P(i32 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %99

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @MMX_CLASS_P(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @MMX_CLASS_P(i32 %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %99

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @SSE_CLASS_P(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @SSE_CLASS_P(i32 %68)
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = load i32, i32* @TARGET_SSE2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %99

75:                                               ; preds = %71
  %76 = load i32, i32* @TARGET_INTER_UNIT_MOVES, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @optimize_size, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %99

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @GET_MODE_SIZE(i32 %83)
  %85 = load i64, i64* @UNITS_PER_WORD, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %99

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @SFmode, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @DFmode, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %88
  store i32 1, i32* %5, align 4
  br label %99

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %65
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %96, %87, %81, %74, %64, %57, %45
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @MAYBE_FLOAT_CLASS_P(i32) #1

declare dso_local i64 @FLOAT_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_SSE_CLASS_P(i32) #1

declare dso_local i64 @SSE_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_MMX_CLASS_P(i32) #1

declare dso_local i64 @MMX_CLASS_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
