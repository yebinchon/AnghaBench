; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_optimize_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_optimize_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@cfun_frame_layout = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BASE_REGNUM = common dso_local global i32 0, align 4
@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@RETURN_REGNUM = common dso_local global i32 0, align 4
@INSN = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s390_optimize_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_optimize_prologue() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = call i32 (...) @s390_update_frame_layout()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %12 = load i32, i32* @BASE_REGNUM, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %16 = load i32, i32* @BASE_REGNUM, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %23 = load i32, i32* @RETURN_REGNUM, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %27 = load i32, i32* @RETURN_REGNUM, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %18
  br label %386

30:                                               ; preds = %25, %21, %14, %0
  %31 = call i64 (...) @get_insns()
  store i64 %31, i64* %1, align 8
  br label %32

32:                                               ; preds = %384, %30
  %33 = load i64, i64* %1, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %386

35:                                               ; preds = %32
  %36 = load i64, i64* %1, align 8
  %37 = call i64 @NEXT_INSN(i64 %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %1, align 8
  %39 = call i64 @GET_CODE(i64 %38)
  %40 = load i64, i64* @INSN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %384

43:                                               ; preds = %35
  %44 = load i64, i64* %1, align 8
  %45 = call i64 @PATTERN(i64 %44)
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @PARALLEL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %138

49:                                               ; preds = %43
  %50 = load i64, i64* %1, align 8
  %51 = call i64 @PATTERN(i64 %50)
  %52 = load i32, i32* @VOIDmode, align 4
  %53 = call i64 @store_multiple_operation(i64 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %138

55:                                               ; preds = %49
  %56 = load i64, i64* %1, align 8
  %57 = call i64 @PATTERN(i64 %56)
  %58 = call i64 @XVECEXP(i64 %57, i32 0, i32 0)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @SET_SRC(i64 %59)
  %61 = call i32 @REGNO(i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i64, i64* %1, align 8
  %64 = call i64 @PATTERN(i64 %63)
  %65 = call i32 @XVECLEN(i64 %64, i32 0)
  %66 = add nsw i32 %62, %65
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i64, i64* @const0_rtx, align 8
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @SET_DEST(i64 %69)
  %71 = call i32 @XEXP(i64 %70, i32 0)
  %72 = call i64 @eliminate_constant_term(i32 %71, i64* %9)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @INTVAL(i64 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @GET_CODE(i64 %75)
  %77 = load i64, i64* @REG, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %55
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %55
  br label %384

83:                                               ; preds = %79
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86
  br label %384

95:                                               ; preds = %90, %83
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @REGNO(i64 %96)
  %98 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @REGNO(i64 %101)
  %103 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %384

106:                                              ; preds = %100, %95
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @BASE_REGNUM, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @BASE_REGNUM, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %106
  br label %384

115:                                              ; preds = %110
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* @UNITS_PER_WORD, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %120, %125
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %129 = call i64 @save_gprs(i64 %119, i32 %126, i32 %127, i32 %128)
  store i64 %129, i64* %2, align 8
  %130 = load i64, i64* %2, align 8
  %131 = load i64, i64* %1, align 8
  %132 = call i64 @emit_insn_before(i64 %130, i64 %131)
  store i64 %132, i64* %2, align 8
  %133 = load i64, i64* %2, align 8
  %134 = call i32 @INSN_ADDRESSES_NEW(i64 %133, i32 -1)
  br label %135

135:                                              ; preds = %118, %115
  %136 = load i64, i64* %1, align 8
  %137 = call i32 @remove_insn(i64 %136)
  br label %384

138:                                              ; preds = %49, %43
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %213

141:                                              ; preds = %138
  %142 = load i64, i64* %1, align 8
  %143 = call i64 @PATTERN(i64 %142)
  %144 = call i64 @GET_CODE(i64 %143)
  %145 = load i64, i64* @SET, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %213

147:                                              ; preds = %141
  %148 = load i64, i64* %1, align 8
  %149 = call i64 @PATTERN(i64 %148)
  %150 = call i64 @SET_SRC(i64 %149)
  %151 = call i64 @GET_CODE(i64 %150)
  %152 = load i64, i64* @REG, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %213

154:                                              ; preds = %147
  %155 = load i64, i64* %1, align 8
  %156 = call i64 @PATTERN(i64 %155)
  %157 = call i64 @SET_SRC(i64 %156)
  %158 = call i32 @REGNO(i64 %157)
  %159 = load i32, i32* @BASE_REGNUM, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %171, label %161

161:                                              ; preds = %154
  %162 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %213, label %164

164:                                              ; preds = %161
  %165 = load i64, i64* %1, align 8
  %166 = call i64 @PATTERN(i64 %165)
  %167 = call i64 @SET_SRC(i64 %166)
  %168 = call i32 @REGNO(i64 %167)
  %169 = load i32, i32* @RETURN_REGNUM, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %213

171:                                              ; preds = %164, %154
  %172 = load i64, i64* %1, align 8
  %173 = call i64 @PATTERN(i64 %172)
  %174 = call i64 @SET_DEST(i64 %173)
  %175 = call i64 @GET_CODE(i64 %174)
  %176 = load i64, i64* @MEM, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %213

178:                                              ; preds = %171
  %179 = load i64, i64* %1, align 8
  %180 = call i64 @PATTERN(i64 %179)
  store i64 %180, i64* %7, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i64 @SET_SRC(i64 %181)
  %183 = call i32 @REGNO(i64 %182)
  store i32 %183, i32* %4, align 4
  %184 = load i64, i64* @const0_rtx, align 8
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %7, align 8
  %186 = call i64 @SET_DEST(i64 %185)
  %187 = call i32 @XEXP(i64 %186, i32 0)
  %188 = call i64 @eliminate_constant_term(i32 %187, i64* %9)
  store i64 %188, i64* %8, align 8
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @INTVAL(i64 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i64, i64* %8, align 8
  %192 = call i64 @GET_CODE(i64 %191)
  %193 = load i64, i64* @REG, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %198, label %195

195:                                              ; preds = %178
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195, %178
  br label %384

199:                                              ; preds = %195
  %200 = load i64, i64* %8, align 8
  %201 = call i32 @REGNO(i64 %200)
  %202 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i64, i64* %8, align 8
  %206 = call i32 @REGNO(i64 %205)
  %207 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %384

210:                                              ; preds = %204, %199
  %211 = load i64, i64* %1, align 8
  %212 = call i32 @remove_insn(i64 %211)
  br label %384

213:                                              ; preds = %171, %164, %161, %147, %141, %138
  %214 = load i64, i64* %1, align 8
  %215 = call i64 @PATTERN(i64 %214)
  %216 = call i64 @GET_CODE(i64 %215)
  %217 = load i64, i64* @PARALLEL, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %308

219:                                              ; preds = %213
  %220 = load i64, i64* %1, align 8
  %221 = call i64 @PATTERN(i64 %220)
  %222 = load i32, i32* @VOIDmode, align 4
  %223 = call i64 @load_multiple_operation(i64 %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %308

225:                                              ; preds = %219
  %226 = load i64, i64* %1, align 8
  %227 = call i64 @PATTERN(i64 %226)
  %228 = call i64 @XVECEXP(i64 %227, i32 0, i32 0)
  store i64 %228, i64* %7, align 8
  %229 = load i64, i64* %7, align 8
  %230 = call i64 @SET_DEST(i64 %229)
  %231 = call i32 @REGNO(i64 %230)
  store i32 %231, i32* %4, align 4
  %232 = load i32, i32* %4, align 4
  %233 = load i64, i64* %1, align 8
  %234 = call i64 @PATTERN(i64 %233)
  %235 = call i32 @XVECLEN(i64 %234, i32 0)
  %236 = add nsw i32 %232, %235
  %237 = sub nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  %238 = load i64, i64* @const0_rtx, align 8
  store i64 %238, i64* %9, align 8
  %239 = load i64, i64* %7, align 8
  %240 = call i64 @SET_SRC(i64 %239)
  %241 = call i32 @XEXP(i64 %240, i32 0)
  %242 = call i64 @eliminate_constant_term(i32 %241, i64* %9)
  store i64 %242, i64* %8, align 8
  %243 = load i64, i64* %9, align 8
  %244 = call i32 @INTVAL(i64 %243)
  store i32 %244, i32* %6, align 4
  %245 = load i64, i64* %8, align 8
  %246 = call i64 @GET_CODE(i64 %245)
  %247 = load i64, i64* @REG, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %252, label %249

249:                                              ; preds = %225
  %250 = load i32, i32* %6, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249, %225
  br label %384

253:                                              ; preds = %249
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %255 = icmp ne i32 %254, -1
  br i1 %255, label %256, label %265

256:                                              ; preds = %253
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %258 = load i32, i32* %4, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %262 = load i32, i32* %5, align 4
  %263 = icmp sgt i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260, %256
  br label %384

265:                                              ; preds = %260, %253
  %266 = load i64, i64* %8, align 8
  %267 = call i32 @REGNO(i64 %266)
  %268 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load i64, i64* %8, align 8
  %272 = call i32 @REGNO(i64 %271)
  %273 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %384

276:                                              ; preds = %270, %265
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @BASE_REGNUM, align 4
  %279 = icmp sgt i32 %277, %278
  br i1 %279, label %284, label %280

280:                                              ; preds = %276
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* @BASE_REGNUM, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %280, %276
  br label %384

285:                                              ; preds = %280
  %286 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %287 = icmp ne i32 %286, -1
  br i1 %287, label %288, label %305

288:                                              ; preds = %285
  %289 = load i64, i64* %8, align 8
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %292 = load i32, i32* %4, align 4
  %293 = sub nsw i32 %291, %292
  %294 = load i32, i32* @UNITS_PER_WORD, align 4
  %295 = mul nsw i32 %293, %294
  %296 = add nsw i32 %290, %295
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 3), align 4
  %299 = call i64 @restore_gprs(i64 %289, i32 %296, i32 %297, i32 %298)
  store i64 %299, i64* %2, align 8
  %300 = load i64, i64* %2, align 8
  %301 = load i64, i64* %1, align 8
  %302 = call i64 @emit_insn_before(i64 %300, i64 %301)
  store i64 %302, i64* %2, align 8
  %303 = load i64, i64* %2, align 8
  %304 = call i32 @INSN_ADDRESSES_NEW(i64 %303, i32 -1)
  br label %305

305:                                              ; preds = %288, %285
  %306 = load i64, i64* %1, align 8
  %307 = call i32 @remove_insn(i64 %306)
  br label %384

308:                                              ; preds = %219, %213
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %310 = icmp eq i32 %309, -1
  br i1 %310, label %311, label %383

311:                                              ; preds = %308
  %312 = load i64, i64* %1, align 8
  %313 = call i64 @PATTERN(i64 %312)
  %314 = call i64 @GET_CODE(i64 %313)
  %315 = load i64, i64* @SET, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %383

317:                                              ; preds = %311
  %318 = load i64, i64* %1, align 8
  %319 = call i64 @PATTERN(i64 %318)
  %320 = call i64 @SET_DEST(i64 %319)
  %321 = call i64 @GET_CODE(i64 %320)
  %322 = load i64, i64* @REG, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %383

324:                                              ; preds = %317
  %325 = load i64, i64* %1, align 8
  %326 = call i64 @PATTERN(i64 %325)
  %327 = call i64 @SET_DEST(i64 %326)
  %328 = call i32 @REGNO(i64 %327)
  %329 = load i32, i32* @BASE_REGNUM, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %341, label %331

331:                                              ; preds = %324
  %332 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %383, label %334

334:                                              ; preds = %331
  %335 = load i64, i64* %1, align 8
  %336 = call i64 @PATTERN(i64 %335)
  %337 = call i64 @SET_DEST(i64 %336)
  %338 = call i32 @REGNO(i64 %337)
  %339 = load i32, i32* @RETURN_REGNUM, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %383

341:                                              ; preds = %334, %324
  %342 = load i64, i64* %1, align 8
  %343 = call i64 @PATTERN(i64 %342)
  %344 = call i64 @SET_SRC(i64 %343)
  %345 = call i64 @GET_CODE(i64 %344)
  %346 = load i64, i64* @MEM, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %383

348:                                              ; preds = %341
  %349 = load i64, i64* %1, align 8
  %350 = call i64 @PATTERN(i64 %349)
  store i64 %350, i64* %7, align 8
  %351 = load i64, i64* %7, align 8
  %352 = call i64 @SET_DEST(i64 %351)
  %353 = call i32 @REGNO(i64 %352)
  store i32 %353, i32* %4, align 4
  %354 = load i64, i64* @const0_rtx, align 8
  store i64 %354, i64* %9, align 8
  %355 = load i64, i64* %7, align 8
  %356 = call i64 @SET_SRC(i64 %355)
  %357 = call i32 @XEXP(i64 %356, i32 0)
  %358 = call i64 @eliminate_constant_term(i32 %357, i64* %9)
  store i64 %358, i64* %8, align 8
  %359 = load i64, i64* %9, align 8
  %360 = call i32 @INTVAL(i64 %359)
  store i32 %360, i32* %6, align 4
  %361 = load i64, i64* %8, align 8
  %362 = call i64 @GET_CODE(i64 %361)
  %363 = load i64, i64* @REG, align 8
  %364 = icmp ne i64 %362, %363
  br i1 %364, label %368, label %365

365:                                              ; preds = %348
  %366 = load i32, i32* %6, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %365, %348
  br label %384

369:                                              ; preds = %365
  %370 = load i64, i64* %8, align 8
  %371 = call i32 @REGNO(i64 %370)
  %372 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %369
  %375 = load i64, i64* %8, align 8
  %376 = call i32 @REGNO(i64 %375)
  %377 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  br label %384

380:                                              ; preds = %374, %369
  %381 = load i64, i64* %1, align 8
  %382 = call i32 @remove_insn(i64 %381)
  br label %384

383:                                              ; preds = %341, %334, %331, %317, %311, %308
  br label %384

384:                                              ; preds = %383, %380, %379, %368, %305, %284, %275, %264, %252, %210, %209, %198, %135, %114, %105, %94, %82, %42
  %385 = load i64, i64* %3, align 8
  store i64 %385, i64* %1, align 8
  br label %32

386:                                              ; preds = %29, %32
  ret void
}

declare dso_local i32 @s390_update_frame_layout(...) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @store_multiple_operation(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @eliminate_constant_term(i32, i64*) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @save_gprs(i64, i32, i32, i32) #1

declare dso_local i64 @emit_insn_before(i64, i64) #1

declare dso_local i32 @INSN_ADDRESSES_NEW(i64, i32) #1

declare dso_local i32 @remove_insn(i64) #1

declare dso_local i64 @load_multiple_operation(i64, i32) #1

declare dso_local i64 @restore_gprs(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
