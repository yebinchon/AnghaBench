; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expmeta.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expmeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32 }
%struct.stat = type { i32 }
%struct.dirent = type { i8*, i32, i64 }

@CTLESC = common dso_local global i8 0, align 1
@expdir = common dso_local global i8* null, align 8
@expdir_end = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@DT_UNKNOWN = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i64 0, align 8
@DT_LNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.arglist*)* @expmeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expmeta(i8* %0, i8* %1, %struct.arglist* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arglist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.arglist* %2, %struct.arglist** %6, align 8
  store i32 0, i32* %11, align 4
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %125, %3
  store i32 0, i32* %17, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %131

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 42
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 63
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  store i32 1, i32* %11, align 4
  br label %124

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 91
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 33
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 94
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %41
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @CTLESC, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67
  br label %86

78:                                               ; preds = %72
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 93
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  br label %86

85:                                               ; preds = %78
  br label %57

86:                                               ; preds = %84, %77
  br label %123

87:                                               ; preds = %36
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %131

93:                                               ; preds = %87
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @CTLESC, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %100, %93
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %131

115:                                              ; preds = %111
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** %9, align 8
  br label %121

121:                                              ; preds = %115, %103
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123, %35
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i8*, i8** %7, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %7, align 8
  br label %21

131:                                              ; preds = %114, %92, %21
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %185

134:                                              ; preds = %131
  %135 = load i8*, i8** %4, align 8
  %136 = load i8*, i8** @expdir, align 8
  %137 = icmp ne i8* %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %138, %134
  %142 = load i8*, i8** %5, align 8
  store i8* %142, i8** %7, align 8
  br label %143

143:                                              ; preds = %169, %141
  %144 = load i8*, i8** %7, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8, i8* @CTLESC, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %7, align 8
  br label %153

153:                                              ; preds = %150, %143
  %154 = load i8*, i8** %7, align 8
  %155 = load i8, i8* %154, align 1
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %4, align 8
  store i8 %155, i8* %156, align 1
  %158 = load i8*, i8** %7, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %172

163:                                              ; preds = %153
  %164 = load i8*, i8** %4, align 8
  %165 = load i8*, i8** @expdir_end, align 8
  %166 = icmp eq i8* %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %413

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168
  %170 = load i8*, i8** %7, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %7, align 8
  br label %143

172:                                              ; preds = %162
  %173 = load i32, i32* %11, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** @expdir, align 8
  %177 = call i64 @lstat(i8* %176, %struct.stat* %12)
  %178 = icmp sge i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175, %172
  %180 = load %struct.arglist*, %struct.arglist** %6, align 8
  %181 = load i8*, i8** @expdir, align 8
  %182 = call i32 @stsavestr(i8* %181)
  %183 = call i32 @appendarglist(%struct.arglist* %180, i32 %182)
  br label %184

184:                                              ; preds = %179, %175
  br label %413

185:                                              ; preds = %131
  %186 = load i8*, i8** %5, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = getelementptr inbounds i8, i8* %186, i64 %191
  store i8* %192, i8** %10, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load i8*, i8** %5, align 8
  %195 = icmp ne i8* %193, %194
  br i1 %195, label %196, label %224

196:                                              ; preds = %185
  %197 = load i8*, i8** %5, align 8
  store i8* %197, i8** %7, align 8
  br label %198

198:                                              ; preds = %222, %196
  %199 = load i8*, i8** %7, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = icmp ult i8* %199, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %198
  %203 = load i8*, i8** %7, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = load i8, i8* @CTLESC, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i8*, i8** %7, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %7, align 8
  br label %212

212:                                              ; preds = %209, %202
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %7, align 8
  %215 = load i8, i8* %213, align 1
  %216 = load i8*, i8** %4, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %4, align 8
  store i8 %215, i8* %216, align 1
  %218 = load i8*, i8** %4, align 8
  %219 = load i8*, i8** @expdir_end, align 8
  %220 = icmp eq i8* %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %212
  br label %413

222:                                              ; preds = %212
  br label %198

223:                                              ; preds = %198
  br label %224

224:                                              ; preds = %223, %185
  %225 = load i8*, i8** %4, align 8
  %226 = load i8*, i8** @expdir, align 8
  %227 = icmp eq i8* %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %245

229:                                              ; preds = %224
  %230 = load i8*, i8** %4, align 8
  %231 = load i8*, i8** @expdir, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  %233 = icmp eq i8* %230, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load i8*, i8** @expdir, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 47
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %244

240:                                              ; preds = %234, %229
  %241 = load i8*, i8** @expdir, align 8
  store i8* %241, i8** %7, align 8
  %242 = load i8*, i8** %4, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 -1
  store i8 0, i8* %243, align 1
  br label %244

244:                                              ; preds = %240, %239
  br label %245

245:                                              ; preds = %244, %228
  %246 = load i8*, i8** %7, align 8
  %247 = call i32* @opendir(i8* %246)
  store i32* %247, i32** %13, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  br label %413

250:                                              ; preds = %245
  %251 = load i8*, i8** %4, align 8
  %252 = load i8*, i8** @expdir, align 8
  %253 = icmp ne i8* %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load i8*, i8** %4, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 -1
  store i8 47, i8* %256, align 1
  br label %257

257:                                              ; preds = %254, %250
  %258 = load i8*, i8** %10, align 8
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  store i32 1, i32* %15, align 4
  br label %270

263:                                              ; preds = %257
  store i32 0, i32* %15, align 4
  %264 = load i8*, i8** %10, align 8
  store i8 0, i8* %264, align 1
  %265 = load i32, i32* %17, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i8*, i8** %10, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8* %269, i8** %10, align 8
  br label %270

270:                                              ; preds = %263, %262
  store i32 0, i32* %16, align 4
  %271 = load i8*, i8** %9, align 8
  store i8* %271, i8** %7, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = load i8, i8* @CTLESC, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %274, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %270
  %279 = load i8*, i8** %7, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %7, align 8
  br label %281

281:                                              ; preds = %278, %270
  %282 = load i8*, i8** %7, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 46
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i32, i32* %16, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %16, align 4
  br label %289

289:                                              ; preds = %286, %281
  br label %290

290:                                              ; preds = %391, %372, %363, %329, %310, %289
  %291 = call i32 (...) @int_pending()
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %290
  %294 = load i32*, i32** %13, align 8
  %295 = call %struct.dirent* @readdir(i32* %294)
  store %struct.dirent* %295, %struct.dirent** %14, align 8
  %296 = icmp ne %struct.dirent* %295, null
  br label %297

297:                                              ; preds = %293, %290
  %298 = phi i1 [ false, %290 ], [ %296, %293 ]
  br i1 %298, label %299, label %392

299:                                              ; preds = %297
  %300 = load %struct.dirent*, %struct.dirent** %14, align 8
  %301 = getelementptr inbounds %struct.dirent, %struct.dirent* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 0
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %305, 46
  br i1 %306, label %307, label %311

307:                                              ; preds = %299
  %308 = load i32, i32* %16, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %307
  br label %290

311:                                              ; preds = %307, %299
  %312 = load i8*, i8** %9, align 8
  %313 = load %struct.dirent*, %struct.dirent** %14, align 8
  %314 = getelementptr inbounds %struct.dirent, %struct.dirent* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = call i64 @patmatch(i8* %312, i8* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %391

318:                                              ; preds = %311
  %319 = load %struct.dirent*, %struct.dirent** %14, align 8
  %320 = getelementptr inbounds %struct.dirent, %struct.dirent* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  store i32 %321, i32* %18, align 4
  %322 = load i8*, i8** %4, align 8
  %323 = load i32, i32* %18, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = getelementptr inbounds i8, i8* %325, i64 1
  %327 = load i8*, i8** @expdir_end, align 8
  %328 = icmp ugt i8* %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %318
  br label %290

330:                                              ; preds = %318
  %331 = load i8*, i8** %4, align 8
  %332 = load %struct.dirent*, %struct.dirent** %14, align 8
  %333 = getelementptr inbounds %struct.dirent, %struct.dirent* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = load i32, i32* %18, align 4
  %336 = add nsw i32 %335, 1
  %337 = call i32 @memcpy(i8* %331, i8* %334, i32 %336)
  %338 = load i32, i32* %15, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %330
  %341 = load %struct.arglist*, %struct.arglist** %6, align 8
  %342 = load i8*, i8** @expdir, align 8
  %343 = call i32 @stsavestr(i8* %342)
  %344 = call i32 @appendarglist(%struct.arglist* %341, i32 %343)
  br label %390

345:                                              ; preds = %330
  %346 = load %struct.dirent*, %struct.dirent** %14, align 8
  %347 = getelementptr inbounds %struct.dirent, %struct.dirent* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @DT_UNKNOWN, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %351, label %364

351:                                              ; preds = %345
  %352 = load %struct.dirent*, %struct.dirent** %14, align 8
  %353 = getelementptr inbounds %struct.dirent, %struct.dirent* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @DT_DIR, align 8
  %356 = icmp ne i64 %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %351
  %358 = load %struct.dirent*, %struct.dirent** %14, align 8
  %359 = getelementptr inbounds %struct.dirent, %struct.dirent* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @DT_LNK, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %357
  br label %290

364:                                              ; preds = %357, %351, %345
  %365 = load i8*, i8** %4, align 8
  %366 = load i32, i32* %18, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = getelementptr inbounds i8, i8* %368, i64 2
  %370 = load i8*, i8** @expdir_end, align 8
  %371 = icmp ugt i8* %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %364
  br label %290

373:                                              ; preds = %364
  %374 = load i8*, i8** %4, align 8
  %375 = load i32, i32* %18, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  store i8 47, i8* %377, align 1
  %378 = load i8*, i8** %4, align 8
  %379 = load i32, i32* %18, align 4
  %380 = add nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %378, i64 %381
  store i8 0, i8* %382, align 1
  %383 = load i8*, i8** %4, align 8
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %383, i64 %385
  %387 = getelementptr inbounds i8, i8* %386, i64 1
  %388 = load i8*, i8** %10, align 8
  %389 = load %struct.arglist*, %struct.arglist** %6, align 8
  call void @expmeta(i8* %387, i8* %388, %struct.arglist* %389)
  br label %390

390:                                              ; preds = %373, %340
  br label %391

391:                                              ; preds = %390, %311
  br label %290

392:                                              ; preds = %297
  %393 = load i32*, i32** %13, align 8
  %394 = call i32 @closedir(i32* %393)
  %395 = load i32, i32* %15, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %413, label %397

397:                                              ; preds = %392
  %398 = load i32, i32* %17, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load i8, i8* @CTLESC, align 1
  %402 = sext i8 %401 to i32
  br label %404

403:                                              ; preds = %397
  br label %404

404:                                              ; preds = %403, %400
  %405 = phi i32 [ %402, %400 ], [ 47, %403 ]
  %406 = trunc i32 %405 to i8
  %407 = load i8*, i8** %10, align 8
  %408 = load i32, i32* %17, align 4
  %409 = sub nsw i32 0, %408
  %410 = sub nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %407, i64 %411
  store i8 %406, i8* %412, align 1
  br label %413

413:                                              ; preds = %167, %184, %221, %249, %404, %392
  ret void
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @appendarglist(%struct.arglist*, i32) #1

declare dso_local i32 @stsavestr(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @int_pending(...) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @patmatch(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
