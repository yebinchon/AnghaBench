; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@DEBUG_KIND_STRUCT = common dso_local global i32 0, align 4
@DEBUG_KIND_UNION = common dso_local global i32 0, align 4
@DEBUG_KIND_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unrecognized cross reference type\00", align 1
@DEBUG_KIND_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.stab_handle*, i8*, i8**, i64**)* @parse_stab_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_stab_type(i8* %0, %struct.stab_handle* %1, i8* %2, i8** %3, i64** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stab_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca [2 x i32], align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64** %4, i64*** %11, align 8
  %36 = load i64**, i64*** %11, align 8
  %37 = icmp ne i64** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i64**, i64*** %11, align 8
  store i64* null, i64** %39, align 8
  br label %40

40:                                               ; preds = %38, %5
  %41 = load i8**, i8*** %10, align 8
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  store i32 -1, i32* %14, align 4
  %43 = load i8*, i8** @FALSE, align 8
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %46 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i8**, i8*** %10, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @ISDIGIT(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %40
  %53 = load i8**, i8*** %10, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 40
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i8**, i8*** %10, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 45
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 -1, i32* %65, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 -1, i32* %66, align 4
  br label %172

67:                                               ; preds = %58, %52, %40
  %68 = load i8**, i8*** %10, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %70 = call i32 @parse_stab_type_number(i8** %68, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %73, i64* %6, align 8
  br label %716

74:                                               ; preds = %67
  %75 = load i8**, i8*** %10, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 61
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %84 = call i64 @stab_find_type(i8* %81, %struct.stab_handle* %82, i32* %83)
  store i64 %84, i64* %6, align 8
  br label %716

85:                                               ; preds = %74
  %86 = load i64**, i64*** %11, align 8
  %87 = icmp ne i64** %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %99 = call i64* @stab_find_slot(%struct.stab_handle* %97, i32* %98)
  %100 = load i64**, i64*** %11, align 8
  store i64* %99, i64** %100, align 8
  br label %101

101:                                              ; preds = %96, %92, %88, %85
  %102 = load i8**, i8*** %10, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %102, align 8
  br label %105

105:                                              ; preds = %170, %101
  %106 = load i8**, i8*** %10, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 64
  br i1 %110, label %111, label %171

111:                                              ; preds = %105
  %112 = load i8**, i8*** %10, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  store i8* %114, i8** %18, align 8
  %115 = load i8*, i8** %18, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @ISDIGIT(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %111
  %120 = load i8*, i8** %18, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 40
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %18, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 45
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %119, %111
  br label %171

130:                                              ; preds = %124
  %131 = load i8*, i8** %18, align 8
  store i8* %131, i8** %19, align 8
  br label %132

132:                                              ; preds = %147, %130
  %133 = load i8*, i8** %18, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 59
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load i8*, i8** %18, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @bad_stab(i8* %143)
  %145 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %145, i64* %6, align 8
  br label %716

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %18, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %18, align 8
  br label %132

150:                                              ; preds = %132
  %151 = load i8*, i8** %18, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8**, i8*** %10, align 8
  store i8* %152, i8** %153, align 8
  %154 = load i8*, i8** %19, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  switch i32 %156, label %169 [
    i32 115, label %157
    i32 83, label %167
  ]

157:                                              ; preds = %150
  %158 = load i8*, i8** %19, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = call i32 @atoi(i8* %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sdiv i32 %161, 8
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  store i32 -1, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %157
  br label %170

167:                                              ; preds = %150
  %168 = load i8*, i8** @TRUE, align 8
  store i8* %168, i8** %15, align 8
  br label %170

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169, %167, %166
  br label %105

171:                                              ; preds = %129, %105
  br label %172

172:                                              ; preds = %171, %64
  %173 = load i8**, i8*** %10, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  store i32 %176, i32* %16, align 4
  %177 = load i8**, i8*** %10, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %177, align 8
  %180 = load i32, i32* %16, align 4
  switch i32 %180, label %678 [
    i32 120, label %181
    i32 45, label %324
    i32 48, label %324
    i32 49, label %324
    i32 50, label %324
    i32 51, label %324
    i32 52, label %324
    i32 53, label %324
    i32 54, label %324
    i32 55, label %324
    i32 56, label %324
    i32 57, label %324
    i32 40, label %324
    i32 42, label %379
    i32 38, label %386
    i32 102, label %393
    i32 107, label %401
    i32 66, label %408
    i32 64, label %415
    i32 35, label %453
    i32 114, label %622
    i32 98, label %629
    i32 82, label %633
    i32 101, label %637
    i32 115, label %641
    i32 117, label %641
    i32 97, label %651
    i32 83, label %670
  ]

181:                                              ; preds = %172
  %182 = load i8**, i8*** %10, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  switch i32 %185, label %192 [
    i32 115, label %186
    i32 117, label %188
    i32 101, label %190
  ]

186:                                              ; preds = %181
  %187 = load i32, i32* @DEBUG_KIND_STRUCT, align 4
  store i32 %187, i32* %20, align 4
  br label %197

188:                                              ; preds = %181
  %189 = load i32, i32* @DEBUG_KIND_UNION, align 4
  store i32 %189, i32* %20, align 4
  br label %197

190:                                              ; preds = %181
  %191 = load i32, i32* @DEBUG_KIND_ENUM, align 4
  store i32 %191, i32* %20, align 4
  br label %197

192:                                              ; preds = %181
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %195 = call i32 @warn_stab(i8* %193, i32 %194)
  %196 = load i32, i32* @DEBUG_KIND_STRUCT, align 4
  store i32 %196, i32* %20, align 4
  br label %197

197:                                              ; preds = %192, %190, %188, %186
  %198 = load i8**, i8*** %10, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %198, align 8
  %201 = load i8**, i8*** %10, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = call i8* @strchr(i8* %202, i8 signext 60)
  store i8* %203, i8** %21, align 8
  %204 = load i8**, i8*** %10, align 8
  %205 = load i8*, i8** %204, align 8
  %206 = call i8* @strchr(i8* %205, i8 signext 58)
  store i8* %206, i8** %23, align 8
  %207 = load i8*, i8** %23, align 8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %197
  %210 = load i8*, i8** %12, align 8
  %211 = call i32 @bad_stab(i8* %210)
  %212 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %212, i64* %6, align 8
  br label %716

213:                                              ; preds = %197
  %214 = load i8*, i8** %21, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %275

216:                                              ; preds = %213
  %217 = load i8*, i8** %23, align 8
  %218 = load i8*, i8** %21, align 8
  %219 = icmp ugt i8* %217, %218
  br i1 %219, label %220, label %275

220:                                              ; preds = %216
  %221 = load i8*, i8** %23, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 58
  br i1 %225, label %226, label %275

226:                                              ; preds = %220
  store i32 0, i32* %24, align 4
  %227 = load i8*, i8** %21, align 8
  store i8* %227, i8** %22, align 8
  br label %228

228:                                              ; preds = %261, %226
  %229 = load i8*, i8** %22, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %264

233:                                              ; preds = %228
  %234 = load i8*, i8** %22, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 60
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load i32, i32* %24, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %24, align 4
  br label %260

241:                                              ; preds = %233
  %242 = load i8*, i8** %22, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 62
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %24, align 4
  br label %259

249:                                              ; preds = %241
  %250 = load i8*, i8** %22, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 58
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load i32, i32* %24, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %264

258:                                              ; preds = %254, %249
  br label %259

259:                                              ; preds = %258, %246
  br label %260

260:                                              ; preds = %259, %238
  br label %261

261:                                              ; preds = %260
  %262 = load i8*, i8** %22, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %22, align 8
  br label %228

264:                                              ; preds = %257, %228
  %265 = load i8*, i8** %22, align 8
  store i8* %265, i8** %23, align 8
  %266 = load i8*, i8** %23, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp ne i32 %268, 58
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load i8*, i8** %12, align 8
  %272 = call i32 @bad_stab(i8* %271)
  %273 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %273, i64* %6, align 8
  br label %716

274:                                              ; preds = %264
  br label %275

275:                                              ; preds = %274, %220, %216, %213
  %276 = load i8*, i8** %9, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %307

278:                                              ; preds = %275
  %279 = load i8*, i8** %9, align 8
  %280 = load i8**, i8*** %10, align 8
  %281 = load i8*, i8** %280, align 8
  %282 = load i8*, i8** %23, align 8
  %283 = load i8**, i8*** %10, align 8
  %284 = load i8*, i8** %283, align 8
  %285 = ptrtoint i8* %282 to i64
  %286 = ptrtoint i8* %284 to i64
  %287 = sub i64 %285, %286
  %288 = trunc i64 %287 to i32
  %289 = call i32 @strncmp(i8* %279, i8* %281, i32 %288)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %307

291:                                              ; preds = %278
  %292 = load i8*, i8** %9, align 8
  %293 = load i8*, i8** %23, align 8
  %294 = load i8**, i8*** %10, align 8
  %295 = load i8*, i8** %294, align 8
  %296 = ptrtoint i8* %293 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = getelementptr inbounds i8, i8* %292, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %291
  %304 = load i8*, i8** @TRUE, align 8
  %305 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %306 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %305, i32 0, i32 0
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %303, %291, %278, %275
  %308 = load i8*, i8** %7, align 8
  %309 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %310 = load i8**, i8*** %10, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = load i8*, i8** %23, align 8
  %313 = load i8**, i8*** %10, align 8
  %314 = load i8*, i8** %313, align 8
  %315 = ptrtoint i8* %312 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  %318 = trunc i64 %317 to i32
  %319 = load i32, i32* %20, align 4
  %320 = call i64 @stab_find_tagged_type(i8* %308, %struct.stab_handle* %309, i8* %311, i32 %318, i32 %319)
  store i64 %320, i64* %17, align 8
  %321 = load i8*, i8** %23, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 1
  %323 = load i8**, i8*** %10, align 8
  store i8* %322, i8** %323, align 8
  br label %682

324:                                              ; preds = %172, %172, %172, %172, %172, %172, %172, %172, %172, %172, %172, %172
  %325 = load i8**, i8*** %10, align 8
  %326 = load i8*, i8** %325, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 -1
  store i8* %327, i8** %325, align 8
  %328 = load i8**, i8*** %10, align 8
  %329 = load i8*, i8** %328, align 8
  store i8* %329, i8** %25, align 8
  %330 = load i8**, i8*** %10, align 8
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %332 = call i32 @parse_stab_type_number(i8** %330, i32* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %324
  %335 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %335, i64* %6, align 8
  br label %716

336:                                              ; preds = %324
  %337 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %338, %340
  br i1 %341, label %342, label %351

342:                                              ; preds = %336
  %343 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %344, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %342
  %349 = load i8*, i8** %7, align 8
  %350 = call i64 @debug_make_void_type(i8* %349)
  store i64 %350, i64* %17, align 8
  br label %364

351:                                              ; preds = %342, %336
  %352 = load i8*, i8** %25, align 8
  %353 = load i8**, i8*** %10, align 8
  store i8* %352, i8** %353, align 8
  %354 = load i8*, i8** %7, align 8
  %355 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %356 = load i8**, i8*** %10, align 8
  %357 = call i64 @parse_stab_type(i8* %354, %struct.stab_handle* %355, i8* null, i8** %356, i64** null)
  store i64 %357, i64* %17, align 8
  %358 = load i64, i64* %17, align 8
  %359 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %351
  %362 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %362, i64* %6, align 8
  br label %716

363:                                              ; preds = %351
  br label %364

364:                                              ; preds = %363, %348
  %365 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, -1
  br i1 %367, label %368, label %378

368:                                              ; preds = %364
  %369 = load i8*, i8** %7, align 8
  %370 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %372 = load i64, i64* %17, align 8
  %373 = call i32 @stab_record_type(i8* %369, %struct.stab_handle* %370, i32* %371, i64 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %368
  %376 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %376, i64* %6, align 8
  br label %716

377:                                              ; preds = %368
  br label %378

378:                                              ; preds = %377, %364
  br label %682

379:                                              ; preds = %172
  %380 = load i8*, i8** %7, align 8
  %381 = load i8*, i8** %7, align 8
  %382 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %383 = load i8**, i8*** %10, align 8
  %384 = call i64 @parse_stab_type(i8* %381, %struct.stab_handle* %382, i8* null, i8** %383, i64** null)
  %385 = call i64 @debug_make_pointer_type(i8* %380, i64 %384)
  store i64 %385, i64* %17, align 8
  br label %682

386:                                              ; preds = %172
  %387 = load i8*, i8** %7, align 8
  %388 = load i8*, i8** %7, align 8
  %389 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %390 = load i8**, i8*** %10, align 8
  %391 = call i64 @parse_stab_type(i8* %388, %struct.stab_handle* %389, i8* null, i8** %390, i64** null)
  %392 = call i64 @debug_make_reference_type(i8* %387, i64 %391)
  store i64 %392, i64* %17, align 8
  br label %682

393:                                              ; preds = %172
  %394 = load i8*, i8** %7, align 8
  %395 = load i8*, i8** %7, align 8
  %396 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %397 = load i8**, i8*** %10, align 8
  %398 = call i64 @parse_stab_type(i8* %395, %struct.stab_handle* %396, i8* null, i8** %397, i64** null)
  %399 = load i8*, i8** @FALSE, align 8
  %400 = call i64 @debug_make_function_type(i8* %394, i64 %398, i64* null, i8* %399)
  store i64 %400, i64* %17, align 8
  br label %682

401:                                              ; preds = %172
  %402 = load i8*, i8** %7, align 8
  %403 = load i8*, i8** %7, align 8
  %404 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %405 = load i8**, i8*** %10, align 8
  %406 = call i64 @parse_stab_type(i8* %403, %struct.stab_handle* %404, i8* null, i8** %405, i64** null)
  %407 = call i64 @debug_make_const_type(i8* %402, i64 %406)
  store i64 %407, i64* %17, align 8
  br label %682

408:                                              ; preds = %172
  %409 = load i8*, i8** %7, align 8
  %410 = load i8*, i8** %7, align 8
  %411 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %412 = load i8**, i8*** %10, align 8
  %413 = call i64 @parse_stab_type(i8* %410, %struct.stab_handle* %411, i8* null, i8** %412, i64** null)
  %414 = call i64 @debug_make_volatile_type(i8* %409, i64 %413)
  store i64 %414, i64* %17, align 8
  br label %682

415:                                              ; preds = %172
  %416 = load i8*, i8** %7, align 8
  %417 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %418 = load i8**, i8*** %10, align 8
  %419 = call i64 @parse_stab_type(i8* %416, %struct.stab_handle* %417, i8* null, i8** %418, i64** null)
  store i64 %419, i64* %27, align 8
  %420 = load i64, i64* %27, align 8
  %421 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %415
  %424 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %424, i64* %6, align 8
  br label %716

425:                                              ; preds = %415
  %426 = load i8**, i8*** %10, align 8
  %427 = load i8*, i8** %426, align 8
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = icmp ne i32 %429, 44
  br i1 %430, label %431, label %435

431:                                              ; preds = %425
  %432 = load i8*, i8** %12, align 8
  %433 = call i32 @bad_stab(i8* %432)
  %434 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %434, i64* %6, align 8
  br label %716

435:                                              ; preds = %425
  %436 = load i8**, i8*** %10, align 8
  %437 = load i8*, i8** %436, align 8
  %438 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %438, i8** %436, align 8
  %439 = load i8*, i8** %7, align 8
  %440 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %441 = load i8**, i8*** %10, align 8
  %442 = call i64 @parse_stab_type(i8* %439, %struct.stab_handle* %440, i8* null, i8** %441, i64** null)
  store i64 %442, i64* %28, align 8
  %443 = load i64, i64* %28, align 8
  %444 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %446, label %448

446:                                              ; preds = %435
  %447 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %447, i64* %6, align 8
  br label %716

448:                                              ; preds = %435
  %449 = load i8*, i8** %7, align 8
  %450 = load i64, i64* %27, align 8
  %451 = load i64, i64* %28, align 8
  %452 = call i64 @debug_make_offset_type(i8* %449, i64 %450, i64 %451)
  store i64 %452, i64* %17, align 8
  br label %682

453:                                              ; preds = %172
  %454 = load i8**, i8*** %10, align 8
  %455 = load i8*, i8** %454, align 8
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i32
  %458 = icmp eq i32 %457, 35
  br i1 %458, label %459, label %491

459:                                              ; preds = %453
  %460 = load i8**, i8*** %10, align 8
  %461 = load i8*, i8** %460, align 8
  %462 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %462, i8** %460, align 8
  %463 = load i8*, i8** %7, align 8
  %464 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %465 = load i8**, i8*** %10, align 8
  %466 = call i64 @parse_stab_type(i8* %463, %struct.stab_handle* %464, i8* null, i8** %465, i64** null)
  store i64 %466, i64* %29, align 8
  %467 = load i64, i64* %29, align 8
  %468 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %459
  %471 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %471, i64* %6, align 8
  br label %716

472:                                              ; preds = %459
  %473 = load i8**, i8*** %10, align 8
  %474 = load i8*, i8** %473, align 8
  %475 = load i8, i8* %474, align 1
  %476 = sext i8 %475 to i32
  %477 = icmp ne i32 %476, 59
  br i1 %477, label %478, label %482

478:                                              ; preds = %472
  %479 = load i8*, i8** %12, align 8
  %480 = call i32 @bad_stab(i8* %479)
  %481 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %481, i64* %6, align 8
  br label %716

482:                                              ; preds = %472
  %483 = load i8**, i8*** %10, align 8
  %484 = load i8*, i8** %483, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %485, i8** %483, align 8
  %486 = load i8*, i8** %7, align 8
  %487 = load i64, i64* %29, align 8
  %488 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %489 = load i8*, i8** @FALSE, align 8
  %490 = call i64 @debug_make_method_type(i8* %486, i64 %487, i64 %488, i64* null, i8* %489)
  store i64 %490, i64* %17, align 8
  br label %621

491:                                              ; preds = %453
  %492 = load i8*, i8** %7, align 8
  %493 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %494 = load i8**, i8*** %10, align 8
  %495 = call i64 @parse_stab_type(i8* %492, %struct.stab_handle* %493, i8* null, i8** %494, i64** null)
  store i64 %495, i64* %30, align 8
  %496 = load i64, i64* %30, align 8
  %497 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %501

499:                                              ; preds = %491
  %500 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %500, i64* %6, align 8
  br label %716

501:                                              ; preds = %491
  %502 = load i8**, i8*** %10, align 8
  %503 = load i8*, i8** %502, align 8
  %504 = load i8, i8* %503, align 1
  %505 = sext i8 %504 to i32
  %506 = icmp ne i32 %505, 44
  br i1 %506, label %507, label %511

507:                                              ; preds = %501
  %508 = load i8*, i8** %12, align 8
  %509 = call i32 @bad_stab(i8* %508)
  %510 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %510, i64* %6, align 8
  br label %716

511:                                              ; preds = %501
  %512 = load i8**, i8*** %10, align 8
  %513 = load i8*, i8** %512, align 8
  %514 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %514, i8** %512, align 8
  %515 = load i8*, i8** %7, align 8
  %516 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %517 = load i8**, i8*** %10, align 8
  %518 = call i64 @parse_stab_type(i8* %515, %struct.stab_handle* %516, i8* null, i8** %517, i64** null)
  store i64 %518, i64* %31, align 8
  %519 = load i64, i64* %31, align 8
  %520 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %521 = icmp eq i64 %519, %520
  br i1 %521, label %522, label %524

522:                                              ; preds = %511
  %523 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %523, i64* %6, align 8
  br label %716

524:                                              ; preds = %511
  store i32 10, i32* %34, align 4
  %525 = load i32, i32* %34, align 4
  %526 = zext i32 %525 to i64
  %527 = mul i64 %526, 8
  %528 = trunc i64 %527 to i32
  %529 = call i64 @xmalloc(i32 %528)
  %530 = inttoptr i64 %529 to i64*
  store i64* %530, i64** %32, align 8
  store i32 0, i32* %33, align 4
  br label %531

531:                                              ; preds = %583, %524
  %532 = load i8**, i8*** %10, align 8
  %533 = load i8*, i8** %532, align 8
  %534 = load i8, i8* %533, align 1
  %535 = sext i8 %534 to i32
  %536 = icmp ne i32 %535, 59
  br i1 %536, label %537, label %586

537:                                              ; preds = %531
  %538 = load i8**, i8*** %10, align 8
  %539 = load i8*, i8** %538, align 8
  %540 = load i8, i8* %539, align 1
  %541 = sext i8 %540 to i32
  %542 = icmp ne i32 %541, 44
  br i1 %542, label %543, label %547

543:                                              ; preds = %537
  %544 = load i8*, i8** %12, align 8
  %545 = call i32 @bad_stab(i8* %544)
  %546 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %546, i64* %6, align 8
  br label %716

547:                                              ; preds = %537
  %548 = load i8**, i8*** %10, align 8
  %549 = load i8*, i8** %548, align 8
  %550 = getelementptr inbounds i8, i8* %549, i32 1
  store i8* %550, i8** %548, align 8
  %551 = load i32, i32* %33, align 4
  %552 = add i32 %551, 1
  %553 = load i32, i32* %34, align 4
  %554 = icmp uge i32 %552, %553
  br i1 %554, label %555, label %565

555:                                              ; preds = %547
  %556 = load i32, i32* %34, align 4
  %557 = add i32 %556, 10
  store i32 %557, i32* %34, align 4
  %558 = load i64*, i64** %32, align 8
  %559 = load i32, i32* %34, align 4
  %560 = zext i32 %559 to i64
  %561 = mul i64 %560, 8
  %562 = trunc i64 %561 to i32
  %563 = call i64 @xrealloc(i64* %558, i32 %562)
  %564 = inttoptr i64 %563 to i64*
  store i64* %564, i64** %32, align 8
  br label %565

565:                                              ; preds = %555, %547
  %566 = load i8*, i8** %7, align 8
  %567 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %568 = load i8**, i8*** %10, align 8
  %569 = call i64 @parse_stab_type(i8* %566, %struct.stab_handle* %567, i8* null, i8** %568, i64** null)
  %570 = load i64*, i64** %32, align 8
  %571 = load i32, i32* %33, align 4
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds i64, i64* %570, i64 %572
  store i64 %569, i64* %573, align 8
  %574 = load i64*, i64** %32, align 8
  %575 = load i32, i32* %33, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds i64, i64* %574, i64 %576
  %578 = load i64, i64* %577, align 8
  %579 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %583

581:                                              ; preds = %565
  %582 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %582, i64* %6, align 8
  br label %716

583:                                              ; preds = %565
  %584 = load i32, i32* %33, align 4
  %585 = add i32 %584, 1
  store i32 %585, i32* %33, align 4
  br label %531

586:                                              ; preds = %531
  %587 = load i8**, i8*** %10, align 8
  %588 = load i8*, i8** %587, align 8
  %589 = getelementptr inbounds i8, i8* %588, i32 1
  store i8* %589, i8** %587, align 8
  %590 = load i32, i32* %33, align 4
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %603, label %592

592:                                              ; preds = %586
  %593 = load i8*, i8** %7, align 8
  %594 = load i64*, i64** %32, align 8
  %595 = load i32, i32* %33, align 4
  %596 = sub i32 %595, 1
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds i64, i64* %594, i64 %597
  %599 = load i64, i64* %598, align 8
  %600 = call i32 @debug_get_type_kind(i8* %593, i64 %599)
  %601 = load i32, i32* @DEBUG_KIND_VOID, align 4
  %602 = icmp ne i32 %600, %601
  br i1 %602, label %603, label %605

603:                                              ; preds = %592, %586
  %604 = load i8*, i8** @TRUE, align 8
  store i8* %604, i8** %35, align 8
  br label %609

605:                                              ; preds = %592
  %606 = load i32, i32* %33, align 4
  %607 = add i32 %606, -1
  store i32 %607, i32* %33, align 4
  %608 = load i8*, i8** @FALSE, align 8
  store i8* %608, i8** %35, align 8
  br label %609

609:                                              ; preds = %605, %603
  %610 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %611 = load i64*, i64** %32, align 8
  %612 = load i32, i32* %33, align 4
  %613 = zext i32 %612 to i64
  %614 = getelementptr inbounds i64, i64* %611, i64 %613
  store i64 %610, i64* %614, align 8
  %615 = load i8*, i8** %7, align 8
  %616 = load i64, i64* %31, align 8
  %617 = load i64, i64* %30, align 8
  %618 = load i64*, i64** %32, align 8
  %619 = load i8*, i8** %35, align 8
  %620 = call i64 @debug_make_method_type(i8* %615, i64 %616, i64 %617, i64* %618, i8* %619)
  store i64 %620, i64* %17, align 8
  br label %621

621:                                              ; preds = %609, %482
  br label %682

622:                                              ; preds = %172
  %623 = load i8*, i8** %7, align 8
  %624 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %625 = load i8*, i8** %9, align 8
  %626 = load i8**, i8*** %10, align 8
  %627 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %628 = call i64 @parse_stab_range_type(i8* %623, %struct.stab_handle* %624, i8* %625, i8** %626, i32* %627)
  store i64 %628, i64* %17, align 8
  br label %682

629:                                              ; preds = %172
  %630 = load i8*, i8** %7, align 8
  %631 = load i8**, i8*** %10, align 8
  %632 = call i64 @parse_stab_sun_builtin_type(i8* %630, i8** %631)
  store i64 %632, i64* %17, align 8
  br label %682

633:                                              ; preds = %172
  %634 = load i8*, i8** %7, align 8
  %635 = load i8**, i8*** %10, align 8
  %636 = call i64 @parse_stab_sun_floating_type(i8* %634, i8** %635)
  store i64 %636, i64* %17, align 8
  br label %682

637:                                              ; preds = %172
  %638 = load i8*, i8** %7, align 8
  %639 = load i8**, i8*** %10, align 8
  %640 = call i64 @parse_stab_enum_type(i8* %638, i8** %639)
  store i64 %640, i64* %17, align 8
  br label %682

641:                                              ; preds = %172, %172
  %642 = load i8*, i8** %7, align 8
  %643 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %644 = load i8*, i8** %9, align 8
  %645 = load i8**, i8*** %10, align 8
  %646 = load i32, i32* %16, align 4
  %647 = icmp eq i32 %646, 115
  %648 = zext i1 %647 to i32
  %649 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %650 = call i64 @parse_stab_struct_type(i8* %642, %struct.stab_handle* %643, i8* %644, i8** %645, i32 %648, i32* %649)
  store i64 %650, i64* %17, align 8
  br label %682

651:                                              ; preds = %172
  %652 = load i8**, i8*** %10, align 8
  %653 = load i8*, i8** %652, align 8
  %654 = load i8, i8* %653, align 1
  %655 = sext i8 %654 to i32
  %656 = icmp ne i32 %655, 114
  br i1 %656, label %657, label %661

657:                                              ; preds = %651
  %658 = load i8*, i8** %12, align 8
  %659 = call i32 @bad_stab(i8* %658)
  %660 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %660, i64* %6, align 8
  br label %716

661:                                              ; preds = %651
  %662 = load i8**, i8*** %10, align 8
  %663 = load i8*, i8** %662, align 8
  %664 = getelementptr inbounds i8, i8* %663, i32 1
  store i8* %664, i8** %662, align 8
  %665 = load i8*, i8** %7, align 8
  %666 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %667 = load i8**, i8*** %10, align 8
  %668 = load i8*, i8** %15, align 8
  %669 = call i64 @parse_stab_array_type(i8* %665, %struct.stab_handle* %666, i8** %667, i8* %668)
  store i64 %669, i64* %17, align 8
  br label %682

670:                                              ; preds = %172
  %671 = load i8*, i8** %7, align 8
  %672 = load i8*, i8** %7, align 8
  %673 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %674 = load i8**, i8*** %10, align 8
  %675 = call i64 @parse_stab_type(i8* %672, %struct.stab_handle* %673, i8* null, i8** %674, i64** null)
  %676 = load i8*, i8** %15, align 8
  %677 = call i64 @debug_make_set_type(i8* %671, i64 %675, i8* %676)
  store i64 %677, i64* %17, align 8
  br label %682

678:                                              ; preds = %172
  %679 = load i8*, i8** %12, align 8
  %680 = call i32 @bad_stab(i8* %679)
  %681 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %681, i64* %6, align 8
  br label %716

682:                                              ; preds = %670, %661, %641, %637, %633, %629, %622, %621, %448, %408, %401, %393, %386, %379, %378, %307
  %683 = load i64, i64* %17, align 8
  %684 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %685 = icmp eq i64 %683, %684
  br i1 %685, label %686, label %688

686:                                              ; preds = %682
  %687 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %687, i64* %6, align 8
  br label %716

688:                                              ; preds = %682
  %689 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %690 = load i32, i32* %689, align 4
  %691 = icmp ne i32 %690, -1
  br i1 %691, label %692, label %702

692:                                              ; preds = %688
  %693 = load i8*, i8** %7, align 8
  %694 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %695 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %696 = load i64, i64* %17, align 8
  %697 = call i32 @stab_record_type(i8* %693, %struct.stab_handle* %694, i32* %695, i64 %696)
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %701, label %699

699:                                              ; preds = %692
  %700 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %700, i64* %6, align 8
  br label %716

701:                                              ; preds = %692
  br label %702

702:                                              ; preds = %701, %688
  %703 = load i32, i32* %14, align 4
  %704 = icmp ne i32 %703, -1
  br i1 %704, label %705, label %714

705:                                              ; preds = %702
  %706 = load i8*, i8** %7, align 8
  %707 = load i64, i64* %17, align 8
  %708 = load i32, i32* %14, align 4
  %709 = call i32 @debug_record_type_size(i8* %706, i64 %707, i32 %708)
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %713, label %711

711:                                              ; preds = %705
  %712 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %712, i64* %6, align 8
  br label %716

713:                                              ; preds = %705
  br label %714

714:                                              ; preds = %713, %702
  %715 = load i64, i64* %17, align 8
  store i64 %715, i64* %6, align 8
  br label %716

716:                                              ; preds = %714, %711, %699, %686, %678, %657, %581, %543, %522, %507, %499, %478, %470, %446, %431, %423, %375, %361, %334, %270, %209, %142, %80, %72
  %717 = load i64, i64* %6, align 8
  ret i64 %717
}

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @parse_stab_type_number(i8**, i32*) #1

declare dso_local i64 @stab_find_type(i8*, %struct.stab_handle*, i32*) #1

declare dso_local i64* @stab_find_slot(%struct.stab_handle*, i32*) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @stab_find_tagged_type(i8*, %struct.stab_handle*, i8*, i32, i32) #1

declare dso_local i64 @debug_make_void_type(i8*) #1

declare dso_local i32 @stab_record_type(i8*, %struct.stab_handle*, i32*, i64) #1

declare dso_local i64 @debug_make_pointer_type(i8*, i64) #1

declare dso_local i64 @debug_make_reference_type(i8*, i64) #1

declare dso_local i64 @debug_make_function_type(i8*, i64, i64*, i8*) #1

declare dso_local i64 @debug_make_const_type(i8*, i64) #1

declare dso_local i64 @debug_make_volatile_type(i8*, i64) #1

declare dso_local i64 @debug_make_offset_type(i8*, i64, i64) #1

declare dso_local i64 @debug_make_method_type(i8*, i64, i64, i64*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(i64*, i32) #1

declare dso_local i32 @debug_get_type_kind(i8*, i64) #1

declare dso_local i64 @parse_stab_range_type(i8*, %struct.stab_handle*, i8*, i8**, i32*) #1

declare dso_local i64 @parse_stab_sun_builtin_type(i8*, i8**) #1

declare dso_local i64 @parse_stab_sun_floating_type(i8*, i8**) #1

declare dso_local i64 @parse_stab_enum_type(i8*, i8**) #1

declare dso_local i64 @parse_stab_struct_type(i8*, %struct.stab_handle*, i8*, i8**, i32, i32*) #1

declare dso_local i64 @parse_stab_array_type(i8*, %struct.stab_handle*, i8**, i8*) #1

declare dso_local i64 @debug_make_set_type(i8*, i64, i8*) #1

declare dso_local i32 @debug_record_type_size(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
