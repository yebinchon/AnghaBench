; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_cond_exec_process_if_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_cond_exec_process_if_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i64 }

@NULL_RTX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MAX_CONDITIONAL_EXECUTE = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@REG_BR_PROB = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i64 0, align 8
@NULL_BLOCK = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"%d insn%s converted to conditional execution.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" was\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"s were\00", align 1
@cond_exec_changed_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @cond_exec_process_if_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_exec_process_if_block(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* @NULL_RTX, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* @NULL_RTX, align 8
  store i64 %39, i64* %13, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %316

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 9
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %57, %42, %2
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @BB_END(i64 %70)
  %72 = call i64 @cond_exec_get_condition(i32 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %3, align 4
  br label %316

77:                                               ; preds = %69
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @BB_END(i64 %78)
  %80 = call i32 @onlyjump_p(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %316

84:                                               ; preds = %77
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @first_active_insn(i64 %85)
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i64 @last_active_insn(i64 %87, i32 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i8* @count_bb_insns(i64 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  store i32 %92, i32* %20, align 4
  %95 = load i32, i32* @MAX_CONDITIONAL_EXECUTE, align 4
  store i32 %95, i32* %14, align 4
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %84
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 %99, 2
  store i32 %100, i32* %14, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @first_active_insn(i64 %101)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = call i64 @last_active_insn(i64 %103, i32 %104)
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i8* @count_bb_insns(i64 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %20, align 4
  br label %113

113:                                              ; preds = %98, %84
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %3, align 4
  br label %316

119:                                              ; preds = %113
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %16, align 8
  %121 = load i64, i64* %16, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @BB_END(i64 %122)
  %124 = call i32 @reversed_comparison_code(i64 %121, i32 %123)
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* @UNKNOWN, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %119
  %129 = load i32, i32* %21, align 4
  %130 = load i64, i64* %16, align 8
  %131 = call i32 @GET_MODE(i64 %130)
  %132 = load i64, i64* %16, align 8
  %133 = call i64 @XEXP(i64 %132, i32 0)
  %134 = load i64, i64* %16, align 8
  %135 = call i64 @XEXP(i64 %134, i32 1)
  %136 = call i64 @gen_rtx_fmt_ee(i32 %129, i32 %131, i64 %133, i64 %135)
  store i64 %136, i64* %17, align 8
  br label %139

137:                                              ; preds = %119
  %138 = load i64, i64* @NULL_RTX, align 8
  store i64 %138, i64* %17, align 8
  br label %139

139:                                              ; preds = %137, %128
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @BB_END(i64 %140)
  %142 = load i32, i32* @REG_BR_PROB, align 4
  %143 = load i64, i64* @NULL_RTX, align 8
  %144 = call i64 @find_reg_note(i32 %141, i32 %142, i64 %143)
  store i64 %144, i64* %18, align 8
  %145 = load i64, i64* %18, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load i64, i64* %18, align 8
  %149 = call i64 @XEXP(i64 %148, i32 0)
  store i64 %149, i64* %18, align 8
  %150 = load i64, i64* @REG_BR_PROB_BASE, align 8
  %151 = load i64, i64* %18, align 8
  %152 = call i64 @INTVAL(i64 %151)
  %153 = sub nsw i64 %150, %152
  %154 = call i64 @GEN_INT(i64 %153)
  store i64 %154, i64* %19, align 8
  br label %157

155:                                              ; preds = %139
  %156 = load i64, i64* @NULL_RTX, align 8
  store i64 %156, i64* %19, align 8
  br label %157

157:                                              ; preds = %155, %147
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %256

162:                                              ; preds = %157
  %163 = load i64, i64* %6, align 8
  store i64 %163, i64* %22, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %23, align 8
  %167 = load i64, i64* %17, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  br label %313

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %251, %170
  %172 = load i64, i64* %22, align 8
  %173 = call i64 @block_fallthru(i64 %172)
  store i64 %173, i64* %22, align 8
  %174 = load i64, i64* %22, align 8
  %175 = call i64 @first_active_insn(i64 %174)
  store i64 %175, i64* %24, align 8
  %176 = load i64, i64* %22, align 8
  %177 = load i32, i32* @TRUE, align 4
  %178 = call i64 @last_active_insn(i64 %176, i32 %177)
  store i64 %178, i64* %25, align 8
  %179 = load i64, i64* %24, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %171
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = load i64, i64* %24, align 8
  %184 = load i64, i64* %25, align 8
  %185 = load i64, i64* %17, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load i32, i32* @FALSE, align 4
  %188 = call i32 @cond_exec_process_insns(%struct.TYPE_9__* %182, i64 %183, i64 %184, i64 %185, i64 %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %181
  br label %313

191:                                              ; preds = %181, %171
  %192 = load i64, i64* %22, align 8
  %193 = call i32 @BB_END(i64 %192)
  %194 = call i32 @onlyjump_p(i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %313

197:                                              ; preds = %191
  %198 = load i64, i64* %22, align 8
  %199 = call i32 @BB_END(i64 %198)
  %200 = call i64 @cond_exec_get_condition(i32 %199)
  store i64 %200, i64* %26, align 8
  %201 = load i64, i64* %26, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  br label %313

204:                                              ; preds = %197
  %205 = load i64, i64* %26, align 8
  %206 = load i64, i64* %22, align 8
  %207 = call i32 @BB_END(i64 %206)
  %208 = call i32 @reversed_comparison_code(i64 %205, i32 %207)
  store i32 %208, i32* %28, align 4
  %209 = load i32, i32* %28, align 4
  %210 = load i32, i32* @UNKNOWN, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %313

213:                                              ; preds = %204
  %214 = load i32, i32* %28, align 4
  %215 = load i64, i64* %26, align 8
  %216 = call i32 @GET_MODE(i64 %215)
  %217 = load i64, i64* %26, align 8
  %218 = call i64 @XEXP(i64 %217, i32 0)
  %219 = load i64, i64* %26, align 8
  %220 = call i64 @XEXP(i64 %219, i32 1)
  %221 = call i64 @gen_rtx_fmt_ee(i32 %214, i32 %216, i64 %218, i64 %220)
  store i64 %221, i64* %27, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %213
  %227 = load i64, i64* %26, align 8
  %228 = call i32 @GET_MODE(i64 %227)
  %229 = load i64, i64* %16, align 8
  %230 = load i64, i64* %26, align 8
  %231 = call i64 @gen_rtx_AND(i32 %228, i64 %229, i64 %230)
  store i64 %231, i64* %26, align 8
  %232 = load i64, i64* %26, align 8
  %233 = call i32 @GET_MODE(i64 %232)
  %234 = load i64, i64* %17, align 8
  %235 = load i64, i64* %27, align 8
  %236 = call i64 @gen_rtx_IOR(i32 %233, i64 %234, i64 %235)
  store i64 %236, i64* %27, align 8
  br label %248

237:                                              ; preds = %213
  %238 = load i64, i64* %26, align 8
  %239 = call i32 @GET_MODE(i64 %238)
  %240 = load i64, i64* %16, align 8
  %241 = load i64, i64* %26, align 8
  %242 = call i64 @gen_rtx_IOR(i32 %239, i64 %240, i64 %241)
  store i64 %242, i64* %26, align 8
  %243 = load i64, i64* %26, align 8
  %244 = call i32 @GET_MODE(i64 %243)
  %245 = load i64, i64* %17, align 8
  %246 = load i64, i64* %27, align 8
  %247 = call i64 @gen_rtx_AND(i32 %244, i64 %245, i64 %246)
  store i64 %247, i64* %27, align 8
  br label %248

248:                                              ; preds = %237, %226
  %249 = load i64, i64* %26, align 8
  store i64 %249, i64* %16, align 8
  %250 = load i64, i64* %27, align 8
  store i64 %250, i64* %17, align 8
  br label %251

251:                                              ; preds = %248
  %252 = load i64, i64* %22, align 8
  %253 = load i64, i64* %23, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %171, label %255

255:                                              ; preds = %251
  br label %256

256:                                              ; preds = %255, %157
  %257 = load i64, i64* %8, align 8
  %258 = load i64, i64* @NULL_BLOCK, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  store i32 %260, i32* %15, align 4
  %261 = load i64, i64* %11, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %256
  %264 = load i64, i64* %17, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %263
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %268 = load i64, i64* %10, align 8
  %269 = load i64, i64* %11, align 8
  %270 = load i64, i64* %17, align 8
  %271 = load i64, i64* %19, align 8
  %272 = load i32, i32* %15, align 4
  %273 = call i32 @cond_exec_process_insns(%struct.TYPE_9__* %267, i64 %268, i64 %269, i64 %270, i64 %271, i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %266, %263
  br label %313

276:                                              ; preds = %266, %256
  %277 = load i64, i64* %8, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  %280 = load i64, i64* %13, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %284 = load i64, i64* %12, align 8
  %285 = load i64, i64* %13, align 8
  %286 = load i64, i64* %16, align 8
  %287 = load i64, i64* %18, align 8
  %288 = load i32, i32* @TRUE, align 4
  %289 = call i32 @cond_exec_process_insns(%struct.TYPE_9__* %283, i64 %284, i64 %285, i64 %286, i64 %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %282
  br label %313

292:                                              ; preds = %282, %279, %276
  %293 = call i32 (...) @apply_change_group()
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* @FALSE, align 4
  store i32 %296, i32* %3, align 4
  br label %316

297:                                              ; preds = %292
  %298 = load i64, i64* @dump_file, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %297
  %301 = load i64, i64* @dump_file, align 8
  %302 = load i32, i32* %20, align 4
  %303 = load i32, i32* %20, align 4
  %304 = icmp eq i32 %303, 1
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %307 = call i32 @fprintf(i64 %301, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %302, i8* %306)
  br label %308

308:                                              ; preds = %300, %297
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %310 = call i32 @merge_if_block(%struct.TYPE_9__* %309)
  %311 = load i32, i32* @TRUE, align 4
  store i32 %311, i32* @cond_exec_changed_p, align 4
  %312 = load i32, i32* @TRUE, align 4
  store i32 %312, i32* %3, align 4
  br label %316

313:                                              ; preds = %291, %275, %212, %203, %196, %190, %169
  %314 = call i32 @cancel_changes(i32 0)
  %315 = load i32, i32* @FALSE, align 4
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %313, %308, %295, %117, %82, %75, %55
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i64 @cond_exec_get_condition(i32) #1

declare dso_local i32 @BB_END(i64) #1

declare dso_local i32 @onlyjump_p(i32) #1

declare dso_local i64 @first_active_insn(i64) #1

declare dso_local i64 @last_active_insn(i64, i32) #1

declare dso_local i8* @count_bb_insns(i64) #1

declare dso_local i32 @reversed_comparison_code(i64, i32) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @find_reg_note(i32, i32, i64) #1

declare dso_local i64 @GEN_INT(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @block_fallthru(i64) #1

declare dso_local i32 @cond_exec_process_insns(%struct.TYPE_9__*, i64, i64, i64, i64, i32) #1

declare dso_local i64 @gen_rtx_AND(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_IOR(i32, i64, i64) #1

declare dso_local i32 @apply_change_group(...) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i8*) #1

declare dso_local i32 @merge_if_block(%struct.TYPE_9__*) #1

declare dso_local i32 @cancel_changes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
