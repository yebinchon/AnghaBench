; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_ucn_valid_in_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_ucn_valid_in_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.normalize_state = type { i64, i32, i8* }

@ucnranges = common dso_local global %struct.TYPE_3__* null, align 8
@C99 = common dso_local global i32 0, align 4
@CXX = common dso_local global i32 0, align 4
@c99 = common dso_local global i32 0, align 4
@cplusplus = common dso_local global i32 0, align 4
@normalized_none = common dso_local global i8* null, align 8
@CTX = common dso_local global i32 0, align 4
@CPP_DL_ICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Character %x might not be NFKC\00", align 1
@normalized_identifier_C = common dso_local global i32 0, align 4
@NKC = common dso_local global i32 0, align 4
@NFC = common dso_local global i32 0, align 4
@normalized_C = common dso_local global i32 0, align 4
@CID = common dso_local global i32 0, align 4
@DIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.normalize_state*)* @ucn_valid_in_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucn_valid_in_identifier(i32* %0, i32 %1, %struct.normalize_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.normalize_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.normalize_state* %2, %struct.normalize_state** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 65535
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %324

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %42, %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %29, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %9, align 4
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %37
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @C99, align 4
  %51 = load i32, i32* @CXX, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %324

56:                                               ; preds = %43
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @CPP_PEDANTIC(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @c99, align 4
  %63 = call i64 @CPP_OPTION(i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @C99, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %65, %60
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @cplusplus, align 4
  %78 = call i64 @CPP_OPTION(i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CXX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %80, %65
  store i32 0, i32* %4, align 4
  br label %324

91:                                               ; preds = %80, %75, %56
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %91
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %107 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  %111 = load i8*, i8** @normalized_none, align 8
  %112 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %113 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %296

114:                                              ; preds = %99, %91
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CTX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %241

124:                                              ; preds = %114
  %125 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %126 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 2494
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 2503
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %11, align 4
  br label %218

134:                                              ; preds = %124
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 2878
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 2887
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %11, align 4
  br label %217

141:                                              ; preds = %134
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 3006
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 3014
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 3015
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi i1 [ false, %144 ], [ %149, %147 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %11, align 4
  br label %216

153:                                              ; preds = %141
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 3266
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 3270
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %11, align 4
  br label %215

160:                                              ; preds = %153
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 3390
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 3398
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 3399
  br label %169

169:                                              ; preds = %166, %163
  %170 = phi i1 [ false, %163 ], [ %168, %166 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %11, align 4
  br label %214

172:                                              ; preds = %160
  %173 = load i32, i32* %6, align 4
  %174 = icmp sge i32 %173, 4449
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = icmp sle i32 %176, 4469
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %179, 4352
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = icmp sgt i32 %182, 4370
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i1 [ true, %178 ], [ %183, %181 ]
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %11, align 4
  br label %213

187:                                              ; preds = %175, %172
  %188 = load i32, i32* %6, align 4
  %189 = icmp sge i32 %188, 4520
  br i1 %189, label %190, label %207

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = icmp sle i32 %191, 4546
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load i32, i32* %12, align 4
  %195 = icmp slt i32 %194, 44032
  br i1 %195, label %204, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %12, align 4
  %198 = icmp sgt i32 %197, 55203
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %12, align 4
  %201 = sub nsw i32 %200, 44032
  %202 = srem i32 %201, 28
  %203 = icmp ne i32 %202, 0
  br label %204

204:                                              ; preds = %199, %196, %193
  %205 = phi i1 [ true, %196 ], [ true, %193 ], [ %203, %199 ]
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %11, align 4
  br label %212

207:                                              ; preds = %190, %187
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @CPP_DL_ICE, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @cpp_error(i32* %208, i32 %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %210)
  store i32 1, i32* %11, align 4
  br label %212

212:                                              ; preds = %207, %204
  br label %213

213:                                              ; preds = %212, %184
  br label %214

214:                                              ; preds = %213, %169
  br label %215

215:                                              ; preds = %214, %156
  br label %216

216:                                              ; preds = %215, %150
  br label %217

217:                                              ; preds = %216, %137
  br label %218

218:                                              ; preds = %217, %130
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %222, 4449
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i8*, i8** @normalized_none, align 8
  %226 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %227 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  br label %240

228:                                              ; preds = %221, %218
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %228
  %232 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %233 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* @normalized_identifier_C, align 4
  %236 = call i8* @MAX(i8* %234, i32 %235)
  %237 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %238 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %237, i32 0, i32 2
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %231, %228
  br label %240

240:                                              ; preds = %239, %224
  br label %295

241:                                              ; preds = %114
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @NKC, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %241
  br label %294

252:                                              ; preds = %241
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @NFC, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %252
  %263 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %264 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %263, i32 0, i32 2
  %265 = load i8*, i8** %264, align 8
  %266 = load i32, i32* @normalized_C, align 4
  %267 = call i8* @MAX(i8* %265, i32 %266)
  %268 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %269 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %268, i32 0, i32 2
  store i8* %267, i8** %269, align 8
  br label %293

270:                                              ; preds = %252
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @CID, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %270
  %281 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %282 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* @normalized_identifier_C, align 4
  %285 = call i8* @MAX(i8* %283, i32 %284)
  %286 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %287 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %286, i32 0, i32 2
  store i8* %285, i8** %287, align 8
  br label %292

288:                                              ; preds = %270
  %289 = load i8*, i8** @normalized_none, align 8
  %290 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %291 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %290, i32 0, i32 2
  store i8* %289, i8** %291, align 8
  br label %292

292:                                              ; preds = %288, %280
  br label %293

293:                                              ; preds = %292, %262
  br label %294

294:                                              ; preds = %293, %251
  br label %295

295:                                              ; preds = %294, %240
  br label %296

296:                                              ; preds = %295, %110
  %297 = load i32, i32* %6, align 4
  %298 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %299 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 8
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.normalize_state*, %struct.normalize_state** %7, align 8
  %307 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load i32*, i32** %5, align 8
  %309 = load i32, i32* @c99, align 4
  %310 = call i64 @CPP_OPTION(i32* %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %296
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ucnranges, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @DIG, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %312
  store i32 2, i32* %4, align 4
  br label %324

323:                                              ; preds = %312, %296
  store i32 1, i32* %4, align 4
  br label %324

324:                                              ; preds = %323, %322, %90, %55, %15
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @CPP_PEDANTIC(i32*) #1

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, i32) #1

declare dso_local i8* @MAX(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
