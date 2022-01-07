; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_arg_regno_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_arg_regno_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i32 0, align 4
@TARGET_MACHO = common dso_local global i64 0, align 8
@REGPARM_MAX = common dso_local global i32 0, align 4
@TARGET_SSE = common dso_local global i64 0, align 8
@fixed_regs = common dso_local global i32* null, align 8
@TARGET_MMX = common dso_local global i64 0, align 8
@FIRST_MMX_REG = common dso_local global i32 0, align 4
@MMX_REGPARM_MAX = common dso_local global i32 0, align 4
@FIRST_SSE_REG = common dso_local global i32 0, align 4
@SSE_REGPARM_MAX = common dso_local global i32 0, align 4
@x86_64_int_parameter_registers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_function_arg_regno_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @TARGET_64BIT, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %69, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @TARGET_MACHO, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @REGPARM_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @TARGET_SSE, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @SSE_REGNO_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32*, i32** @fixed_regs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %17, %14
  %30 = phi i1 [ false, %17 ], [ false, %14 ], [ %28, %21 ]
  br label %31

31:                                               ; preds = %29, %10
  %32 = phi i1 [ true, %10 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %7
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @REGPARM_MAX, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %66, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @TARGET_MMX, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @MMX_REGNO_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @FIRST_MMX_REG, align 4
  %48 = load i32, i32* @MMX_REGPARM_MAX, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %66, label %51

51:                                               ; preds = %45, %41, %38
  %52 = load i64, i64* @TARGET_SSE, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @SSE_REGNO_P(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @FIRST_SSE_REG, align 4
  %61 = load i32, i32* @SSE_REGPARM_MAX, align 4
  %62 = add nsw i32 %60, %61
  %63 = icmp slt i32 %59, %62
  br label %64

64:                                               ; preds = %58, %54, %51
  %65 = phi i1 [ false, %54 ], [ false, %51 ], [ %63, %58 ]
  br label %66

66:                                               ; preds = %64, %45, %34
  %67 = phi i1 [ true, %45 ], [ true, %34 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %2, align 4
  br label %119

69:                                               ; preds = %1
  %70 = load i64, i64* @TARGET_MACHO, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @SSE_REGNO_P(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64, i64* @TARGET_SSE, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %119

80:                                               ; preds = %76, %72
  br label %96

81:                                               ; preds = %69
  %82 = load i64, i64* @TARGET_SSE, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = call i64 @SSE_REGNO_P(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @FIRST_SSE_REG, align 4
  %91 = load i32, i32* @SSE_REGPARM_MAX, align 4
  %92 = add nsw i32 %90, %91
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 1, i32* %2, align 4
  br label %119

95:                                               ; preds = %88, %84, %81
  br label %96

96:                                               ; preds = %95, %80
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i32 1, i32* %2, align 4
  br label %119

100:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @REGPARM_MAX, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = load i32*, i32** @x86_64_int_parameter_registers, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 1, i32* %2, align 4
  br label %119

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %101

118:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %113, %99, %94, %79, %66, %31
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @SSE_REGNO_P(i32) #1

declare dso_local i64 @MMX_REGNO_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
