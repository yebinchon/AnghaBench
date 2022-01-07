; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_copysign_absneg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_copysign_absneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32* null, align 8
@abs_optab = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8
@NEG = common dso_local global i32 0, align 4
@neg_optab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32*, i32*, i32, i32)* @expand_copysign_absneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @expand_copysign_absneg(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32*, i32** @NULL_RTX, align 8
  store i32* %23, i32** %11, align 8
  br label %24

24:                                               ; preds = %22, %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @abs_optab, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32* @expand_unop(i32 %28, i32 %29, i32* %30, i32* %31, i32 0)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32*, i32** @NULL_RTX, align 8
  store i32* %36, i32** %7, align 8
  br label %150

37:                                               ; preds = %27
  %38 = load i32*, i32** %9, align 8
  store i32* %38, i32** %11, align 8
  br label %51

39:                                               ; preds = %24
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** @NULL_RTX, align 8
  %42 = icmp eq i32* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = call i32* @copy_to_reg(i32* %44)
  store i32* %45, i32** %11, align 8
  br label %50

46:                                               ; preds = %39
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @emit_move_insn(i32* %47, i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @GET_MODE_SIZE(i32 %52)
  %54 = load i64, i64* @UNITS_PER_WORD, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @int_mode_for_mode(i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @BLKmode, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32*, i32** @NULL_RTX, align 8
  store i32* %63, i32** %7, align 8
  br label %150

64:                                               ; preds = %56
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32* @gen_lowpart(i32 %65, i32* %66)
  store i32* %67, i32** %10, align 8
  br label %91

68:                                               ; preds = %51
  %69 = load i32, i32* @word_mode, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @GET_MODE_BITSIZE(i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* @BITS_PER_WORD, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %17, align 4
  br label %83

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @BITS_PER_WORD, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @BITS_PER_WORD, align 4
  %86 = srem i32 %84, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32* @operand_subword_force(i32* %87, i32 %88, i32 %89)
  store i32* %90, i32** %10, align 8
  br label %91

91:                                               ; preds = %83, %64
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  store i32 0, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = shl i32 1, %96
  store i32 %97, i32* %16, align 4
  br label %103

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %101 = sub nsw i32 %99, %100
  %102 = shl i32 1, %101
  store i32 %102, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @and_optab, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @immed_double_const(i32 %107, i32 %108, i32 %109)
  %111 = load i32*, i32** @NULL_RTX, align 8
  %112 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %113 = call i32* @expand_binop(i32 %104, i32 %105, i32* %106, i32 %110, i32* %111, i32 1, i32 %112)
  store i32* %113, i32** %10, align 8
  %114 = call i32* (...) @gen_label_rtx()
  store i32* %114, i32** %18, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* @const0_rtx, align 4
  %117 = load i32, i32* @EQ, align 4
  %118 = load i32*, i32** @NULL_RTX, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32*, i32** %18, align 8
  %121 = call i32 @emit_cmp_and_jump_insns(i32* %115, i32 %116, i32 %117, i32* %118, i32 %119, i32 1, i32* %120)
  %122 = load i32*, i32** %9, align 8
  %123 = call i64 @GET_CODE(i32* %122)
  %124 = load i64, i64* @CONST_DOUBLE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %103
  %127 = load i32, i32* @NEG, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32* @simplify_unary_operation(i32 %127, i32 %128, i32* %129, i32 %130)
  store i32* %131, i32** %9, align 8
  br label %138

132:                                              ; preds = %103
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @neg_optab, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i32* @expand_unop(i32 %133, i32 %134, i32* %135, i32* %136, i32 0)
  store i32* %137, i32** %9, align 8
  br label %138

138:                                              ; preds = %132, %126
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = icmp ne i32* %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32*, i32** %11, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @emit_move_insn(i32* %143, i32* %144)
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i32*, i32** %18, align 8
  %148 = call i32 @emit_label(i32* %147)
  %149 = load i32*, i32** %11, align 8
  store i32* %149, i32** %7, align 8
  br label %150

150:                                              ; preds = %146, %62, %35
  %151 = load i32*, i32** %7, align 8
  ret i32* %151
}

declare dso_local i32* @expand_unop(i32, i32, i32*, i32*, i32) #1

declare dso_local i32* @copy_to_reg(i32*) #1

declare dso_local i32 @emit_move_insn(i32*, i32*) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @int_mode_for_mode(i32) #1

declare dso_local i32* @gen_lowpart(i32, i32*) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32* @operand_subword_force(i32*, i32, i32) #1

declare dso_local i32* @expand_binop(i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @immed_double_const(i32, i32, i32) #1

declare dso_local i32* @gen_label_rtx(...) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @simplify_unary_operation(i32, i32, i32*, i32) #1

declare dso_local i32 @emit_label(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
