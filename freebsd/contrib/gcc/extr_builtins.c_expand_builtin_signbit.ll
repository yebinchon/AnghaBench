; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_signbit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_signbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i64 }

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@dconst0 = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @expand_builtin_signbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_signbit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.real_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 1)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @REAL_TYPE, align 4
  %21 = load i32, i32* @VOID_TYPE, align 4
  %22 = call i32 @validate_arglist(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

25:                                               ; preds = %2
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @TREE_VALUE(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i32 @TYPE_MODE(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i32 @TYPE_MODE(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.real_format* @REAL_MODE_FORMAT(i32 %34)
  store %struct.real_format* %35, %struct.real_format** %6, align 8
  %36 = load %struct.real_format*, %struct.real_format** %6, align 8
  %37 = getelementptr inbounds %struct.real_format, %struct.real_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %25
  %42 = load %struct.real_format*, %struct.real_format** %6, align 8
  %43 = getelementptr inbounds %struct.real_format, %struct.real_format* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @HONOR_SIGNED_ZEROS(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %167

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @LT_EXPR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @TREE_TYPE(i32 %56)
  %58 = load i32, i32* @dconst0, align 4
  %59 = call i32 @build_real(i32 %57, i32 %58)
  %60 = call i32 @fold_build2(i32 %52, i32 %54, i32 %55, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VOIDmode, align 4
  %64 = load i32, i32* @EXPAND_NORMAL, align 4
  %65 = call i32 @expand_expr(i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %167

66:                                               ; preds = %25
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @expand_normal(i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @GET_MODE_SIZE(i32 %69)
  %71 = load i64, i64* @UNITS_PER_WORD, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @int_mode_for_mode(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BLKmode, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %167

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @gen_lowpart(i32 %81, i32 %82)
  store i32 %83, i32* %16, align 4
  br label %107

84:                                               ; preds = %66
  %85 = load i32, i32* @word_mode, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @GET_MODE_BITSIZE(i32 %89)
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* @BITS_PER_WORD, align 4
  %94 = sdiv i32 %92, %93
  store i32 %94, i32* %14, align 4
  br label %99

95:                                               ; preds = %84
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @BITS_PER_WORD, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @operand_subword_force(i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @BITS_PER_WORD, align 4
  %106 = srem i32 %104, %105
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %99, %80
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @force_reg(i32 %108, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @GET_MODE_BITSIZE(i32 %112)
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %107
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  %120 = load i32, i32* %15, align 4
  %121 = shl i32 1, %120
  store i32 %121, i32* %11, align 4
  br label %127

122:                                              ; preds = %115
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %125 = sub nsw i32 %123, %124
  %126 = shl i32 1, %125
  store i32 %126, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @gen_lowpart(i32 %132, i32 %133)
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @and_optab, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @immed_double_const(i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* @NULL_RTX, align 4
  %144 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %145 = call i32 @expand_binop(i32 %136, i32 %137, i32 %138, i32 %142, i32 %143, i32 1, i32 %144)
  store i32 %145, i32* %16, align 4
  br label %165

146:                                              ; preds = %107
  %147 = load i32, i32* @RSHIFT_EXPR, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @NULL_TREE, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @build_int_cst(i32 %150, i32 %151)
  %153 = load i32, i32* @NULL_RTX, align 4
  %154 = call i32 @expand_shift(i32 %147, i32 %148, i32 %149, i32 %152, i32 %153, i32 1)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @gen_lowpart(i32 %155, i32 %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @and_optab, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @const1_rtx, align 4
  %162 = load i32, i32* @NULL_RTX, align 4
  %163 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %164 = call i32 @expand_binop(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 1, i32 %163)
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %146, %135
  %166 = load i32, i32* %16, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %79, %51, %50, %24
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local %struct.real_format* @REAL_MODE_FORMAT(i32) #1

declare dso_local i64 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @expand_normal(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @int_mode_for_mode(i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @operand_subword_force(i32, i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @expand_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @immed_double_const(i32, i32, i32) #1

declare dso_local i32 @expand_shift(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
