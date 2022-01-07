; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_fp_absneg_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_fp_absneg_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SSE_MATH = common dso_local global i64 0, align 8
@ABS = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@NEG = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4
@FLAGS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_fp_absneg_operator(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @VECTOR_MODE_P(i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @GET_MODE_INNER(i32 %23)
  store i32 %24, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load i64, i64* @TARGET_SSE_MATH, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SSE_FLOAT_MODE_P(i32 %29)
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ABS, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @ix86_build_signbit_mask(i32 %36, i32 %37, i32 %41)
  store i64 %42, i64* %7, align 8
  br label %45

43:                                               ; preds = %32
  %44 = load i64, i64* @NULL_RTX, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %43, %35
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @MEM_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %45
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @rtx_equal_p(i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  br label %67

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @gen_reg_rtx(i32 %65)
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @MEM_P(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = load i64, i64* %12, align 8
  %78 = call i64 @force_reg(i32 %76, i64 %77)
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %75, %72, %68
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @NEG, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @XOR, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @AND, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load i32, i32* %5, align 4
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @gen_rtx_fmt_ee(i32 %91, i32 %92, i64 %93, i64 %94)
  store i64 %95, i64* %8, align 8
  %96 = load i32, i32* @VOIDmode, align 4
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @gen_rtx_SET(i32 %96, i64 %97, i64 %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @emit_insn(i64 %100)
  br label %133

102:                                              ; preds = %79
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @gen_rtx_fmt_e(i32 %103, i32 %104, i64 %105)
  store i64 %106, i64* %8, align 8
  %107 = load i32, i32* @VOIDmode, align 4
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i64 @gen_rtx_SET(i32 %107, i64 %108, i64 %109)
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %102
  %114 = load i32, i32* @VOIDmode, align 4
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @gen_rtx_USE(i32 %114, i64 %115)
  store i64 %116, i64* %9, align 8
  %117 = load i32, i32* @VOIDmode, align 4
  %118 = load i32, i32* @CCmode, align 4
  %119 = load i32, i32* @FLAGS_REG, align 4
  %120 = call i32 @gen_rtx_REG(i32 %118, i32 %119)
  %121 = call i64 @gen_rtx_CLOBBER(i32 %117, i32 %120)
  store i64 %121, i64* %10, align 8
  %122 = load i32, i32* @VOIDmode, align 4
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @gen_rtvec(i32 3, i64 %123, i64 %124, i64 %125)
  %127 = call i64 @gen_rtx_PARALLEL(i32 %122, i32 %126)
  %128 = call i32 @emit_insn(i64 %127)
  br label %132

129:                                              ; preds = %102
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @emit_insn(i64 %130)
  br label %132

132:                                              ; preds = %129, %113
  br label %133

133:                                              ; preds = %132, %90
  %134 = load i64, i64* %11, align 8
  %135 = load i64*, i64** %6, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i64*, i64** %6, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @emit_move_insn(i64 %142, i64 %143)
  br label %145

145:                                              ; preds = %139, %133
  ret void
}

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @SSE_FLOAT_MODE_P(i32) #1

declare dso_local i64 @ix86_build_signbit_mask(i32, i32, i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i64 @gen_rtx_fmt_e(i32, i32, i64) #1

declare dso_local i64 @gen_rtx_USE(i32, i64) #1

declare dso_local i64 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64, i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
