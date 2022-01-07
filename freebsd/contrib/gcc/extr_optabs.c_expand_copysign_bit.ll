; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_copysign_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_copysign_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@ior_optab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i32, i32)* @expand_copysign_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_copysign_bit(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @GET_MODE_SIZE(i32 %24)
  %26 = load i64, i64* @UNITS_PER_WORD, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @int_mode_for_mode(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @BLKmode, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @NULL_RTX, align 8
  store i64 %35, i64* %7, align 8
  br label %219

36:                                               ; preds = %28
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %63

37:                                               ; preds = %6
  %38 = load i32, i32* @word_mode, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @GET_MODE_BITSIZE(i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* @BITS_PER_WORD, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %17, align 4
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @BITS_PER_WORD, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @BITS_PER_WORD, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @GET_MODE_BITSIZE(i32 %56)
  %58 = load i32, i32* @BITS_PER_WORD, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* @BITS_PER_WORD, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %52, %36
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 1, %68
  store i32 %69, i32* %16, align 4
  br label %75

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %73 = sub nsw i32 %71, %72
  %74 = shl i32 1, %73
  store i32 %74, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %78, %75
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @gen_reg_rtx(i32 %87)
  store i64 %88, i64* %11, align 8
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %18, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %172

92:                                               ; preds = %89
  %93 = call i32 (...) @start_sequence()
  store i32 0, i32* %19, align 4
  br label %94

94:                                               ; preds = %160, %92
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %163

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @operand_subword(i64 %99, i32 %100, i32 1, i32 %101)
  store i64 %102, i64* %22, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @operand_subword_force(i64 %103, i32 %104, i32 %105)
  store i64 %106, i64* %23, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %155

110:                                              ; preds = %98
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @and_optab, align 4
  %116 = load i64, i64* %23, align 8
  %117 = load i32, i32* %16, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %15, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @immed_double_const(i32 %118, i32 %120, i32 %121)
  %123 = load i64, i64* @NULL_RTX, align 8
  %124 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %125 = call i64 @expand_binop(i32 %114, i32 %115, i64 %116, i64 %122, i64 %123, i32 1, i32 %124)
  store i64 %125, i64* %23, align 8
  br label %126

126:                                              ; preds = %113, %110
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @and_optab, align 4
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i64 @operand_subword_force(i64 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i64 @immed_double_const(i32 %133, i32 %134, i32 %135)
  %137 = load i64, i64* @NULL_RTX, align 8
  %138 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %139 = call i64 @expand_binop(i32 %127, i32 %128, i64 %132, i64 %136, i64 %137, i32 1, i32 %138)
  store i64 %139, i64* %10, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @ior_optab, align 4
  %142 = load i64, i64* %23, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %22, align 8
  %145 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %146 = call i64 @expand_binop(i32 %140, i32 %141, i64 %142, i64 %143, i64 %144, i32 1, i32 %145)
  store i64 %146, i64* %20, align 8
  %147 = load i64, i64* %20, align 8
  %148 = load i64, i64* %22, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %126
  %151 = load i64, i64* %22, align 8
  %152 = load i64, i64* %20, align 8
  %153 = call i32 @emit_move_insn(i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %150, %126
  br label %159

155:                                              ; preds = %98
  %156 = load i64, i64* %22, align 8
  %157 = load i64, i64* %23, align 8
  %158 = call i32 @emit_move_insn(i64 %156, i64 %157)
  br label %159

159:                                              ; preds = %155, %154
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %94

163:                                              ; preds = %94
  %164 = call i64 (...) @get_insns()
  store i64 %164, i64* %21, align 8
  %165 = call i32 (...) @end_sequence()
  %166 = load i64, i64* %21, align 8
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* @NULL_RTX, align 8
  %171 = call i32 @emit_no_conflict_block(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  br label %217

172:                                              ; preds = %89
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @and_optab, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i64, i64* %10, align 8
  %177 = call i64 @gen_lowpart(i32 %175, i64 %176)
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %14, align 4
  %181 = call i64 @immed_double_const(i32 %178, i32 %179, i32 %180)
  %182 = load i64, i64* @NULL_RTX, align 8
  %183 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %184 = call i64 @expand_binop(i32 %173, i32 %174, i64 %177, i64 %181, i64 %182, i32 1, i32 %183)
  store i64 %184, i64* %10, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i64, i64* %9, align 8
  %187 = call i64 @gen_lowpart(i32 %185, i64 %186)
  store i64 %187, i64* %9, align 8
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %172
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @and_optab, align 4
  %193 = load i64, i64* %9, align 8
  %194 = load i32, i32* %16, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %15, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %14, align 4
  %199 = call i64 @immed_double_const(i32 %195, i32 %197, i32 %198)
  %200 = load i64, i64* @NULL_RTX, align 8
  %201 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %202 = call i64 @expand_binop(i32 %191, i32 %192, i64 %193, i64 %199, i64 %200, i32 1, i32 %201)
  store i64 %202, i64* %9, align 8
  br label %203

203:                                              ; preds = %190, %172
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @ior_optab, align 4
  %206 = load i64, i64* %9, align 8
  %207 = load i64, i64* %10, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i64, i64* %11, align 8
  %210 = call i64 @gen_lowpart(i32 %208, i64 %209)
  %211 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %212 = call i64 @expand_binop(i32 %204, i32 %205, i64 %206, i64 %207, i64 %210, i32 1, i32 %211)
  store i64 %212, i64* %20, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i64, i64* %20, align 8
  %215 = load i32, i32* %14, align 4
  %216 = call i64 @lowpart_subreg_maybe_copy(i32 %213, i64 %214, i32 %215)
  store i64 %216, i64* %11, align 8
  br label %217

217:                                              ; preds = %203, %163
  %218 = load i64, i64* %11, align 8
  store i64 %218, i64* %7, align 8
  br label %219

219:                                              ; preds = %217, %34
  %220 = load i64, i64* %7, align 8
  ret i64 %220
}

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @int_mode_for_mode(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @operand_subword(i64, i32, i32, i32) #1

declare dso_local i64 @operand_subword_force(i64, i32, i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @immed_double_const(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_no_conflict_block(i64, i64, i64, i64, i64) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

declare dso_local i64 @lowpart_subreg_maybe_copy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
