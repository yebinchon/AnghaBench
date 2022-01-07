; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_add_equal_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_add_equal_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTX_COMM_ARITH = common dso_local global i64 0, align 8
@RTX_BIN_ARITH = common dso_local global i64 0, align 8
@RTX_COMM_COMPARE = common dso_local global i64 0, align 8
@RTX_COMPARE = common dso_local global i64 0, align 8
@RTX_UNARY = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@REG_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i64, i64)* @add_equal_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_equal_note(i64 %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @INSN_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @NEXT_INSN(i64 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %18, %5
  %27 = phi i1 [ false, %18 ], [ false, %5 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @GET_RTX_CLASS(i32 %30)
  %32 = load i64, i64* @RTX_COMM_ARITH, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @GET_RTX_CLASS(i32 %35)
  %37 = load i64, i64* @RTX_BIN_ARITH, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @GET_RTX_CLASS(i32 %40)
  %42 = load i64, i64* @RTX_COMM_COMPARE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @GET_RTX_CLASS(i32 %45)
  %47 = load i64, i64* @RTX_COMPARE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @GET_RTX_CLASS(i32 %50)
  %52 = load i64, i64* @RTX_UNARY, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %155

55:                                               ; preds = %49, %44, %39, %34, %26
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  %58 = load i64, i64* @ZERO_EXTRACT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %155

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %69, %61
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @NEXT_INSN(i64 %64)
  %66 = load i64, i64* @NULL_RTX, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @NEXT_INSN(i64 %70)
  store i64 %71, i64* %12, align 8
  br label %63

72:                                               ; preds = %63
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @single_set(i64 %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @NULL_RTX, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %155

79:                                               ; preds = %72
  %80 = load i64, i64* %14, align 8
  %81 = call i64 @SET_DEST(i64 %80)
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @rtx_equal_p(i64 %81, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %14, align 8
  %87 = call i64 @SET_DEST(i64 %86)
  %88 = call i64 @GET_CODE(i64 %87)
  %89 = load i64, i64* @STRICT_LOW_PART, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %14, align 8
  %93 = call i64 @SET_DEST(i64 %92)
  %94 = call i64 @XEXP(i64 %93, i32 0)
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @rtx_equal_p(i64 %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91, %85
  store i32 1, i32* %6, align 4
  br label %155

99:                                               ; preds = %91, %79
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i64 @reg_overlap_mentioned_p(i64 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @reg_overlap_mentioned_p(i64 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %107, %99
  %113 = load i64, i64* %12, align 8
  %114 = call i64 @PREV_INSN(i64 %113)
  store i64 %114, i64* %13, align 8
  br label %115

115:                                              ; preds = %125, %112
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* @NULL_RTX, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i64 @reg_set_p(i64 %120, i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %6, align 4
  br label %155

125:                                              ; preds = %119
  %126 = load i64, i64* %13, align 8
  %127 = call i64 @PREV_INSN(i64 %126)
  store i64 %127, i64* %13, align 8
  br label %115

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %107, %104
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @GET_RTX_CLASS(i32 %130)
  %132 = load i64, i64* @RTX_UNARY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i32, i32* %9, align 4
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @GET_MODE(i64 %136)
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @copy_rtx(i64 %138)
  %140 = call i64 @gen_rtx_fmt_e(i32 %135, i32 %137, i32 %139)
  store i64 %140, i64* %15, align 8
  br label %150

141:                                              ; preds = %129
  %142 = load i32, i32* %9, align 4
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @GET_MODE(i64 %143)
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @copy_rtx(i64 %145)
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @copy_rtx(i64 %147)
  %149 = call i64 @gen_rtx_fmt_ee(i32 %142, i32 %144, i32 %146, i32 %148)
  store i64 %149, i64* %15, align 8
  br label %150

150:                                              ; preds = %141, %134
  %151 = load i64, i64* %12, align 8
  %152 = load i32, i32* @REG_EQUAL, align 4
  %153 = load i64, i64* %15, align 8
  %154 = call i32 @set_unique_reg_note(i64 %151, i32 %152, i64 %153)
  store i32 1, i32* %6, align 4
  br label %155

155:                                              ; preds = %150, %124, %98, %78, %60, %54
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i64, i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @reg_set_p(i64, i64) #1

declare dso_local i64 @gen_rtx_fmt_e(i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @copy_rtx(i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

declare dso_local i32 @set_unique_reg_note(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
