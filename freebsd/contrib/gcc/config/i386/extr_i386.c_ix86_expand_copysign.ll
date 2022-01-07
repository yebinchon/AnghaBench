; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_copysign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_copysign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFmode = common dso_local global i32 0, align 4
@V4SFmode = common dso_local global i32 0, align 4
@V2DFmode = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8
@ABS = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_copysign(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @GET_MODE(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SFmode, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @V4SFmode, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @V2DFmode, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @GET_CODE(i32 %31)
  %33 = load i64, i64* @CONST_DOUBLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %99

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @CONST_DOUBLE_REAL_VALUE(i32 %36)
  %38 = call i64 @real_isneg(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @ABS, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @simplify_unary_operation(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @CONST0_RTX(i32 %48)
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @CONST0_RTX(i32 %52)
  store i32 %53, i32* %6, align 4
  br label %78

54:                                               ; preds = %46
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SFmode, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SFmode, align 4
  %61 = call i32 @CONST0_RTX(i32 %60)
  %62 = load i32, i32* @SFmode, align 4
  %63 = call i32 @CONST0_RTX(i32 %62)
  %64 = load i32, i32* @SFmode, align 4
  %65 = call i32 @CONST0_RTX(i32 %64)
  %66 = call i32 (i32, i32, i32, ...) @gen_rtvec(i32 4, i32 %59, i32 %61, i32 %63, i32 %65)
  store i32 %66, i32* %10, align 4
  br label %72

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @DFmode, align 4
  %70 = call i32 @CONST0_RTX(i32 %69)
  %71 = call i32 (i32, i32, i32, ...) @gen_rtvec(i32 2, i32 %68, i32 %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %67, %58
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @gen_rtx_CONST_VECTOR(i32 %74, i32 %75)
  %77 = call i32 @force_reg(i32 %73, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %72, %51
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @ix86_build_signbit_mask(i32 %79, i32 0, i32 0)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SFmode, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @gen_copysignsf3_const(i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = call i32 @emit_insn(i32 %89)
  br label %98

91:                                               ; preds = %78
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @gen_copysigndf3_const(i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = call i32 @emit_insn(i32 %96)
  br label %98

98:                                               ; preds = %91, %84
  br label %124

99:                                               ; preds = %29
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @ix86_build_signbit_mask(i32 %100, i32 0, i32 1)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @ix86_build_signbit_mask(i32 %102, i32 0, i32 0)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @SFmode, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @gen_copysignsf3_var(i32 %108, i32* null, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = call i32 @emit_insn(i32 %113)
  br label %123

115:                                              ; preds = %99
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @gen_copysigndf3_var(i32 %116, i32* null, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = call i32 @emit_insn(i32 %121)
  br label %123

123:                                              ; preds = %115, %107
  br label %124

124:                                              ; preds = %123, %98
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @real_isneg(i32) #1

declare dso_local i32 @CONST_DOUBLE_REAL_VALUE(i32) #1

declare dso_local i32 @simplify_unary_operation(i32, i32, i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32, ...) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_rtx_CONST_VECTOR(i32, i32) #1

declare dso_local i32 @ix86_build_signbit_mask(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_copysignsf3_const(i32, i32, i32, i32) #1

declare dso_local i32 @gen_copysigndf3_const(i32, i32, i32, i32) #1

declare dso_local i32 @gen_copysignsf3_var(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_copysigndf3_var(i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
