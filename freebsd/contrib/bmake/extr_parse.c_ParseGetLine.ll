; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseGetLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_ParseGetLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32* }

@curFile = common dso_local global %struct.TYPE_3__* null, align 8
@PARSE_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Zero byte read from file, skipping rest of line.\00", align 1
@PARSE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Zero byte read from file\00", align 1
@PARSE_RAW = common dso_local global i32 0, align 4
@PARSE_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @ParseGetLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ParseGetLine(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curFile, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  br label %15

15:                                               ; preds = %197, %170, %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %25

25:                                               ; preds = %153, %116, %15
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8 0, i8* %8, align 1
  br label %154

37:                                               ; preds = %30, %25
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load i8, i8* %8, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %47, %37
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %154

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %86, %82, %59
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ult i8* %61, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %8, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ugt i8* %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 92
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %60

83:                                               ; preds = %76, %72
  %84 = load i32, i32* @PARSE_WARNING, align 4
  %85 = call i32 @Parse_Error(i32 %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %87

86:                                               ; preds = %67
  br label %60

87:                                               ; preds = %83, %60
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %154

93:                                               ; preds = %87
  %94 = load i32, i32* @PARSE_FATAL, align 4
  %95 = call i32 @Parse_Error(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %319

96:                                               ; preds = %47, %43
  %97 = load i8, i8* %8, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 92
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load i8*, i8** %11, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i8*, i8** %7, align 8
  store i8* %104, i8** %11, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %105
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  store i8* %118, i8** %7, align 8
  %119 = load i8*, i8** %7, align 8
  store i8* %119, i8** %10, align 8
  br label %25

120:                                              ; preds = %96
  %121 = load i8, i8* %8, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 35
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load i8*, i8** %12, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ugt i8* %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 -1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 91
  br i1 %136, label %139, label %137

137:                                              ; preds = %131, %127
  %138 = load i8*, i8** %10, align 8
  store i8* %138, i8** %12, align 8
  br label %139

139:                                              ; preds = %137, %131
  br label %140

140:                                              ; preds = %139, %124, %120
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %7, align 8
  %143 = load i8, i8* %8, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 10
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %154

147:                                              ; preds = %140
  %148 = load i8, i8* %8, align 1
  %149 = call i64 @isspace(i8 zeroext %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %10, align 8
  br label %153

153:                                              ; preds = %151, %147
  br label %25

154:                                              ; preds = %146, %92, %58, %36
  %155 = load i8*, i8** %7, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = icmp eq i8* %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = icmp eq i8* %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %161, %154
  %166 = load i8, i8* %8, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i8* null, i8** %3, align 8
  br label %319

170:                                              ; preds = %165
  br label %15

171:                                              ; preds = %161
  %172 = load i8*, i8** %10, align 8
  store i8 0, i8* %172, align 1
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @PARSE_RAW, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %171
  %178 = load i8*, i8** %10, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = ptrtoint i8* %178 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = load i32*, i32** %5, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i8*, i8** %9, align 8
  store i8* %185, i8** %3, align 8
  br label %319

186:                                              ; preds = %171
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @PARSE_SKIP, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 46
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %15

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198, %186
  br label %200

200:                                              ; preds = %199
  %201 = load i8*, i8** %12, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 9
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load i8*, i8** %12, align 8
  store i8* %210, i8** %10, align 8
  %211 = load i8*, i8** %10, align 8
  store i8 0, i8* %211, align 1
  br label %212

212:                                              ; preds = %209, %203, %200
  %213 = load i8*, i8** %11, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i8*, i8** %10, align 8
  %217 = load i8*, i8** %9, align 8
  %218 = ptrtoint i8* %216 to i64
  %219 = ptrtoint i8* %217 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  %222 = load i32*, i32** %5, align 8
  store i32 %221, i32* %222, align 4
  %223 = load i8*, i8** %9, align 8
  store i8* %223, i8** %3, align 8
  br label %319

224:                                              ; preds = %212
  %225 = load i8*, i8** %11, align 8
  store i8* %225, i8** %7, align 8
  store i8* %225, i8** %13, align 8
  %226 = load i8*, i8** %9, align 8
  store i8* %226, i8** %11, align 8
  br label %227

227:                                              ; preds = %289, %224
  %228 = load i8*, i8** %7, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %7, align 8
  %230 = load i8, i8* %228, align 1
  store i8 %230, i8* %8, align 1
  %231 = load i8, i8* %8, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 92
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = load i8, i8* %8, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %293

239:                                              ; preds = %234
  br label %289

240:                                              ; preds = %227
  %241 = load i8*, i8** %7, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %7, align 8
  %243 = load i8, i8* %241, align 1
  store i8 %243, i8* %8, align 1
  %244 = load i8, i8* %8, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load i8*, i8** %13, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 -1
  store i8* %249, i8** %13, align 8
  br label %293

250:                                              ; preds = %240
  %251 = load i8, i8* %8, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 35
  br i1 %253, label %254, label %261

254:                                              ; preds = %250
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 9
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  br label %289

261:                                              ; preds = %254, %250
  %262 = load i8, i8* %8, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 10
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i8*, i8** %13, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %13, align 8
  store i8 92, i8* %266, align 1
  %268 = load i8*, i8** %13, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  store i8* %269, i8** %11, align 8
  br label %289

270:                                              ; preds = %261
  br label %271

271:                                              ; preds = %285, %270
  %272 = load i8*, i8** %7, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 0
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 32
  br i1 %276, label %283, label %277

277:                                              ; preds = %271
  %278 = load i8*, i8** %7, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 9
  br label %283

283:                                              ; preds = %277, %271
  %284 = phi i1 [ true, %271 ], [ %282, %277 ]
  br i1 %284, label %285, label %288

285:                                              ; preds = %283
  %286 = load i8*, i8** %7, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %7, align 8
  br label %271

288:                                              ; preds = %283
  store i8 32, i8* %8, align 1
  br label %289

289:                                              ; preds = %288, %265, %260, %239
  %290 = load i8, i8* %8, align 1
  %291 = load i8*, i8** %13, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %13, align 8
  store i8 %290, i8* %291, align 1
  br label %227

293:                                              ; preds = %247, %238
  br label %294

294:                                              ; preds = %306, %293
  %295 = load i8*, i8** %13, align 8
  %296 = load i8*, i8** %11, align 8
  %297 = icmp ugt i8* %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = load i8*, i8** %13, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 -1
  %301 = load i8, i8* %300, align 1
  %302 = call i64 @isspace(i8 zeroext %301)
  %303 = icmp ne i64 %302, 0
  br label %304

304:                                              ; preds = %298, %294
  %305 = phi i1 [ false, %294 ], [ %303, %298 ]
  br i1 %305, label %306, label %309

306:                                              ; preds = %304
  %307 = load i8*, i8** %13, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 -1
  store i8* %308, i8** %13, align 8
  br label %294

309:                                              ; preds = %304
  %310 = load i8*, i8** %13, align 8
  store i8 0, i8* %310, align 1
  %311 = load i8*, i8** %13, align 8
  %312 = load i8*, i8** %9, align 8
  %313 = ptrtoint i8* %311 to i64
  %314 = ptrtoint i8* %312 to i64
  %315 = sub i64 %313, %314
  %316 = trunc i64 %315 to i32
  %317 = load i32*, i32** %5, align 8
  store i32 %316, i32* %317, align 4
  %318 = load i8*, i8** %9, align 8
  store i8* %318, i8** %3, align 8
  br label %319

319:                                              ; preds = %309, %215, %177, %169, %93
  %320 = load i8*, i8** %3, align 8
  ret i8* %320
}

declare dso_local i32 @Parse_Error(i32, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
