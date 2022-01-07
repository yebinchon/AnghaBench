; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_insv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_insv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_UNIT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@TARGET_ZARCH = common dso_local global i64 0, align 8
@TARGET_EXTIMM = common dso_local global i64 0, align 8
@HImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_expand_insv(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @INTVAL(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @INTVAL(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @BITS_PER_UNIT, align 4
  %27 = srem i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %224

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %150

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @VOIDmode, align 4
  %36 = call i64 @memory_operand(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %150

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @word_mode, align 4
  %41 = call i64 @register_operand(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @VOIDmode, align 4
  %46 = call i64 @const_int_operand(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %150

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MODE_INT, align 4
  %51 = call i32 @smallest_mode_for_size(i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @GET_MODE_BITSIZE(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @adjust_address(i32 %57, i32 %58, i32 0)
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @gen_lowpart(i32 %60, i32 %61)
  %63 = call i32 @emit_move_insn(i32 %59, i32 %62)
  br label %149

64:                                               ; preds = %48
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @VOIDmode, align 4
  %67 = call i64 @const_int_operand(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @BITS_PER_UNIT, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @word_mode, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @force_const_mem(i32 %73, i32 %74)
  %76 = load i32, i32* @BLKmode, align 4
  %77 = load i32, i32* @word_mode, align 4
  %78 = call i32 @GET_MODE_SIZE(i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @adjust_address(i32 %75, i32 %76, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @BLKmode, align 4
  %84 = call i32 @adjust_address(i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @GEN_INT(i32 %86)
  %88 = call i32 @set_mem_size(i32 %85, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @GEN_INT(i32 %91)
  %93 = call i32 @s390_expand_movmem(i32 %89, i32 %90, i32 %92)
  br label %148

94:                                               ; preds = %64
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @word_mode, align 4
  %97 = call i64 @register_operand(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %146

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @SImode, align 4
  %102 = call i32 @GET_MODE_BITSIZE(i32 %101)
  %103 = icmp sle i32 %100, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* @word_mode, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @const0_rtx, align 4
  %109 = call i32 @gen_rtx_ZERO_EXTRACT(i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @emit_move_insn(i32 %109, i32 %110)
  br label %145

112:                                              ; preds = %99
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @SImode, align 4
  %115 = call i32 @GET_MODE_BITSIZE(i32 %114)
  %116 = sub nsw i32 %113, %115
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @BITS_PER_UNIT, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @SImode, align 4
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @adjust_address(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @SImode, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @gen_lowpart(i32 %124, i32 %125)
  %127 = call i32 @emit_move_insn(i32 %123, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @GEN_INT(i32 %129)
  %131 = call i32 @set_mem_size(i32 %128, i32 %130)
  %132 = load i32, i32* @word_mode, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @GEN_INT(i32 %134)
  %136 = load i32, i32* @const0_rtx, align 4
  %137 = call i32 @gen_rtx_ZERO_EXTRACT(i32 %132, i32 %133, i32 %135, i32 %136)
  %138 = load i32, i32* @word_mode, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @SImode, align 4
  %141 = call i32 @GET_MODE_BITSIZE(i32 %140)
  %142 = call i32 @GEN_INT(i32 %141)
  %143 = call i32 @gen_rtx_LSHIFTRT(i32 %138, i32 %139, i32 %142)
  %144 = call i32 @emit_move_insn(i32 %137, i32 %143)
  br label %145

145:                                              ; preds = %112, %104
  br label %147

146:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %224

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %147, %69
  br label %149

149:                                              ; preds = %148, %56
  store i32 1, i32* %5, align 4
  br label %224

150:                                              ; preds = %43, %33, %30
  %151 = load i64, i64* @TARGET_ZARCH, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %223

153:                                              ; preds = %150
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @word_mode, align 4
  %156 = call i64 @register_operand(i32 %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %223

158:                                              ; preds = %153
  %159 = load i32, i32* %11, align 4
  %160 = srem i32 %159, 16
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %223

162:                                              ; preds = %158
  %163 = load i32, i32* %10, align 4
  %164 = srem i32 %163, 16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %223

166:                                              ; preds = %162
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @VOIDmode, align 4
  %169 = call i64 @const_int_operand(i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %223

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @INTVAL(i32 %172)
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %197, %171
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %217

181:                                              ; preds = %177
  %182 = load i64, i64* @TARGET_EXTIMM, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %181
  %185 = load i32, i32* %18, align 4
  %186 = srem i32 %185, 32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 32
  %192 = icmp sge i32 %189, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @SImode, align 4
  store i32 %194, i32* %19, align 4
  br label %197

195:                                              ; preds = %188, %184, %181
  %196 = load i32, i32* @HImode, align 4
  store i32 %196, i32* %19, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = load i32, i32* %19, align 4
  %199 = call i32 @GET_MODE_BITSIZE(i32 %198)
  store i32 %199, i32* %20, align 4
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %18, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* @word_mode, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %20, align 4
  %206 = call i32 @GEN_INT(i32 %205)
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @GEN_INT(i32 %207)
  %209 = call i32 @gen_rtx_ZERO_EXTRACT(i32 %203, i32 %204, i32 %206, i32 %208)
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @gen_int_mode(i32 %210, i32 %211)
  %213 = call i32 @emit_move_insn(i32 %209, i32 %212)
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %17, align 4
  %216 = ashr i32 %215, %214
  store i32 %216, i32* %17, align 4
  br label %177

217:                                              ; preds = %177
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @gcc_assert(i32 %221)
  store i32 1, i32* %5, align 4
  br label %224

223:                                              ; preds = %166, %162, %158, %153, %150
  store i32 0, i32* %5, align 4
  br label %224

224:                                              ; preds = %223, %217, %149, %146, %29
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @memory_operand(i32, i32) #1

declare dso_local i64 @register_operand(i32, i32) #1

declare dso_local i64 @const_int_operand(i32, i32) #1

declare dso_local i32 @smallest_mode_for_size(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @force_const_mem(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @set_mem_size(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @s390_expand_movmem(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_ZERO_EXTRACT(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LSHIFTRT(i32, i32, i32) #1

declare dso_local i32 @gen_int_mode(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
