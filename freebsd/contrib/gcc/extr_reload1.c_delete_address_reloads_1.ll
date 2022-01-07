; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_address_reloads_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_address_reloads_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@REG = common dso_local global i32 0, align 4
@spill_reg_order = common dso_local global i64* null, align 8
@CODE_LABEL = common dso_local global i32 0, align 4
@JUMP_INSN = common dso_local global i32 0, align 4
@reload_first_uid = common dso_local global i64 0, align 8
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@reload_inherited = common dso_local global i64* null, align 8
@reload_override_in = common dso_local global i64* null, align 8
@reg_reloaded_contents = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @delete_address_reloads_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_address_reloads_1(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @GET_CODE(i64 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @REG, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %3
  %21 = load i32, i32* %13, align 4
  %22 = call i8* @GET_RTX_FORMAT(i32 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @GET_RTX_LENGTH(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %72, %20
  %27 = load i32, i32* %11, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %26
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 101
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @XEXP(i64 %39, i32 %40)
  %42 = load i64, i64* %6, align 8
  call void @delete_address_reloads_1(i64 %38, i64 %41, i64 %42)
  br label %71

43:                                               ; preds = %29
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 69
  br i1 %50, label %51, label %70

51:                                               ; preds = %43
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @XVECLEN(i64 %52, i32 %53)
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %66, %51
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @XVECEXP(i64 %61, i32 %62, i32 %63)
  %65 = load i64, i64* %6, align 8
  call void @delete_address_reloads_1(i64 %60, i64 %64, i64 %65)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %12, align 4
  br label %56

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %11, align 4
  br label %26

75:                                               ; preds = %26
  br label %320

76:                                               ; preds = %3
  %77 = load i64*, i64** @spill_reg_order, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @REGNO(i64 %78)
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %320

84:                                               ; preds = %76
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @PREV_INSN(i64 %85)
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %121, %84
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %87
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @GET_CODE(i64 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @CODE_LABEL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @JUMP_INSN, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %90
  br label %320

101:                                              ; preds = %96
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @INSN_P(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  br label %121

106:                                              ; preds = %101
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @PATTERN(i64 %108)
  %110 = call i64 @reg_set_p(i64 %107, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %124

113:                                              ; preds = %106
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @PATTERN(i64 %115)
  %117 = call i64 @reg_referenced_p(i64 %114, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %320

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %105
  %122 = load i64, i64* %7, align 8
  %123 = call i64 @PREV_INSN(i64 %122)
  store i64 %123, i64* %7, align 8
  br label %87

124:                                              ; preds = %112, %87
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i64, i64* %7, align 8
  %129 = call i64 @INSN_UID(i64 %128)
  %130 = load i64, i64* @reload_first_uid, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127, %124
  br label %320

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = call i64 @single_set(i64 %134)
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %8, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %320

139:                                              ; preds = %133
  %140 = load i64, i64* %8, align 8
  %141 = call i64 @SET_DEST(i64 %140)
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @REG_P(i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @rtx_equal_p(i64 %146, i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145, %139
  br label %320

151:                                              ; preds = %145
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %4, align 8
  %154 = call i32 @PATTERN(i64 %153)
  %155 = call i64 @reg_set_p(i64 %152, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %309, label %157

157:                                              ; preds = %151
  %158 = load i64, i64* %4, align 8
  %159 = call i64 @NEXT_INSN(i64 %158)
  store i64 %159, i64* %10, align 8
  br label %160

160:                                              ; preds = %305, %157
  %161 = load i64, i64* %10, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %308

163:                                              ; preds = %160
  %164 = load i64, i64* %10, align 8
  %165 = call i64 @LABEL_P(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %308

168:                                              ; preds = %163
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @INSN_P(i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %305

173:                                              ; preds = %168
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = call i32 @PATTERN(i64 %175)
  %177 = call i64 @reg_referenced_p(i64 %174, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %252

179:                                              ; preds = %173
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %6, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %251

183:                                              ; preds = %179
  %184 = load i32, i32* @n_reloads, align 4
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %215, %183
  %187 = load i32, i32* %12, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %218

189:                                              ; preds = %186
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %9, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %189
  %199 = load i64*, i64** @reload_inherited, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %198, %189
  %206 = load i64*, i64** @reload_override_in, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %9, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205, %198
  br label %320

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %12, align 4
  br label %186

218:                                              ; preds = %186
  %219 = load i32, i32* @n_reloads, align 4
  %220 = sub nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %221

221:                                              ; preds = %243, %218
  %222 = load i32, i32* %12, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %246

224:                                              ; preds = %221
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %224
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %9, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  br label %246

242:                                              ; preds = %232, %224
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %12, align 4
  br label %221

246:                                              ; preds = %241, %221
  %247 = load i32, i32* %12, align 4
  %248 = icmp sge i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %308

250:                                              ; preds = %246
  br label %251

251:                                              ; preds = %250, %179
  br label %320

252:                                              ; preds = %173
  %253 = load i64, i64* %10, align 8
  %254 = call i64 @JUMP_P(i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %308

257:                                              ; preds = %252
  %258 = load i64, i64* %10, align 8
  %259 = load i64, i64* %6, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %297

261:                                              ; preds = %257
  %262 = load i32, i32* @n_reloads, align 4
  %263 = sub nsw i32 %262, 1
  store i32 %263, i32* %12, align 4
  br label %264

264:                                              ; preds = %293, %261
  %265 = load i32, i32* %12, align 4
  %266 = icmp sge i32 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %264
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* %9, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %283

276:                                              ; preds = %267
  %277 = load i64*, i64** @reload_inherited, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %276, %267
  %284 = load i64*, i64** @reload_override_in, align 8
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %9, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %283, %276
  br label %320

292:                                              ; preds = %283
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %12, align 4
  br label %264

296:                                              ; preds = %264
  br label %297

297:                                              ; preds = %296, %257
  %298 = load i64, i64* %9, align 8
  %299 = load i64, i64* %10, align 8
  %300 = call i32 @PATTERN(i64 %299)
  %301 = call i64 @reg_set_p(i64 %298, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %297
  br label %308

304:                                              ; preds = %297
  br label %305

305:                                              ; preds = %304, %172
  %306 = load i64, i64* %10, align 8
  %307 = call i64 @NEXT_INSN(i64 %306)
  store i64 %307, i64* %10, align 8
  br label %160

308:                                              ; preds = %303, %256, %249, %167, %160
  br label %309

309:                                              ; preds = %308, %151
  %310 = load i64, i64* %7, align 8
  %311 = load i64, i64* %8, align 8
  %312 = call i64 @SET_SRC(i64 %311)
  %313 = load i64, i64* %6, align 8
  call void @delete_address_reloads_1(i64 %310, i64 %312, i64 %313)
  %314 = load i32*, i32** @reg_reloaded_contents, align 8
  %315 = load i64, i64* %9, align 8
  %316 = call i64 @REGNO(i64 %315)
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 -1, i32* %317, align 4
  %318 = load i64, i64* %7, align 8
  %319 = call i32 @delete_insn(i64 %318)
  br label %320

320:                                              ; preds = %309, %291, %251, %213, %150, %138, %132, %119, %100, %83, %75
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @reg_set_p(i64, i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @reg_referenced_p(i64, i32) #1

declare dso_local i64 @INSN_UID(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @delete_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
