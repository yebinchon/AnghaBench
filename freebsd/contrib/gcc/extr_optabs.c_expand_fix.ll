; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_fix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64 }

@VOIDmode = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@ftrunc_optab = common dso_local global i32 0, align 4
@UNSIGNED_FIX = common dso_local global i32 0, align 4
@FIX = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@sub_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@xor_optab = common dso_local global i32 0, align 4
@mov_optab = common dso_local global %struct.TYPE_10__* null, align 8
@REG_EQUAL = common dso_local global i32 0, align 4
@SImode = common dso_local global i64 0, align 8
@ufix_optab = common dso_local global %struct.TYPE_9__* null, align 8
@sfix_optab = common dso_local global %struct.TYPE_9__* null, align 8
@LCT_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_fix(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @GET_MODE(i64 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %128, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @VOIDmode, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %131

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @GET_MODE(i64 %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %124, %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @VOIDmode, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %127

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @can_fix_p(i64 %43, i32 %44, i32 %45, i32* %11)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @CODE_FOR_nothing, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @GET_MODE(i64 %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @can_fix_p(i64 %61, i32 %62, i32 0, i32* %11)
  store i32 %63, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %56, %50, %40
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @CODE_FOR_nothing, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %123

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @GET_MODE(i64 %71)
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @convert_to_mode(i32 %75, i64 %76, i32 0)
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i64, i64* %5, align 8
  %83 = call i64 @GET_MODE(i64 %82)
  %84 = call i64 @gen_reg_rtx(i64 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @GET_MODE(i64 %85)
  %87 = load i32, i32* @ftrunc_optab, align 4
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i64 @expand_unop(i64 %86, i32 %87, i64 %88, i64 %89, i32 0)
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @GET_MODE(i64 %94)
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = call i64 @gen_reg_rtx(i64 %99)
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i32, i32* %7, align 4
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @UNSIGNED_FIX, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @FIX, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = call i32 @emit_unop_insn(i32 %102, i64 %103, i64 %104, i32 %112)
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @convert_move(i64 %118, i64 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %111
  br label %341

123:                                              ; preds = %64
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @GET_MODE_WIDER_MODE(i32 %125)
  store i32 %126, i32* %10, align 4
  br label %36

127:                                              ; preds = %36
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @GET_MODE_WIDER_MODE(i32 %129)
  store i32 %130, i32* %9, align 4
  br label %28

131:                                              ; preds = %28
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %258

134:                                              ; preds = %131
  %135 = load i64, i64* %4, align 8
  %136 = call i64 @GET_MODE(i64 %135)
  %137 = call i32 @GET_MODE_BITSIZE(i64 %136)
  %138 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %258

140:                                              ; preds = %134
  %141 = load i64, i64* %5, align 8
  %142 = call i64 @GET_MODE(i64 %141)
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %254, %140
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @VOIDmode, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %257

148:                                              ; preds = %144
  %149 = load i32, i32* @CODE_FOR_nothing, align 4
  %150 = load i64, i64* %4, align 8
  %151 = call i64 @GET_MODE(i64 %150)
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @can_fix_p(i64 %151, i32 %152, i32 0, i32* %11)
  %154 = icmp ne i32 %149, %153
  br i1 %154, label %155, label %253

155:                                              ; preds = %148
  %156 = load i64, i64* %4, align 8
  %157 = call i64 @GET_MODE(i64 %156)
  %158 = call i32 @GET_MODE_BITSIZE(i64 %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @real_2expN(i32* %15, i32 %160)
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i64 @CONST_DOUBLE_FROM_REAL_VALUE(i32 %162, i32 %163)
  store i64 %164, i64* %16, align 8
  %165 = call i64 (...) @gen_label_rtx()
  store i64 %165, i64* %17, align 8
  %166 = call i64 (...) @gen_label_rtx()
  store i64 %166, i64* %18, align 8
  %167 = load i32, i32* %9, align 4
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %5, align 8
  %170 = call i64 @GET_MODE(i64 %169)
  %171 = icmp ne i64 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %155
  %173 = load i32, i32* %9, align 4
  %174 = load i64, i64* %5, align 8
  %175 = call i64 @convert_to_mode(i32 %173, i64 %174, i32 0)
  store i64 %175, i64* %5, align 8
  br label %176

176:                                              ; preds = %172, %155
  %177 = call i32 (...) @do_pending_stack_adjust()
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* %16, align 8
  %180 = load i32, i32* @GE, align 4
  %181 = load i64, i64* @NULL_RTX, align 8
  %182 = load i64, i64* %5, align 8
  %183 = call i64 @GET_MODE(i64 %182)
  %184 = load i64, i64* %17, align 8
  %185 = call i32 @emit_cmp_and_jump_insns(i64 %178, i64 %179, i32 %180, i64 %181, i64 %183, i32 0, i64 %184)
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* %5, align 8
  call void @expand_fix(i64 %186, i64 %187, i32 0)
  %188 = load i64, i64* %18, align 8
  %189 = call i32 @gen_jump(i64 %188)
  %190 = call i32 @emit_jump_insn(i32 %189)
  %191 = call i32 (...) @emit_barrier()
  %192 = load i64, i64* %17, align 8
  %193 = call i32 @emit_label(i64 %192)
  %194 = load i64, i64* %5, align 8
  %195 = call i64 @GET_MODE(i64 %194)
  %196 = load i32, i32* @sub_optab, align 4
  %197 = load i64, i64* %5, align 8
  %198 = load i64, i64* %16, align 8
  %199 = load i64, i64* @NULL_RTX, align 8
  %200 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %201 = call i64 @expand_binop(i64 %195, i32 %196, i64 %197, i64 %198, i64 %199, i32 0, i32 %200)
  store i64 %201, i64* %8, align 8
  %202 = load i64, i64* %4, align 8
  %203 = load i64, i64* %8, align 8
  call void @expand_fix(i64 %202, i64 %203, i32 0)
  %204 = load i64, i64* %4, align 8
  %205 = call i64 @GET_MODE(i64 %204)
  %206 = load i32, i32* @xor_optab, align 4
  %207 = load i64, i64* %4, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sub nsw i32 %208, 1
  %210 = shl i32 1, %209
  %211 = load i64, i64* %4, align 8
  %212 = call i64 @GET_MODE(i64 %211)
  %213 = call i64 @gen_int_mode(i32 %210, i64 %212)
  %214 = load i64, i64* %4, align 8
  %215 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %216 = call i64 @expand_binop(i64 %205, i32 %206, i64 %207, i64 %213, i64 %214, i32 1, i32 %215)
  store i64 %216, i64* %8, align 8
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* %4, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %176
  %221 = load i64, i64* %4, align 8
  %222 = load i64, i64* %8, align 8
  %223 = call i64 @emit_move_insn(i64 %221, i64 %222)
  br label %224

224:                                              ; preds = %220, %176
  %225 = load i64, i64* %18, align 8
  %226 = call i32 @emit_label(i64 %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mov_optab, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = load i64, i64* %4, align 8
  %231 = call i64 @GET_MODE(i64 %230)
  %232 = trunc i64 %231 to i32
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @CODE_FOR_nothing, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %224
  %240 = load i64, i64* %4, align 8
  %241 = load i64, i64* %4, align 8
  %242 = call i64 @emit_move_insn(i64 %240, i64 %241)
  store i64 %242, i64* %19, align 8
  %243 = load i64, i64* %19, align 8
  %244 = load i32, i32* @REG_EQUAL, align 4
  %245 = load i32, i32* @UNSIGNED_FIX, align 4
  %246 = load i64, i64* %4, align 8
  %247 = call i64 @GET_MODE(i64 %246)
  %248 = load i64, i64* %5, align 8
  %249 = call i64 @copy_rtx(i64 %248)
  %250 = call i32 @gen_rtx_fmt_e(i32 %245, i64 %247, i64 %249)
  %251 = call i32 @set_unique_reg_note(i64 %243, i32 %244, i32 %250)
  br label %252

252:                                              ; preds = %239, %224
  br label %341

253:                                              ; preds = %148
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @GET_MODE_WIDER_MODE(i32 %255)
  store i32 %256, i32* %9, align 4
  br label %144

257:                                              ; preds = %144
  br label %258

258:                                              ; preds = %257, %134, %131
  %259 = load i64, i64* %4, align 8
  %260 = call i64 @GET_MODE(i64 %259)
  %261 = call i64 @GET_MODE_SIZE(i64 %260)
  %262 = load i64, i64* @SImode, align 8
  %263 = call i64 @GET_MODE_SIZE(i64 %262)
  %264 = icmp slt i64 %261, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %258
  %266 = load i64, i64* @SImode, align 8
  %267 = call i64 @gen_reg_rtx(i64 %266)
  store i64 %267, i64* %8, align 8
  %268 = load i64, i64* %8, align 8
  %269 = load i64, i64* %5, align 8
  %270 = load i32, i32* %6, align 4
  call void @expand_fix(i64 %268, i64 %269, i32 %270)
  br label %322

271:                                              ; preds = %258
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ufix_optab, align 8
  br label %278

276:                                              ; preds = %271
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sfix_optab, align 8
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi %struct.TYPE_9__* [ %275, %274 ], [ %277, %276 ]
  store %struct.TYPE_9__* %279, %struct.TYPE_9__** %23, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %281, align 8
  %283 = load i64, i64* %4, align 8
  %284 = call i64 @GET_MODE(i64 %283)
  %285 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %282, i64 %284
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = load i64, i64* %5, align 8
  %288 = call i64 @GET_MODE(i64 %287)
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %22, align 8
  %292 = load i64, i64* %22, align 8
  %293 = call i32 @gcc_assert(i64 %292)
  %294 = call i32 (...) @start_sequence()
  %295 = load i64, i64* %22, align 8
  %296 = load i64, i64* @NULL_RTX, align 8
  %297 = load i32, i32* @LCT_CONST, align 4
  %298 = load i64, i64* %4, align 8
  %299 = call i64 @GET_MODE(i64 %298)
  %300 = load i64, i64* %5, align 8
  %301 = load i64, i64* %5, align 8
  %302 = call i64 @GET_MODE(i64 %301)
  %303 = call i64 @emit_library_call_value(i64 %295, i64 %296, i32 %297, i64 %299, i32 1, i64 %300, i64 %302)
  store i64 %303, i64* %21, align 8
  %304 = call i64 (...) @get_insns()
  store i64 %304, i64* %20, align 8
  %305 = call i32 (...) @end_sequence()
  %306 = load i64, i64* %20, align 8
  %307 = load i64, i64* %8, align 8
  %308 = load i64, i64* %21, align 8
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %278
  %312 = load i32, i32* @UNSIGNED_FIX, align 4
  br label %315

313:                                              ; preds = %278
  %314 = load i32, i32* @FIX, align 4
  br label %315

315:                                              ; preds = %313, %311
  %316 = phi i32 [ %312, %311 ], [ %314, %313 ]
  %317 = load i64, i64* %4, align 8
  %318 = call i64 @GET_MODE(i64 %317)
  %319 = load i64, i64* %5, align 8
  %320 = call i32 @gen_rtx_fmt_e(i32 %316, i64 %318, i64 %319)
  %321 = call i32 @emit_libcall_block(i64 %306, i64 %307, i64 %308, i32 %320)
  br label %322

322:                                              ; preds = %315, %265
  %323 = load i64, i64* %8, align 8
  %324 = load i64, i64* %4, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %341

326:                                              ; preds = %322
  %327 = load i64, i64* %4, align 8
  %328 = call i64 @GET_MODE(i64 %327)
  %329 = load i64, i64* %8, align 8
  %330 = call i64 @GET_MODE(i64 %329)
  %331 = icmp eq i64 %328, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %326
  %333 = load i64, i64* %4, align 8
  %334 = load i64, i64* %8, align 8
  %335 = call i64 @emit_move_insn(i64 %333, i64 %334)
  br label %340

336:                                              ; preds = %326
  %337 = load i64, i64* %4, align 8
  %338 = load i64, i64* %8, align 8
  %339 = call i32 @convert_move(i64 %337, i64 %338, i32 0)
  br label %340

340:                                              ; preds = %336, %332
  br label %341

341:                                              ; preds = %122, %252, %340, %322
  ret void
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @can_fix_p(i64, i32, i32, i32*) #1

declare dso_local i64 @convert_to_mode(i32, i64, i32) #1

declare dso_local i64 @gen_reg_rtx(i64) #1

declare dso_local i64 @expand_unop(i64, i32, i64, i64, i32) #1

declare dso_local i32 @emit_unop_insn(i32, i64, i64, i32) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i64) #1

declare dso_local i32 @real_2expN(i32*, i32) #1

declare dso_local i64 @CONST_DOUBLE_FROM_REAL_VALUE(i32, i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i64, i64, i32, i64) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_jump(i64) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i64 @expand_binop(i64, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @gen_int_mode(i32, i64) #1

declare dso_local i64 @emit_move_insn(i64, i64) #1

declare dso_local i32 @set_unique_reg_note(i64, i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_e(i32, i64, i64) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @emit_library_call_value(i64, i64, i32, i64, i32, i64, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_libcall_block(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
