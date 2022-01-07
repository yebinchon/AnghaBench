; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_epilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ix86_frame = type { i32, i32 }

@frame_pointer_needed = common dso_local global i32 0, align 4
@current_function_sp_is_unchanging = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TARGET_EPILOGUE_USING_MOVE = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@TARGET_USE_LEAVE = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i64 0, align 8
@EH_RETURN_STACKADJ_RTX = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@current_function_pops_args = common dso_local global i32 0, align 4
@current_function_args_size = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_epilogue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ix86_frame, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @frame_pointer_needed, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* @current_function_sp_is_unchanging, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i1 [ true, %1 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = call i32 @ix86_compute_frame_layout(%struct.ix86_frame* %5)
  %20 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* @current_function_calls_eh_return, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %24, %16
  %31 = load i32, i32* @UNITS_PER_WORD, align 4
  %32 = sub nsw i32 0, %31
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 1
  br i1 %40, label %90, label %41

41:                                               ; preds = %37, %30
  %42 = load i64, i64* @TARGET_EPILOGUE_USING_MOVE, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %90, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %55, %44, %41
  %60 = load i32, i32* @frame_pointer_needed, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %66, %62, %59
  %71 = load i32, i32* @frame_pointer_needed, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i64, i64* @TARGET_USE_LEAVE, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %90, label %87

87:                                               ; preds = %83, %76, %73, %70
  %88 = load i64, i64* @current_function_calls_eh_return, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %225

90:                                               ; preds = %87, %83, %66, %55, %51, %37
  %91 = load i32, i32* @frame_pointer_needed, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96, %90
  %101 = load i64, i64* @stack_pointer_rtx, align 8
  %102 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %2, align 4
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i32
  %107 = call i32 @ix86_emit_restore_regs_using_mov(i64 %101, i32 %103, i32 %106)
  br label %115

108:                                              ; preds = %96, %93
  %109 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %2, align 4
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i32
  %114 = call i32 @ix86_emit_restore_regs_using_mov(i64 %109, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %108, %100
  %116 = load i32, i32* %2, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %166

118:                                              ; preds = %115
  %119 = load i64, i64* @EH_RETURN_STACKADJ_RTX, align 8
  store i64 %119, i64* %8, align 8
  %120 = load i32, i32* @frame_pointer_needed, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load i32, i32* @Pmode, align 4
  %124 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i64 @gen_rtx_PLUS(i32 %123, i64 %124, i64 %125)
  store i64 %126, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i32, i32* @UNITS_PER_WORD, align 4
  %129 = call i64 @plus_constant(i64 %127, i32 %128)
  store i64 %129, i64* %7, align 8
  %130 = load i32, i32* @VOIDmode, align 4
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @gen_rtx_SET(i32 %130, i64 %131, i64 %132)
  %134 = call i32 @emit_insn(i32 %133)
  %135 = load i32, i32* @Pmode, align 4
  %136 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %137 = call i64 @gen_rtx_MEM(i32 %135, i64 %136)
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @emit_move_insn(i64 %138, i64 %139)
  %141 = load i64, i64* @stack_pointer_rtx, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @const0_rtx, align 8
  %144 = load i32, i32* %2, align 4
  %145 = call i32 @pro_epilogue_adjust_stack(i64 %141, i64 %142, i64 %143, i32 %144)
  br label %165

146:                                              ; preds = %118
  %147 = load i32, i32* @Pmode, align 4
  %148 = load i64, i64* @stack_pointer_rtx, align 8
  %149 = load i64, i64* %8, align 8
  %150 = call i64 @gen_rtx_PLUS(i32 %147, i64 %148, i64 %149)
  store i64 %150, i64* %7, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @UNITS_PER_WORD, align 4
  %157 = mul nsw i32 %155, %156
  %158 = add nsw i32 %153, %157
  %159 = call i64 @plus_constant(i64 %151, i32 %158)
  store i64 %159, i64* %7, align 8
  %160 = load i32, i32* @VOIDmode, align 4
  %161 = load i64, i64* @stack_pointer_rtx, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @gen_rtx_SET(i32 %160, i64 %161, i64 %162)
  %164 = call i32 @emit_insn(i32 %163)
  br label %165

165:                                              ; preds = %146, %122
  br label %224

166:                                              ; preds = %115
  %167 = load i32, i32* @frame_pointer_needed, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %166
  %170 = load i64, i64* @stack_pointer_rtx, align 8
  %171 = load i64, i64* @stack_pointer_rtx, align 8
  %172 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @UNITS_PER_WORD, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %173, %177
  %179 = call i64 @GEN_INT(i32 %178)
  %180 = load i32, i32* %2, align 4
  %181 = call i32 @pro_epilogue_adjust_stack(i64 %170, i64 %171, i64 %179, i32 %180)
  br label %223

182:                                              ; preds = %166
  %183 = load i64, i64* @TARGET_USE_LEAVE, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %182
  %186 = load i64, i64* @optimize_size, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %185
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %188, %185, %182
  %196 = load i64, i64* @TARGET_64BIT, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = call i32 (...) @gen_leave_rex64()
  br label %202

200:                                              ; preds = %195
  %201 = call i32 (...) @gen_leave()
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = call i32 @emit_insn(i32 %203)
  br label %222

205:                                              ; preds = %188
  %206 = load i64, i64* @stack_pointer_rtx, align 8
  %207 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %208 = load i64, i64* @const0_rtx, align 8
  %209 = load i32, i32* %2, align 4
  %210 = call i32 @pro_epilogue_adjust_stack(i64 %206, i64 %207, i64 %208, i32 %209)
  %211 = load i64, i64* @TARGET_64BIT, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %205
  %214 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %215 = call i32 @gen_popdi1(i64 %214)
  %216 = call i32 @emit_insn(i32 %215)
  br label %221

217:                                              ; preds = %205
  %218 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %219 = call i32 @gen_popsi1(i64 %218)
  %220 = call i32 @emit_insn(i32 %219)
  br label %221

221:                                              ; preds = %217, %213
  br label %222

222:                                              ; preds = %221, %202
  br label %223

223:                                              ; preds = %222, %169
  br label %224

224:                                              ; preds = %223, %165
  br label %309

225:                                              ; preds = %87
  %226 = load i32, i32* %4, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* @frame_pointer_needed, align 4
  %230 = call i32 @gcc_assert(i32 %229)
  %231 = load i64, i64* @stack_pointer_rtx, align 8
  %232 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i64 @GEN_INT(i32 %233)
  %235 = load i32, i32* %2, align 4
  %236 = call i32 @pro_epilogue_adjust_stack(i64 %231, i64 %232, i64 %234, i32 %235)
  br label %250

237:                                              ; preds = %225
  %238 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load i64, i64* @stack_pointer_rtx, align 8
  %243 = load i64, i64* @stack_pointer_rtx, align 8
  %244 = getelementptr inbounds %struct.ix86_frame, %struct.ix86_frame* %5, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @GEN_INT(i32 %245)
  %247 = load i32, i32* %2, align 4
  %248 = call i32 @pro_epilogue_adjust_stack(i64 %242, i64 %243, i64 %246, i32 %247)
  br label %249

249:                                              ; preds = %241, %237
  br label %250

250:                                              ; preds = %249, %228
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %276, %250
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %279

255:                                              ; preds = %251
  %256 = load i32, i32* %3, align 4
  %257 = call i64 @ix86_save_reg(i32 %256, i32 0)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %255
  %260 = load i64, i64* @TARGET_64BIT, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load i32, i32* @Pmode, align 4
  %264 = load i32, i32* %3, align 4
  %265 = call i64 @gen_rtx_REG(i32 %263, i32 %264)
  %266 = call i32 @gen_popdi1(i64 %265)
  %267 = call i32 @emit_insn(i32 %266)
  br label %274

268:                                              ; preds = %259
  %269 = load i32, i32* @Pmode, align 4
  %270 = load i32, i32* %3, align 4
  %271 = call i64 @gen_rtx_REG(i32 %269, i32 %270)
  %272 = call i32 @gen_popsi1(i64 %271)
  %273 = call i32 @emit_insn(i32 %272)
  br label %274

274:                                              ; preds = %268, %262
  br label %275

275:                                              ; preds = %274, %255
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %3, align 4
  br label %251

279:                                              ; preds = %251
  %280 = load i32, i32* @frame_pointer_needed, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %308

282:                                              ; preds = %279
  %283 = load i64, i64* @TARGET_USE_LEAVE, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %282
  %286 = load i64, i64* @TARGET_64BIT, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = call i32 (...) @gen_leave_rex64()
  br label %292

290:                                              ; preds = %285
  %291 = call i32 (...) @gen_leave()
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  %294 = call i32 @emit_insn(i32 %293)
  br label %307

295:                                              ; preds = %282
  %296 = load i64, i64* @TARGET_64BIT, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %300 = call i32 @gen_popdi1(i64 %299)
  %301 = call i32 @emit_insn(i32 %300)
  br label %306

302:                                              ; preds = %295
  %303 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %304 = call i32 @gen_popsi1(i64 %303)
  %305 = call i32 @emit_insn(i32 %304)
  br label %306

306:                                              ; preds = %302, %298
  br label %307

307:                                              ; preds = %306, %292
  br label %308

308:                                              ; preds = %307, %279
  br label %309

309:                                              ; preds = %308, %224
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %309
  %317 = load i64, i64* @stack_pointer_rtx, align 8
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = call i64 @GEN_INT(i32 -4)
  %324 = call i32 @gen_addsi3(i64 %317, i64 %322, i64 %323)
  %325 = call i32 @emit_insn(i32 %324)
  br label %326

326:                                              ; preds = %316, %309
  %327 = load i32, i32* %2, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  br label %368

330:                                              ; preds = %326
  %331 = load i32, i32* @current_function_pops_args, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %365

333:                                              ; preds = %330
  %334 = load i64, i64* @current_function_args_size, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %365

336:                                              ; preds = %333
  %337 = load i32, i32* @current_function_pops_args, align 4
  %338 = call i64 @GEN_INT(i32 %337)
  store i64 %338, i64* %9, align 8
  %339 = load i32, i32* @current_function_pops_args, align 4
  %340 = icmp sge i32 %339, 65536
  br i1 %340, label %341, label %360

341:                                              ; preds = %336
  %342 = load i32, i32* @SImode, align 4
  %343 = call i64 @gen_rtx_REG(i32 %342, i32 2)
  store i64 %343, i64* %10, align 8
  %344 = load i64, i64* @TARGET_64BIT, align 8
  %345 = icmp ne i64 %344, 0
  %346 = xor i1 %345, true
  %347 = zext i1 %346 to i32
  %348 = call i32 @gcc_assert(i32 %347)
  %349 = load i64, i64* %10, align 8
  %350 = call i32 @gen_popsi1(i64 %349)
  %351 = call i32 @emit_insn(i32 %350)
  %352 = load i64, i64* @stack_pointer_rtx, align 8
  %353 = load i64, i64* @stack_pointer_rtx, align 8
  %354 = load i64, i64* %9, align 8
  %355 = call i32 @gen_addsi3(i64 %352, i64 %353, i64 %354)
  %356 = call i32 @emit_insn(i32 %355)
  %357 = load i64, i64* %10, align 8
  %358 = call i32 @gen_return_indirect_internal(i64 %357)
  %359 = call i32 @emit_jump_insn(i32 %358)
  br label %364

360:                                              ; preds = %336
  %361 = load i64, i64* %9, align 8
  %362 = call i32 @gen_return_pop_internal(i64 %361)
  %363 = call i32 @emit_jump_insn(i32 %362)
  br label %364

364:                                              ; preds = %360, %341
  br label %368

365:                                              ; preds = %333, %330
  %366 = call i32 (...) @gen_return_internal()
  %367 = call i32 @emit_jump_insn(i32 %366)
  br label %368

368:                                              ; preds = %329, %365, %364
  ret void
}

declare dso_local i32 @ix86_compute_frame_layout(%struct.ix86_frame*) #1

declare dso_local i32 @ix86_emit_restore_regs_using_mov(i64, i32, i32) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_MEM(i32, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @pro_epilogue_adjust_stack(i64, i64, i64, i32) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i32 @gen_leave_rex64(...) #1

declare dso_local i32 @gen_leave(...) #1

declare dso_local i32 @gen_popdi1(i64) #1

declare dso_local i32 @gen_popsi1(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ix86_save_reg(i32, i32) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_addsi3(i64, i64, i64) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_return_indirect_internal(i64) #1

declare dso_local i32 @gen_return_pop_internal(i64) #1

declare dso_local i32 @gen_return_internal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
