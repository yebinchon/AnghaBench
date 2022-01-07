; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_legitimize_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_legitimize_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@TARGET_VFP = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@TImode = common dso_local global i32 0, align 4
@MINUS = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arm_legitimize_address(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @arm_tls_symbol_p(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @NULL_RTX, align 4
  %28 = call i64 @legitimize_tls_address(i64 %26, i32 %27)
  store i64 %28, i64* %4, align 8
  br label %264

29:                                               ; preds = %3
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @PLUS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %154

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @XEXP(i64 %35, i32 0)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @XEXP(i64 %37, i32 1)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @CONSTANT_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @symbol_mentioned_p(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @SImode, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @force_reg(i32 %47, i64 %48)
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %46, %42, %34
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @CONSTANT_P(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @symbol_mentioned_p(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @SImode, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @force_reg(i32 %59, i64 %60)
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %58, %54, %50
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @ARM_BASE_REGISTER_RTX_P(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %137

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @GET_CODE(i64 %67)
  %69 = load i64, i64* @CONST_INT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %137

71:                                               ; preds = %66
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @INTVAL(i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @DImode, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* @TARGET_VFP, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @DFmode, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83, %71
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 15
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, -16
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp sgt i32 %92, 4
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 16
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, 16
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %94, %87
  br label %123

100:                                              ; preds = %83, %80
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @TImode, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %118

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 4095
  br label %116

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 0, %112
  %114 = and i32 %113, 4095
  %115 = sub nsw i32 0, %114
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi i32 [ %110, %108 ], [ %115, %111 ]
  br label %118

118:                                              ; preds = %116, %104
  %119 = phi i32 [ 0, %104 ], [ %117, %116 ]
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %118, %99
  %124 = load i32, i32* @SImode, align 4
  %125 = call i64 @gen_reg_rtx(i32 %124)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i64 @plus_constant(i64 %126, i32 %127)
  %129 = load i32, i32* @NULL_RTX, align 4
  %130 = call i64 @force_operand(i64 %128, i32 %129)
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @emit_move_insn(i64 %131, i64 %132)
  %134 = load i64, i64* %12, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i64 @plus_constant(i64 %134, i32 %135)
  store i64 %136, i64* %5, align 8
  br label %153

137:                                              ; preds = %66, %62
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %5, align 8
  %140 = call i64 @XEXP(i64 %139, i32 0)
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %5, align 8
  %145 = call i64 @XEXP(i64 %144, i32 1)
  %146 = icmp ne i64 %143, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %142, %137
  %148 = load i32, i32* @SImode, align 4
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i64 @gen_rtx_PLUS(i32 %148, i64 %149, i64 %150)
  store i64 %151, i64* %5, align 8
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %152, %123
  br label %248

154:                                              ; preds = %29
  %155 = load i64, i64* %5, align 8
  %156 = call i64 @GET_CODE(i64 %155)
  %157 = load i64, i64* @MINUS, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %199

159:                                              ; preds = %154
  %160 = load i64, i64* %5, align 8
  %161 = call i64 @XEXP(i64 %160, i32 0)
  store i64 %161, i64* %14, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @XEXP(i64 %162, i32 1)
  store i64 %163, i64* %15, align 8
  %164 = load i64, i64* %14, align 8
  %165 = call i64 @CONSTANT_P(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32, i32* @SImode, align 4
  %169 = load i64, i64* %14, align 8
  %170 = call i64 @force_reg(i32 %168, i64 %169)
  store i64 %170, i64* %14, align 8
  br label %171

171:                                              ; preds = %167, %159
  %172 = load i64, i64* %15, align 8
  %173 = call i64 @CONSTANT_P(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @symbol_mentioned_p(i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* @SImode, align 4
  %181 = load i64, i64* %15, align 8
  %182 = call i64 @force_reg(i32 %180, i64 %181)
  store i64 %182, i64* %15, align 8
  br label %183

183:                                              ; preds = %179, %175, %171
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* %5, align 8
  %186 = call i64 @XEXP(i64 %185, i32 0)
  %187 = icmp ne i64 %184, %186
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load i64, i64* %15, align 8
  %190 = load i64, i64* %5, align 8
  %191 = call i64 @XEXP(i64 %190, i32 1)
  %192 = icmp ne i64 %189, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %188, %183
  %194 = load i32, i32* @SImode, align 4
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %15, align 8
  %197 = call i64 @gen_rtx_MINUS(i32 %194, i64 %195, i64 %196)
  store i64 %197, i64* %5, align 8
  br label %198

198:                                              ; preds = %193, %188
  br label %247

199:                                              ; preds = %154
  %200 = load i64, i64* %5, align 8
  %201 = call i64 @GET_CODE(i64 %200)
  %202 = load i64, i64* @CONST_INT, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %246

204:                                              ; preds = %199
  %205 = load i64, i64* @optimize, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %246

207:                                              ; preds = %204
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @SImode, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 12, i32 8
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = shl i32 1, %213
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  %216 = load i64, i64* %5, align 8
  %217 = call i32 @INTVAL(i64 %216)
  %218 = load i32, i32* %17, align 4
  %219 = xor i32 %218, -1
  %220 = and i32 %217, %219
  store i32 %220, i32* %18, align 4
  %221 = load i64, i64* %5, align 8
  %222 = call i32 @INTVAL(i64 %221)
  %223 = load i32, i32* %17, align 4
  %224 = and i32 %222, %223
  store i32 %224, i32* %19, align 4
  %225 = load i32, i32* %18, align 4
  %226 = call i32 @bit_count(i32 %225)
  %227 = load i32, i32* %16, align 4
  %228 = sub i32 32, %227
  %229 = udiv i32 %228, 2
  %230 = icmp ugt i32 %226, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %207
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %18, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %19, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %19, align 4
  br label %238

238:                                              ; preds = %231, %207
  %239 = load i32, i32* @SImode, align 4
  %240 = load i32, i32* %18, align 4
  %241 = call i64 @GEN_INT(i32 %240)
  %242 = call i64 @force_reg(i32 %239, i64 %241)
  store i64 %242, i64* %20, align 8
  %243 = load i64, i64* %20, align 8
  %244 = load i32, i32* %19, align 4
  %245 = call i64 @plus_constant(i64 %243, i32 %244)
  store i64 %245, i64* %5, align 8
  br label %246

246:                                              ; preds = %238, %204, %199
  br label %247

247:                                              ; preds = %246, %198
  br label %248

248:                                              ; preds = %247, %153
  %249 = load i64, i64* @flag_pic, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %248
  %252 = load i64, i64* %6, align 8
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @NULL_RTX, align 4
  %255 = call i64 @legitimize_pic_address(i64 %252, i32 %253, i32 %254)
  store i64 %255, i64* %21, align 8
  %256 = load i64, i64* %21, align 8
  %257 = load i64, i64* %6, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %251
  %260 = load i64, i64* %21, align 8
  store i64 %260, i64* %5, align 8
  br label %261

261:                                              ; preds = %259, %251
  br label %262

262:                                              ; preds = %261, %248
  %263 = load i64, i64* %5, align 8
  store i64 %263, i64* %4, align 8
  br label %264

264:                                              ; preds = %262, %25
  %265 = load i64, i64* %4, align 8
  ret i64 %265
}

declare dso_local i64 @arm_tls_symbol_p(i64) #1

declare dso_local i64 @legitimize_tls_address(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i32 @symbol_mentioned_p(i64) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @ARM_BASE_REGISTER_RTX_P(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @force_operand(i64, i32) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_MINUS(i32, i64, i64) #1

declare dso_local i32 @bit_count(i32) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @legitimize_pic_address(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
