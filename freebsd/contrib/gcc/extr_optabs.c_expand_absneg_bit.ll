; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_absneg_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_absneg_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@NEG = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@ABS = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@xor_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@REG_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64)* @expand_absneg_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_absneg_bit(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.real_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.real_format* @REAL_MODE_FORMAT(i32 %22)
  store %struct.real_format* %23, %struct.real_format** %10, align 8
  %24 = load %struct.real_format*, %struct.real_format** %10, align 8
  %25 = icmp eq %struct.real_format* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* @NULL_RTX, align 8
  store i64 %27, i64* %5, align 8
  br label %225

28:                                               ; preds = %4
  %29 = load %struct.real_format*, %struct.real_format** %10, align 8
  %30 = getelementptr inbounds %struct.real_format, %struct.real_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @NULL_RTX, align 8
  store i64 %35, i64* %5, align 8
  br label %225

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NEG, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.real_format*, %struct.real_format** %10, align 8
  %42 = getelementptr inbounds %struct.real_format, %struct.real_format* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @NULL_RTX, align 8
  store i64 %46, i64* %5, align 8
  br label %225

47:                                               ; preds = %40, %36
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @GET_MODE_SIZE(i32 %48)
  %50 = load i64, i64* @UNITS_PER_WORD, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @int_mode_for_mode(i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @BLKmode, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* @NULL_RTX, align 8
  store i64 %59, i64* %5, align 8
  br label %225

60:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %87

61:                                               ; preds = %47
  %62 = load i32, i32* @word_mode, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @GET_MODE_BITSIZE(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* @BITS_PER_WORD, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %12, align 4
  br label %76

72:                                               ; preds = %61
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @BITS_PER_WORD, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @BITS_PER_WORD, align 4
  %79 = srem i32 %77, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @GET_MODE_BITSIZE(i32 %80)
  %82 = load i32, i32* @BITS_PER_WORD, align 4
  %83 = add nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* @BITS_PER_WORD, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %76, %60
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  store i32 0, i32* %16, align 4
  %92 = load i32, i32* %11, align 4
  %93 = shl i32 1, %92
  store i32 %93, i32* %17, align 4
  br label %99

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %97 = sub nsw i32 %95, %96
  %98 = shl i32 1, %97
  store i32 %98, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ABS, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %17, align 4
  %105 = xor i32 %104, -1
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = xor i32 %106, -1
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i64, i64* %9, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @gen_reg_rtx(i32 %116)
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* %13, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %188

121:                                              ; preds = %118
  %122 = call i32 (...) @start_sequence()
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %171, %121
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %174

127:                                              ; preds = %123
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i64 @operand_subword(i64 %128, i32 %129, i32 1, i32 %130)
  store i64 %131, i64* %20, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i64 @operand_subword_force(i64 %132, i32 %133, i32 %134)
  store i64 %135, i64* %21, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %127
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @ABS, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @and_optab, align 4
  br label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @xor_optab, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = load i64, i64* %21, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @immed_double_const(i32 %151, i32 %152, i32 %153)
  %155 = load i64, i64* %20, align 8
  %156 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %157 = call i64 @expand_binop(i32 %140, i32 %149, i64 %150, i32 %154, i64 %155, i32 1, i32 %156)
  store i64 %157, i64* %18, align 8
  %158 = load i64, i64* %18, align 8
  %159 = load i64, i64* %20, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  %162 = load i64, i64* %20, align 8
  %163 = load i64, i64* %18, align 8
  %164 = call i32 @emit_move_insn(i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %161, %148
  br label %170

166:                                              ; preds = %127
  %167 = load i64, i64* %20, align 8
  %168 = load i64, i64* %21, align 8
  %169 = call i32 @emit_move_insn(i64 %167, i64 %168)
  br label %170

170:                                              ; preds = %166, %165
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %123

174:                                              ; preds = %123
  %175 = call i64 (...) @get_insns()
  store i64 %175, i64* %19, align 8
  %176 = call i32 (...) @end_sequence()
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i64, i64* %8, align 8
  %180 = call i32 @copy_rtx(i64 %179)
  %181 = call i64 @gen_rtx_fmt_e(i32 %177, i32 %178, i32 %180)
  store i64 %181, i64* %18, align 8
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @NULL_RTX, align 8
  %186 = load i64, i64* %18, align 8
  %187 = call i32 @emit_no_conflict_block(i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  br label %223

188:                                              ; preds = %118
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @ABS, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @and_optab, align 4
  br label %197

195:                                              ; preds = %188
  %196 = load i32, i32* @xor_optab, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  %199 = load i32, i32* %15, align 4
  %200 = load i64, i64* %8, align 8
  %201 = call i64 @gen_lowpart(i32 %199, i64 %200)
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @immed_double_const(i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %15, align 4
  %207 = load i64, i64* %9, align 8
  %208 = call i64 @gen_lowpart(i32 %206, i64 %207)
  %209 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %210 = call i64 @expand_binop(i32 %189, i32 %198, i64 %201, i32 %205, i64 %208, i32 1, i32 %209)
  store i64 %210, i64* %18, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i64, i64* %18, align 8
  %213 = load i32, i32* %15, align 4
  %214 = call i64 @lowpart_subreg_maybe_copy(i32 %211, i64 %212, i32 %213)
  store i64 %214, i64* %9, align 8
  %215 = call i32 (...) @get_last_insn()
  %216 = load i32, i32* @REG_EQUAL, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %7, align 4
  %219 = load i64, i64* %8, align 8
  %220 = call i32 @copy_rtx(i64 %219)
  %221 = call i64 @gen_rtx_fmt_e(i32 %217, i32 %218, i32 %220)
  %222 = call i32 @set_unique_reg_note(i32 %215, i32 %216, i64 %221)
  br label %223

223:                                              ; preds = %197, %174
  %224 = load i64, i64* %9, align 8
  store i64 %224, i64* %5, align 8
  br label %225

225:                                              ; preds = %223, %58, %45, %34, %26
  %226 = load i64, i64* %5, align 8
  ret i64 %226
}

declare dso_local %struct.real_format* @REAL_MODE_FORMAT(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @int_mode_for_mode(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @operand_subword(i64, i32, i32, i32) #1

declare dso_local i64 @operand_subword_force(i64, i32, i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @immed_double_const(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @gen_rtx_fmt_e(i32, i32, i32) #1

declare dso_local i32 @copy_rtx(i64) #1

declare dso_local i32 @emit_no_conflict_block(i64, i64, i64, i64, i64) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

declare dso_local i64 @lowpart_subreg_maybe_copy(i32, i64, i32) #1

declare dso_local i32 @set_unique_reg_note(i32, i32, i64) #1

declare dso_local i32 @get_last_insn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
