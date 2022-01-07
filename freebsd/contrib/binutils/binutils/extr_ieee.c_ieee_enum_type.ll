; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_enum_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_enum_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.ieee_defined_enum*, %struct.TYPE_4__* }
%struct.ieee_defined_enum = type { i8*, i32, i8**, i32*, i64, %struct.ieee_defined_enum* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee_buflist = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8**, i32*)* @ieee_enum_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_enum_type(i8* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee_handle*, align 8
  %11 = alloca %struct.ieee_defined_enum*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.ieee_handle*
  store %struct.ieee_handle* %17, %struct.ieee_handle** %10, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %12, align 8
  store i32 -1, i32* %14, align 4
  %19 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %20 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %19, i32 0, i32 0
  %21 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %20, align 8
  store %struct.ieee_defined_enum* %21, %struct.ieee_defined_enum** %11, align 8
  br label %22

22:                                               ; preds = %198, %4
  %23 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %24 = icmp ne %struct.ieee_defined_enum* %23, null
  br i1 %24, label %25, label %202

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %30 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %198

34:                                               ; preds = %28
  br label %61

35:                                               ; preds = %25
  %36 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %37 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %46 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %44, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %40
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %55 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %53, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %40, %35
  br label %198

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %63 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %68 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %14, align 4
  br label %202

70:                                               ; preds = %61
  %71 = load i8**, i8*** %8, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %152

73:                                               ; preds = %70
  %74 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %75 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %74, i32 0, i32 2
  %76 = load i8**, i8*** %75, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %152

78:                                               ; preds = %73
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %148, %78
  %80 = load i8**, i8*** %8, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %88 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %87, i32 0, i32 2
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br label %95

95:                                               ; preds = %86, %79
  %96 = phi i1 [ false, %79 ], [ %94, %86 ]
  br i1 %96, label %97, label %151

97:                                               ; preds = %95
  %98 = load i8**, i8*** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %107 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %105, %115
  br i1 %116, label %146, label %117

117:                                              ; preds = %97
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %124 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %122, %129
  br i1 %130, label %146, label %131

131:                                              ; preds = %117
  %132 = load i8**, i8*** %8, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %138 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %137, i32 0, i32 2
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %136, i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %131, %117, %97
  br label %151

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %79

151:                                              ; preds = %146, %95
  br label %152

152:                                              ; preds = %151, %73, %70
  %153 = load i8**, i8*** %8, align 8
  %154 = icmp eq i8** %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %157 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %156, i32 0, i32 2
  %158 = load i8**, i8*** %157, align 8
  %159 = icmp eq i8** %158, null
  br i1 %159, label %184, label %160

160:                                              ; preds = %155, %152
  %161 = load i8**, i8*** %8, align 8
  %162 = icmp ne i8** %161, null
  br i1 %162, label %163, label %192

163:                                              ; preds = %160
  %164 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %165 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %164, i32 0, i32 2
  %166 = load i8**, i8*** %165, align 8
  %167 = icmp ne i8** %166, null
  br i1 %167, label %168, label %192

168:                                              ; preds = %163
  %169 = load i8**, i8*** %8, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  %176 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %177 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %176, i32 0, i32 2
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %175, %155
  %185 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %186 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %187 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i64, i64* @TRUE, align 8
  %190 = load i64, i64* @FALSE, align 8
  %191 = call i64 @ieee_push_type(%struct.ieee_handle* %185, i32 %188, i32 0, i64 %189, i64 %190)
  store i64 %191, i64* %5, align 8
  br label %341

192:                                              ; preds = %175, %168, %163, %160
  %193 = load i8*, i8** %7, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i64, i64* @TRUE, align 8
  store i64 %196, i64* %12, align 8
  br label %202

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %59, %33
  %199 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %200 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %199, i32 0, i32 5
  %201 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %200, align 8
  store %struct.ieee_defined_enum* %201, %struct.ieee_defined_enum** %11, align 8
  br label %22

202:                                              ; preds = %195, %66, %22
  %203 = load i64, i64* @TRUE, align 8
  store i64 %203, i64* %13, align 8
  %204 = load i8**, i8*** %8, align 8
  %205 = icmp ne i8** %204, null
  br i1 %205, label %206, label %229

206:                                              ; preds = %202
  store i32 0, i32* %15, align 4
  br label %207

207:                                              ; preds = %225, %206
  %208 = load i8**, i8*** %8, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %228

214:                                              ; preds = %207
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %214
  %223 = load i64, i64* @FALSE, align 8
  store i64 %223, i64* %13, align 8
  br label %228

224:                                              ; preds = %214
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %15, align 4
  br label %207

228:                                              ; preds = %222, %207
  br label %229

229:                                              ; preds = %228, %202
  %230 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %231 = load i8*, i8** %7, align 8
  %232 = load i32, i32* %14, align 4
  %233 = load i64, i64* @TRUE, align 8
  %234 = load i64, i64* %12, align 8
  %235 = call i32 @ieee_define_named_type(%struct.ieee_handle* %230, i8* %231, i32 %232, i32 0, i64 %233, i64 %234, %struct.ieee_buflist* null)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %229
  %238 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %239 = load i64, i64* %13, align 8
  %240 = icmp ne i64 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 69, i32 78
  %243 = call i32 @ieee_write_number(%struct.ieee_handle* %238, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %237, %229
  %246 = load i64, i64* @FALSE, align 8
  store i64 %246, i64* %5, align 8
  br label %341

247:                                              ; preds = %237
  %248 = load i64, i64* %13, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %252 = call i32 @ieee_write_number(%struct.ieee_handle* %251, i32 4)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = load i64, i64* @FALSE, align 8
  store i64 %255, i64* %5, align 8
  br label %341

256:                                              ; preds = %250
  br label %257

257:                                              ; preds = %256, %247
  %258 = load i8**, i8*** %8, align 8
  %259 = icmp ne i8** %258, null
  br i1 %259, label %260, label %299

260:                                              ; preds = %257
  store i32 0, i32* %15, align 4
  br label %261

261:                                              ; preds = %295, %260
  %262 = load i8**, i8*** %8, align 8
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %298

268:                                              ; preds = %261
  %269 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %270 = load i8**, i8*** %8, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @ieee_write_id(%struct.ieee_handle* %269, i8* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %268
  %278 = load i64, i64* @FALSE, align 8
  store i64 %278, i64* %5, align 8
  br label %341

279:                                              ; preds = %268
  %280 = load i64, i64* %13, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %279
  %283 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %284 = load i32*, i32** %9, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @ieee_write_number(%struct.ieee_handle* %283, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %282
  %292 = load i64, i64* @FALSE, align 8
  store i64 %292, i64* %5, align 8
  br label %341

293:                                              ; preds = %282
  br label %294

294:                                              ; preds = %293, %279
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %15, align 4
  br label %261

298:                                              ; preds = %261
  br label %299

299:                                              ; preds = %298, %257
  %300 = load i64, i64* %12, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %339, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %14, align 4
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %305, label %329

305:                                              ; preds = %302
  %306 = call i64 @xmalloc(i32 48)
  %307 = inttoptr i64 %306 to %struct.ieee_defined_enum*
  store %struct.ieee_defined_enum* %307, %struct.ieee_defined_enum** %11, align 8
  %308 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %309 = call i32 @memset(%struct.ieee_defined_enum* %308, i32 0, i32 48)
  %310 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %311 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %310, i32 0, i32 1
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %317 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 8
  %318 = load i8*, i8** %7, align 8
  %319 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %320 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %319, i32 0, i32 0
  store i8* %318, i8** %320, align 8
  %321 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %322 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %321, i32 0, i32 0
  %323 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %322, align 8
  %324 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %325 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %324, i32 0, i32 5
  store %struct.ieee_defined_enum* %323, %struct.ieee_defined_enum** %325, align 8
  %326 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %327 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %328 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %327, i32 0, i32 0
  store %struct.ieee_defined_enum* %326, %struct.ieee_defined_enum** %328, align 8
  br label %329

329:                                              ; preds = %305, %302
  %330 = load i8**, i8*** %8, align 8
  %331 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %332 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %331, i32 0, i32 2
  store i8** %330, i8*** %332, align 8
  %333 = load i32*, i32** %9, align 8
  %334 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %335 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %334, i32 0, i32 3
  store i32* %333, i32** %335, align 8
  %336 = load i64, i64* @TRUE, align 8
  %337 = load %struct.ieee_defined_enum*, %struct.ieee_defined_enum** %11, align 8
  %338 = getelementptr inbounds %struct.ieee_defined_enum, %struct.ieee_defined_enum* %337, i32 0, i32 4
  store i64 %336, i64* %338, align 8
  br label %339

339:                                              ; preds = %329, %299
  %340 = load i64, i64* @TRUE, align 8
  store i64 %340, i64* %5, align 8
  br label %341

341:                                              ; preds = %339, %291, %277, %254, %245, %184
  %342 = load i64, i64* %5, align 8
  ret i64 %342
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @ieee_push_type(%struct.ieee_handle*, i32, i32, i64, i64) #1

declare dso_local i32 @ieee_define_named_type(%struct.ieee_handle*, i8*, i32, i32, i64, i64, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.ieee_defined_enum*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
