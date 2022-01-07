; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_get_alt_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_get_alt_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i64, i64, i64, i32, i32, i32 }

@LABEL_REF = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.noce_if_info*, i64, i64*)* @noce_get_alt_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @noce_get_alt_condition(%struct.noce_if_info* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.noce_if_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %22 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @reg_mentioned_p(i64 %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %28 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  %31 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %32 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  br label %306

34:                                               ; preds = %3
  %35 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %36 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @pc_set(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @SET_SRC(i64 %39)
  %41 = call i64 @XEXP(i64 %40, i32 0)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @SET_SRC(i64 %42)
  %44 = call i64 @XEXP(i64 %43, i32 2)
  %45 = call i32 @GET_CODE(i64 %44)
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @LABEL_REF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %34
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @SET_SRC(i64 %50)
  %52 = call i64 @XEXP(i64 %51, i32 2)
  %53 = call i64 @XEXP(i64 %52, i32 0)
  %54 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %55 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @JUMP_LABEL(i64 %56)
  %58 = icmp eq i64 %53, %57
  br label %59

59:                                               ; preds = %49, %34
  %60 = phi i1 [ false, %34 ], [ %58, %49 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @GET_CODE(i64 %62)
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @CONST_INT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %229

67:                                               ; preds = %59
  %68 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %69 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @GET_CODE(i64 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %73 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @XEXP(i64 %74, i32 0)
  store i64 %75, i64* %13, align 8
  %76 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %77 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @XEXP(i64 %78, i32 1)
  store i64 %79, i64* %14, align 8
  %80 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %81 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @prev_nonnote_insn(i64 %82)
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %145

86:                                               ; preds = %67
  %87 = load i64, i64* %15, align 8
  %88 = call i64 @INSN_P(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %145

90:                                               ; preds = %86
  %91 = load i64, i64* %15, align 8
  %92 = call i64 @PATTERN(i64 %91)
  %93 = call i32 @GET_CODE(i64 %92)
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @SET, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %145

97:                                               ; preds = %90
  %98 = load i64, i64* %15, align 8
  %99 = call i64 @find_reg_equal_equiv_note(i64 %98)
  store i64 %99, i64* %16, align 8
  %100 = load i64, i64* %16, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %15, align 8
  %104 = call i64 @PATTERN(i64 %103)
  %105 = call i64 @SET_SRC(i64 %104)
  store i64 %105, i64* %16, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i64, i64* %16, align 8
  %108 = call i32 @GET_CODE(i64 %107)
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @CONST_INT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %144

112:                                              ; preds = %106
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %15, align 8
  %115 = call i64 @PATTERN(i64 %114)
  %116 = call i32 @SET_DEST(i64 %115)
  %117 = call i64 @rtx_equal_p(i64 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i64, i64* %16, align 8
  store i64 %120, i64* %13, align 8
  br label %131

121:                                              ; preds = %112
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* %15, align 8
  %124 = call i64 @PATTERN(i64 %123)
  %125 = call i32 @SET_DEST(i64 %124)
  %126 = call i64 @rtx_equal_p(i64 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i64, i64* %16, align 8
  store i64 %129, i64* %14, align 8
  br label %130

130:                                              ; preds = %128, %121
  br label %131

131:                                              ; preds = %130, %119
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @GET_CODE(i64 %132)
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @CONST_INT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i64, i64* %13, align 8
  store i64 %138, i64* %17, align 8
  %139 = load i64, i64* %14, align 8
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %17, align 8
  store i64 %140, i64* %14, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @swap_condition(i32 %141)
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %137, %131
  br label %144

144:                                              ; preds = %143, %106
  br label %145

145:                                              ; preds = %144, %90, %86, %67
  %146 = load i64, i64* %14, align 8
  %147 = call i32 @GET_CODE(i64 %146)
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* @CONST_INT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %195

151:                                              ; preds = %145
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @INTVAL(i64 %152)
  store i32 %153, i32* %18, align 4
  %154 = load i64, i64* %14, align 8
  %155 = call i32 @INTVAL(i64 %154)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %12, align 4
  switch i32 %156, label %193 [
    i32 128, label %157
    i32 129, label %166
    i32 130, label %175
    i32 131, label %184
  ]

157:                                              ; preds = %151
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, 1
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  store i32 129, i32* %12, align 4
  %163 = load i32, i32* %18, align 4
  %164 = call i64 @GEN_INT(i32 %163)
  store i64 %164, i64* %14, align 8
  br label %165

165:                                              ; preds = %162, %157
  br label %194

166:                                              ; preds = %151
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %18, align 4
  %169 = sub nsw i32 %168, 1
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  store i32 128, i32* %12, align 4
  %172 = load i32, i32* %18, align 4
  %173 = call i64 @GEN_INT(i32 %172)
  store i64 %173, i64* %14, align 8
  br label %174

174:                                              ; preds = %171, %166
  br label %194

175:                                              ; preds = %151
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %18, align 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  store i32 131, i32* %12, align 4
  %181 = load i32, i32* %18, align 4
  %182 = call i64 @GEN_INT(i32 %181)
  store i64 %182, i64* %14, align 8
  br label %183

183:                                              ; preds = %180, %175
  br label %194

184:                                              ; preds = %151
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  store i32 130, i32* %12, align 4
  %190 = load i32, i32* %18, align 4
  %191 = call i64 @GEN_INT(i32 %190)
  store i64 %191, i64* %14, align 8
  br label %192

192:                                              ; preds = %189, %184
  br label %194

193:                                              ; preds = %151
  br label %194

194:                                              ; preds = %193, %192, %183, %174, %165
  br label %195

195:                                              ; preds = %194, %145
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %198 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @GET_CODE(i64 %199)
  %201 = icmp ne i32 %196, %200
  br i1 %201, label %216, label %202

202:                                              ; preds = %195
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %205 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i64 @XEXP(i64 %206, i32 0)
  %208 = icmp ne i64 %203, %207
  br i1 %208, label %216, label %209

209:                                              ; preds = %202
  %210 = load i64, i64* %14, align 8
  %211 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %212 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @XEXP(i64 %213, i32 1)
  %215 = icmp ne i64 %210, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %209, %202, %195
  %217 = load i32, i32* %12, align 4
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @GET_MODE(i64 %218)
  %220 = load i64, i64* %13, align 8
  %221 = load i64, i64* %14, align 8
  %222 = call i64 @gen_rtx_fmt_ee(i32 %217, i32 %219, i64 %220, i64 %221)
  store i64 %222, i64* %8, align 8
  %223 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %224 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64*, i64** %7, align 8
  store i64 %225, i64* %226, align 8
  %227 = load i64, i64* %8, align 8
  store i64 %227, i64* %4, align 8
  br label %306

228:                                              ; preds = %209
  br label %229

229:                                              ; preds = %228, %59
  %230 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %231 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %8, align 8
  %234 = load i32, i32* %11, align 4
  %235 = load i64*, i64** %7, align 8
  %236 = load i64, i64* %6, align 8
  %237 = call i64 @canonicalize_condition(i64 %232, i64 %233, i32 %234, i64* %235, i64 %236, i32 0, i32 1)
  store i64 %237, i64* %8, align 8
  %238 = load i64, i64* %8, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %229
  %241 = load i64, i64* %6, align 8
  %242 = load i64, i64* %8, align 8
  %243 = call i64 @reg_mentioned_p(i64 %241, i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240, %229
  store i64 0, i64* %4, align 8
  br label %306

246:                                              ; preds = %240
  %247 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %248 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %10, align 8
  br label %250

250:                                              ; preds = %269, %246
  %251 = load i64, i64* %10, align 8
  %252 = load i64*, i64** %7, align 8
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %251, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %250
  %256 = load i64, i64* %10, align 8
  %257 = call i64 @INSN_P(i64 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %255
  %260 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %261 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = load i64, i64* %10, align 8
  %264 = call i64 @PATTERN(i64 %263)
  %265 = call i64 @reg_overlap_mentioned_p(i32 %262, i64 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  store i64 0, i64* %4, align 8
  br label %306

268:                                              ; preds = %259, %255
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %10, align 8
  %271 = call i64 @PREV_INSN(i64 %270)
  store i64 %271, i64* %10, align 8
  br label %250

272:                                              ; preds = %250
  %273 = load i64*, i64** %7, align 8
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %10, align 8
  br label %275

275:                                              ; preds = %301, %272
  %276 = load i64, i64* %10, align 8
  %277 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %278 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %276, %279
  br i1 %280, label %281, label %304

281:                                              ; preds = %275
  %282 = load i64, i64* %10, align 8
  %283 = call i64 @INSN_P(i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %300

285:                                              ; preds = %281
  %286 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %287 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = load i64, i64* %10, align 8
  %290 = call i64 @modified_in_p(i32 %288, i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %299, label %292

292:                                              ; preds = %285
  %293 = load %struct.noce_if_info*, %struct.noce_if_info** %5, align 8
  %294 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i64, i64* %10, align 8
  %297 = call i64 @modified_in_p(i32 %295, i64 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292, %285
  store i64 0, i64* %4, align 8
  br label %306

300:                                              ; preds = %292, %281
  br label %301

301:                                              ; preds = %300
  %302 = load i64, i64* %10, align 8
  %303 = call i64 @NEXT_INSN(i64 %302)
  store i64 %303, i64* %10, align 8
  br label %275

304:                                              ; preds = %275
  %305 = load i64, i64* %8, align 8
  store i64 %305, i64* %4, align 8
  br label %306

306:                                              ; preds = %304, %299, %267, %245, %216, %26
  %307 = load i64, i64* %4, align 8
  ret i64 %307
}

declare dso_local i64 @reg_mentioned_p(i64, i64) #1

declare dso_local i64 @pc_set(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @JUMP_LABEL(i64) #1

declare dso_local i64 @prev_nonnote_insn(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i32) #1

declare dso_local i32 @SET_DEST(i64) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @canonicalize_condition(i64, i64, i32, i64*, i64, i32, i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i32, i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @modified_in_p(i32, i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
