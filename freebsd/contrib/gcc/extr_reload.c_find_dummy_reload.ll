; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_dummy_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_dummy_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@UNITS_PER_WORD = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@const0_rtx = common dso_local global i64 0, align 8
@this_insn = common dso_local global i32 0, align 4
@reg_class_contents = common dso_local global i32* null, align 8
@hard_regs_live_known = common dso_local global i64 0, align 8
@REG_UNUSED = common dso_local global i32 0, align 4
@REG_DEAD = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_8__* null, align 8
@rld = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64*, i64*, i32, i32, i32, i32, i32)* @find_dummy_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_dummy_reload(i64 %0, i64 %1, i64* %2, i64* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @GET_MODE_SIZE(i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = call i64 @GET_MODE_SIZE(i32 %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %9
  %41 = load i32, i32* %16, align 4
  %42 = call i64 @GET_MODE_SIZE(i32 %41)
  %43 = load i64, i64* @UNITS_PER_WORD, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %15, align 4
  %47 = call i64 @GET_MODE_SIZE(i32 %46)
  %48 = load i64, i64* @UNITS_PER_WORD, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  store i64 0, i64* %10, align 8
  br label %380

51:                                               ; preds = %45, %9
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i64, i64* %21, align 8
  %54 = call i64 @GET_CODE(i64 %53)
  %55 = load i64, i64* @SUBREG, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load i64, i64* %21, align 8
  %59 = call i64 @SUBREG_REG(i64 %58)
  %60 = call i64 @REG_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load i64, i64* %21, align 8
  %64 = call i64 @SUBREG_REG(i64 %63)
  %65 = call i32 @REGNO(i64 %64)
  %66 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load i64, i64* %21, align 8
  %70 = call i64 @SUBREG_REG(i64 %69)
  %71 = call i32 @REGNO(i64 %70)
  %72 = load i64, i64* %21, align 8
  %73 = call i64 @SUBREG_REG(i64 %72)
  %74 = call i32 @GET_MODE(i64 %73)
  %75 = load i64, i64* %21, align 8
  %76 = call i32 @SUBREG_BYTE(i64 %75)
  %77 = load i64, i64* %21, align 8
  %78 = call i32 @GET_MODE(i64 %77)
  %79 = call i64 @subreg_regno_offset(i32 %71, i32 %74, i32 %76, i32 %78)
  %80 = load i32, i32* %23, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %23, align 4
  br label %84

84:                                               ; preds = %68, %62, %57
  %85 = load i64, i64* %21, align 8
  %86 = call i64 @SUBREG_REG(i64 %85)
  store i64 %86, i64* %21, align 8
  br label %52

87:                                               ; preds = %52
  br label %88

88:                                               ; preds = %120, %87
  %89 = load i64, i64* %20, align 8
  %90 = call i64 @GET_CODE(i64 %89)
  %91 = load i64, i64* @SUBREG, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  %94 = load i64, i64* %20, align 8
  %95 = call i64 @SUBREG_REG(i64 %94)
  %96 = call i64 @REG_P(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load i64, i64* %20, align 8
  %100 = call i64 @SUBREG_REG(i64 %99)
  %101 = call i32 @REGNO(i64 %100)
  %102 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load i64, i64* %20, align 8
  %106 = call i64 @SUBREG_REG(i64 %105)
  %107 = call i32 @REGNO(i64 %106)
  %108 = load i64, i64* %20, align 8
  %109 = call i64 @SUBREG_REG(i64 %108)
  %110 = call i32 @GET_MODE(i64 %109)
  %111 = load i64, i64* %20, align 8
  %112 = call i32 @SUBREG_BYTE(i64 %111)
  %113 = load i64, i64* %20, align 8
  %114 = call i32 @GET_MODE(i64 %113)
  %115 = call i64 @subreg_regno_offset(i32 %107, i32 %110, i32 %112, i32 %114)
  %116 = load i32, i32* %22, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %22, align 4
  br label %120

120:                                              ; preds = %104, %98, %93
  %121 = load i64, i64* %20, align 8
  %122 = call i64 @SUBREG_REG(i64 %121)
  store i64 %122, i64* %20, align 8
  br label %88

123:                                              ; preds = %88
  %124 = load i64, i64* %20, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @PREFERRED_RELOAD_CLASS(i64 %124, i32 %125)
  store i32 %126, i32* %25, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* @NO_REGS, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %25, align 4
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %130, %123
  %133 = load i64, i64* %21, align 8
  %134 = call i64 @REG_P(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %217

136:                                              ; preds = %132
  %137 = load i64, i64* %21, align 8
  %138 = call i32 @REGNO(i64 %137)
  %139 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %217

141:                                              ; preds = %136
  %142 = load i64, i64* %21, align 8
  %143 = call i32 @REGNO(i64 %142)
  %144 = load i32, i32* %23, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %26, align 4
  %146 = load i32**, i32*** @hard_regno_nregs, align 8
  %147 = load i32, i32* %26, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %27, align 4
  %155 = load i64*, i64** %13, align 8
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %28, align 8
  %157 = load i64, i64* @const0_rtx, align 8
  %158 = load i64*, i64** %13, align 8
  store i64 %157, i64* %158, align 8
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %214

162:                                              ; preds = %141
  %163 = load i32, i32* %26, align 4
  %164 = load i32, i32* %16, align 4
  %165 = call i64 @HARD_REGNO_MODE_OK(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %214

167:                                              ; preds = %162
  %168 = load i32, i32* %26, align 4
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* %27, align 4
  %171 = add i32 %169, %170
  %172 = load i32, i32* @this_insn, align 4
  %173 = call i64 @PATTERN(i32 %172)
  %174 = load i64*, i64** %14, align 8
  %175 = call i32 @refers_to_regno_for_reload_p(i32 %168, i32 %171, i64 %173, i64* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %214, label %177

177:                                              ; preds = %167
  store i32 0, i32* %29, align 4
  br label %178

178:                                              ; preds = %195, %177
  %179 = load i32, i32* %29, align 4
  %180 = load i32, i32* %27, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %178
  %183 = load i32*, i32** @reg_class_contents, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* %29, align 4
  %190 = add i32 %188, %189
  %191 = call i32 @TEST_HARD_REG_BIT(i32 %187, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %182
  br label %198

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %29, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %29, align 4
  br label %178

198:                                              ; preds = %193, %178
  %199 = load i32, i32* %29, align 4
  %200 = load i32, i32* %27, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load i64, i64* %12, align 8
  %204 = call i64 @REG_P(i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i64, i64* %12, align 8
  store i64 %207, i64* %24, align 8
  br label %212

208:                                              ; preds = %202
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %26, align 4
  %211 = call i64 @gen_rtx_REG(i32 %209, i32 %210)
  store i64 %211, i64* %24, align 8
  br label %212

212:                                              ; preds = %208, %206
  br label %213

213:                                              ; preds = %212, %198
  br label %214

214:                                              ; preds = %213, %167, %162, %141
  %215 = load i64, i64* %28, align 8
  %216 = load i64*, i64** %13, align 8
  store i64 %215, i64* %216, align 8
  br label %217

217:                                              ; preds = %214, %136, %132
  %218 = load i64, i64* @hard_regs_live_known, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %378

220:                                              ; preds = %217
  %221 = load i64, i64* %20, align 8
  %222 = call i64 @REG_P(i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %378

224:                                              ; preds = %220
  %225 = load i64, i64* %20, align 8
  %226 = call i32 @REGNO(i64 %225)
  %227 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %229, label %378

229:                                              ; preds = %224
  %230 = load i64, i64* %24, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @this_insn, align 4
  %234 = load i32, i32* @REG_UNUSED, align 4
  %235 = load i64, i64* %12, align 8
  %236 = call i64 @find_reg_note(i32 %233, i32 %234, i64 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %378

238:                                              ; preds = %232, %229
  %239 = load i32, i32* @this_insn, align 4
  %240 = load i32, i32* @REG_DEAD, align 4
  %241 = load i64, i64* %11, align 8
  %242 = call i64 @find_reg_note(i32 %239, i32 %240, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %378

244:                                              ; preds = %238
  %245 = load i32*, i32** @fixed_regs, align 8
  %246 = load i64, i64* %20, align 8
  %247 = call i32 @REGNO(i64 %246)
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %378, label %252

252:                                              ; preds = %244
  %253 = load i64, i64* %20, align 8
  %254 = call i32 @REGNO(i64 %253)
  %255 = load i64, i64* %21, align 8
  %256 = call i32 @GET_MODE(i64 %255)
  %257 = load i32, i32* @VOIDmode, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %252
  %260 = load i64, i64* %21, align 8
  %261 = call i32 @GET_MODE(i64 %260)
  br label %264

262:                                              ; preds = %252
  %263 = load i32, i32* %16, align 4
  br label %264

264:                                              ; preds = %262, %259
  %265 = phi i32 [ %261, %259 ], [ %263, %262 ]
  %266 = call i64 @HARD_REGNO_MODE_OK(i32 %254, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %378

268:                                              ; preds = %264
  %269 = load i64, i64* %20, align 8
  %270 = call i32 @ORIGINAL_REGNO(i64 %269)
  %271 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %284, label %273

273:                                              ; preds = %268
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ENTRY_BLOCK_PTR, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i64, i64* %20, align 8
  %281 = call i32 @ORIGINAL_REGNO(i64 %280)
  %282 = call i32 @bitmap_bit_p(i32 %279, i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %378, label %284

284:                                              ; preds = %273, %268
  %285 = load i64, i64* %20, align 8
  %286 = call i32 @REGNO(i64 %285)
  %287 = load i32, i32* %22, align 4
  %288 = add nsw i32 %286, %287
  store i32 %288, i32* %30, align 4
  %289 = load i32**, i32*** @hard_regno_nregs, align 8
  %290 = load i32, i32* %30, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %31, align 4
  %298 = load i32, i32* %30, align 4
  %299 = load i32, i32* %30, align 4
  %300 = load i32, i32* %31, align 4
  %301 = add i32 %299, %300
  %302 = load i64, i64* %21, align 8
  %303 = call i32 @refers_to_regno_for_reload_p(i32 %298, i32 %301, i64 %302, i64* null)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %377, label %305

305:                                              ; preds = %284
  %306 = load i32, i32* %30, align 4
  %307 = load i32, i32* %30, align 4
  %308 = load i32, i32* %31, align 4
  %309 = add i32 %307, %308
  %310 = load i32, i32* @this_insn, align 4
  %311 = call i64 @PATTERN(i32 %310)
  %312 = call i32 @hard_reg_set_here_p(i32 %306, i32 %309, i64 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %377, label %314

314:                                              ; preds = %305
  %315 = load i32, i32* %19, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %314
  %318 = load i32, i32* %30, align 4
  %319 = load i32, i32* %30, align 4
  %320 = load i32, i32* %31, align 4
  %321 = add i32 %319, %320
  %322 = load i32, i32* @this_insn, align 4
  %323 = call i64 @PATTERN(i32 %322)
  %324 = load i64*, i64** %13, align 8
  %325 = call i32 @refers_to_regno_for_reload_p(i32 %318, i32 %321, i64 %323, i64* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %377, label %327

327:                                              ; preds = %317, %314
  store i32 0, i32* %32, align 4
  br label %328

328:                                              ; preds = %345, %327
  %329 = load i32, i32* %32, align 4
  %330 = load i32, i32* %31, align 4
  %331 = icmp ult i32 %329, %330
  br i1 %331, label %332, label %348

332:                                              ; preds = %328
  %333 = load i32*, i32** @reg_class_contents, align 8
  %334 = load i32, i32* %17, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %30, align 4
  %339 = load i32, i32* %32, align 4
  %340 = add i32 %338, %339
  %341 = call i32 @TEST_HARD_REG_BIT(i32 %337, i32 %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %332
  br label %348

344:                                              ; preds = %332
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %32, align 4
  %347 = add i32 %346, 1
  store i32 %347, i32* %32, align 4
  br label %328

348:                                              ; preds = %343, %328
  %349 = load i32, i32* %32, align 4
  %350 = load i32, i32* %31, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %376

352:                                              ; preds = %348
  %353 = load i32, i32* %18, align 4
  %354 = icmp sge i32 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %352
  %356 = load i64, i64* %24, align 8
  %357 = load i64, i64* %12, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %355
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rld, align 8
  %361 = load i32, i32* %18, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  store i64 0, i64* %364, align 8
  br label %365

365:                                              ; preds = %359, %355, %352
  %366 = load i64, i64* %11, align 8
  %367 = call i64 @REG_P(i64 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = load i64, i64* %11, align 8
  store i64 %370, i64* %24, align 8
  br label %375

371:                                              ; preds = %365
  %372 = load i32, i32* %15, align 4
  %373 = load i32, i32* %30, align 4
  %374 = call i64 @gen_rtx_REG(i32 %372, i32 %373)
  store i64 %374, i64* %24, align 8
  br label %375

375:                                              ; preds = %371, %369
  br label %376

376:                                              ; preds = %375, %348
  br label %377

377:                                              ; preds = %376, %317, %305, %284
  br label %378

378:                                              ; preds = %377, %273, %264, %244, %238, %232, %224, %220, %217
  %379 = load i64, i64* %24, align 8
  store i64 %379, i64* %10, align 8
  br label %380

380:                                              ; preds = %378, %50
  %381 = load i64, i64* %10, align 8
  ret i64 %381
}

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @subreg_regno_offset(i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i32 @PREFERRED_RELOAD_CLASS(i64, i32) #1

declare dso_local i64 @HARD_REGNO_MODE_OK(i32, i32) #1

declare dso_local i32 @refers_to_regno_for_reload_p(i32, i32, i64, i64*) #1

declare dso_local i64 @PATTERN(i32) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @find_reg_note(i32, i32, i64) #1

declare dso_local i32 @ORIGINAL_REGNO(i64) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @hard_reg_set_here_p(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
