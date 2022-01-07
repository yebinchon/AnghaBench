; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_preferred_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_preferred_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_REGS = common dso_local global i32 0, align 4
@TARGET_SSE_MATH = common dso_local global i64 0, align 8
@TARGET_MIX_SSE_I387 = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@GENERAL_REGS = common dso_local global i32 0, align 4
@TARGET_80387 = common dso_local global i64 0, align 8
@FLOAT_SSE_REGS = common dso_local global i32 0, align 4
@FLOAT_REGS = common dso_local global i32 0, align 4
@FP_TOP_SSE_REGS = common dso_local global i32 0, align 4
@FP_TOP_REG = common dso_local global i32 0, align 4
@FP_SECOND_SSE_REGS = common dso_local global i32 0, align 4
@FP_SECOND_REG = common dso_local global i32 0, align 4
@FLOAT_INT_REGS = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@QImode = common dso_local global i64 0, align 8
@Q_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_preferred_reload_class(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @GET_MODE(i64 %7)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NO_REGS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @NO_REGS, align 4
  store i32 %14, i32* %3, align 4
  br label %154

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @CONST0_RTX(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %154

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @CONSTANT_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @MAYBE_MMX_CLASS_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @MAYBE_SSE_CLASS_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @NO_REGS, align 4
  store i32 %35, i32* %3, align 4
  br label %154

36:                                               ; preds = %30, %22
  %37 = load i64, i64* @TARGET_SSE_MATH, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, i32* @TARGET_MIX_SSE_I387, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @SSE_FLOAT_MODE_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @SSE_CLASS_P(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @NO_REGS, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %3, align 4
  br label %154

56:                                               ; preds = %42, %39, %36
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @CONST_DOUBLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @GET_MODE(i64 %62)
  %64 = load i64, i64* @VOIDmode, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @GENERAL_REGS, align 4
  %69 = call i64 @reg_class_subset_p(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %154

73:                                               ; preds = %66
  %74 = load i64, i64* @TARGET_80387, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %73
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @standard_80387_constant_p(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @FLOAT_SSE_REGS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @FLOAT_REGS, align 4
  store i32 %85, i32* %3, align 4
  br label %154

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @FP_TOP_SSE_REGS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @FP_TOP_REG, align 4
  store i32 %91, i32* %3, align 4
  br label %154

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @FP_SECOND_SSE_REGS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @FP_SECOND_REG, align 4
  store i32 %97, i32* %3, align 4
  br label %154

98:                                               ; preds = %92
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @FLOAT_INT_REGS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @FLOAT_REGS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %98
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %3, align 4
  br label %154

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %76, %73
  %110 = load i32, i32* @NO_REGS, align 4
  store i32 %110, i32* %3, align 4
  br label %154

111:                                              ; preds = %61, %56
  %112 = load i64, i64* %4, align 8
  %113 = call i64 @GET_CODE(i64 %112)
  %114 = load i64, i64* @PLUS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @GENERAL_REGS, align 4
  %119 = call i64 @reg_class_subset_p(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %5, align 4
  br label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @NO_REGS, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %3, align 4
  br label %154

127:                                              ; preds = %111
  %128 = load i64, i64* %4, align 8
  %129 = call i64 @GET_MODE(i64 %128)
  %130 = load i64, i64* @QImode, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %127
  %133 = load i64, i64* %4, align 8
  %134 = call i64 @CONSTANT_P(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %152, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @Q_REGS, align 4
  %139 = call i64 @reg_class_subset_p(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %3, align 4
  br label %154

143:                                              ; preds = %136
  %144 = load i32, i32* @Q_REGS, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i64 @reg_class_subset_p(i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @Q_REGS, align 4
  store i32 %149, i32* %3, align 4
  br label %154

150:                                              ; preds = %143
  %151 = load i32, i32* @NO_REGS, align 4
  store i32 %151, i32* %3, align 4
  br label %154

152:                                              ; preds = %132, %127
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %150, %148, %141, %125, %109, %106, %96, %90, %84, %71, %54, %34, %20, %13
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @MAYBE_MMX_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_SSE_CLASS_P(i32) #1

declare dso_local i64 @SSE_FLOAT_MODE_P(i32) #1

declare dso_local i64 @SSE_CLASS_P(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @reg_class_subset_p(i32, i32) #1

declare dso_local i64 @standard_80387_constant_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
