; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_force_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_force_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@REG_EQUAL = common dso_local global i32 0, align 4
@SYMBOL_REF = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@LABEL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @force_reg(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @REG_P(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %3, align 8
  br label %180

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @general_operand(i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @gen_reg_rtx(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @emit_move_insn(i64 %28, i64 %29)
  store i64 %30, i64* %7, align 8
  br label %48

31:                                               ; preds = %20
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @NULL_RTX, align 4
  %34 = call i64 @force_operand(i64 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @REG_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i64 (...) @get_last_insn()
  store i64 %39, i64* %7, align 8
  br label %47

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @gen_reg_rtx(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @emit_move_insn(i64 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %40, %38
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @CONSTANT_P(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @single_set(i64 %53)
  store i64 %54, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @SET_DEST(i64 %57)
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @SET_SRC(i64 %63)
  %65 = call i32 @rtx_equal_p(i64 %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @REG_EQUAL, align 4
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @set_unique_reg_note(i64 %68, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %61, %56, %52, %48
  store i32 0, i32* %10, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @GET_CODE(i64 %73)
  %75 = load i64, i64* @SYMBOL_REF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i32, i32* @BITS_PER_UNIT, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @SYMBOL_REF_DECL(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @SYMBOL_REF_DECL(i64 %83)
  %85 = call i64 @DECL_P(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @SYMBOL_REF_DECL(i64 %88)
  %90 = call i32 @DECL_ALIGN(i64 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %87, %82, %77
  br label %171

92:                                               ; preds = %72
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @GET_CODE(i64 %93)
  %95 = load i64, i64* @LABEL_REF, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @BITS_PER_UNIT, align 4
  store i32 %98, i32* %10, align 4
  br label %170

99:                                               ; preds = %92
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @GET_CODE(i64 %100)
  %102 = load i64, i64* @CONST, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %157

104:                                              ; preds = %99
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @XEXP(i64 %105, i32 0)
  %107 = call i64 @GET_CODE(i64 %106)
  %108 = load i64, i64* @PLUS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %104
  %111 = load i64, i64* %5, align 8
  %112 = call i64 @XEXP(i64 %111, i32 0)
  %113 = call i64 @XEXP(i64 %112, i32 0)
  %114 = call i64 @GET_CODE(i64 %113)
  %115 = load i64, i64* @SYMBOL_REF, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %157

117:                                              ; preds = %110
  %118 = load i64, i64* %5, align 8
  %119 = call i64 @XEXP(i64 %118, i32 0)
  %120 = call i64 @XEXP(i64 %119, i32 1)
  %121 = call i64 @GET_CODE(i64 %120)
  %122 = load i64, i64* @CONST_INT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %117
  %125 = load i64, i64* %5, align 8
  %126 = call i64 @XEXP(i64 %125, i32 0)
  %127 = call i64 @XEXP(i64 %126, i32 0)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @XEXP(i64 %128, i32 0)
  %130 = call i64 @XEXP(i64 %129, i32 1)
  store i64 %130, i64* %12, align 8
  %131 = load i32, i32* @BITS_PER_UNIT, align 4
  store i32 %131, i32* %13, align 4
  %132 = load i64, i64* %11, align 8
  %133 = call i64 @SYMBOL_REF_DECL(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %124
  %136 = load i64, i64* %11, align 8
  %137 = call i64 @SYMBOL_REF_DECL(i64 %136)
  %138 = call i64 @DECL_P(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @SYMBOL_REF_DECL(i64 %141)
  %143 = call i32 @DECL_ALIGN(i64 %142)
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %140, %135, %124
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @INTVAL(i64 %145)
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @INTVAL(i64 %147)
  %149 = sub nsw i32 0, %148
  %150 = and i32 %146, %149
  %151 = call i32 @exact_log2(i32 %150)
  %152 = load i32, i32* @BITS_PER_UNIT, align 4
  %153 = mul i32 %151, %152
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @MIN(i32 %154, i32 %155)
  store i32 %156, i32* %10, align 4
  br label %169

157:                                              ; preds = %117, %110, %104, %99
  %158 = load i64, i64* %5, align 8
  %159 = call i64 @MEM_P(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @MEM_POINTER(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i64, i64* %5, align 8
  %167 = call i32 @MEM_ALIGN(i64 %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %165, %161, %157
  br label %169

169:                                              ; preds = %168, %144
  br label %170

170:                                              ; preds = %169, %97
  br label %171

171:                                              ; preds = %170, %91
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i64, i64* %6, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @mark_reg_pointer(i64 %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i64, i64* %6, align 8
  store i64 %179, i64* %3, align 8
  br label %180

180:                                              ; preds = %178, %18
  %181 = load i64, i64* %3, align 8
  ret i64 %181
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @general_operand(i64, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @emit_move_insn(i64, i64) #1

declare dso_local i64 @force_operand(i64, i32) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i32) #1

declare dso_local i32 @SET_SRC(i64) #1

declare dso_local i32 @set_unique_reg_note(i64, i32, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SYMBOL_REF_DECL(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i32 @DECL_ALIGN(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @exact_log2(i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @MEM_POINTER(i64) #1

declare dso_local i32 @MEM_ALIGN(i64) #1

declare dso_local i32 @mark_reg_pointer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
