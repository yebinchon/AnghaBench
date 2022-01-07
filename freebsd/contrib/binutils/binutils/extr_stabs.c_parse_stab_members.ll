; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@DEBUG_KIND_METHOD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PRIVATE = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PROTECTED = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PUBLIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"const/volatile indicator missing\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"member function type missing\00", align 1
@DEBUG_METHOD_VARIANT_NULL = common dso_local global i64 0, align 8
@DEBUG_METHOD_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i8*, i8**, i32*, i64**)* @parse_stab_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_members(i8* %0, %struct.stab_handle* %1, i8* %2, i8** %3, i32* %4, i64** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stab_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64** %5, i64*** %13, align 8
  %37 = load i64**, i64*** %13, align 8
  store i64* null, i64** %37, align 8
  %38 = load i8**, i8*** %11, align 8
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %14, align 8
  store i32 0, i32* %17, align 4
  store i64* null, i64** %15, align 8
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %499, %6
  %41 = load i8**, i8*** %11, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 59
  br i1 %45, label %46, label %510

46:                                               ; preds = %40
  %47 = load i8**, i8*** %11, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 58)
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %18, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 58
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46
  br label %510

59:                                               ; preds = %52
  %60 = load i8**, i8*** %11, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 111
  br i1 %65, label %80, label %66

66:                                               ; preds = %59
  %67 = load i8**, i8*** %11, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 112
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load i8**, i8*** %11, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 36
  br i1 %79, label %80, label %94

80:                                               ; preds = %73, %66, %59
  %81 = load i8**, i8*** %11, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %18, align 8
  %84 = load i8**, i8*** %11, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %83 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @savestring(i8* %82, i32 %89)
  store i8* %90, i8** %19, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8**, i8*** %11, align 8
  store i8* %92, i8** %93, align 8
  br label %139

94:                                               ; preds = %73
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8**, i8*** %11, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i8**, i8*** %11, align 8
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %18, align 8
  br label %100

100:                                              ; preds = %113, %94
  %101 = load i8*, i8** %18, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 46
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %18, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ false, %100 ], [ %109, %105 ]
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %18, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %18, align 8
  br label %100

116:                                              ; preds = %110
  %117 = load i8*, i8** %18, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 46
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @bad_stab(i8* %122)
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %7, align 4
  br label %523

125:                                              ; preds = %116
  %126 = load i8**, i8*** %11, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = load i8**, i8*** %11, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = ptrtoint i8* %128 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i8* @savestring(i8* %127, i32 %134)
  store i8* %135, i8** %19, align 8
  %136 = load i8*, i8** %18, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8**, i8*** %11, align 8
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %125, %80
  store i32 10, i32* %22, align 4
  %140 = load i32, i32* %22, align 4
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, 8
  %143 = trunc i64 %142 to i32
  %144 = call i64 @xmalloc(i32 %143)
  %145 = inttoptr i64 %144 to i64*
  store i64* %145, i64** %20, align 8
  store i32 0, i32* %21, align 4
  %146 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %146, i64* %23, align 8
  br label %147

147:                                              ; preds = %467, %139
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i64, i64* %23, align 8
  store i64 %152, i64* %24, align 8
  %153 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %153, i64* %23, align 8
  br label %175

154:                                              ; preds = %147
  %155 = load i8*, i8** %8, align 8
  %156 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %157 = load i8**, i8*** %11, align 8
  %158 = call i64 @parse_stab_type(i8* %155, %struct.stab_handle* %156, i8* null, i8** %157, i64** null)
  store i64 %158, i64* %24, align 8
  %159 = load i64, i64* %24, align 8
  %160 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %7, align 4
  br label %523

164:                                              ; preds = %154
  %165 = load i8**, i8*** %11, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 58
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @bad_stab(i8* %171)
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %7, align 4
  br label %523

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %151
  %176 = load i8**, i8*** %11, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %176, align 8
  %179 = load i8**, i8*** %11, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @strchr(i8* %180, i8 signext 59)
  store i8* %181, i8** %18, align 8
  %182 = load i8*, i8** %18, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %175
  %185 = load i8*, i8** %14, align 8
  %186 = call i32 @bad_stab(i8* %185)
  %187 = load i32, i32* @FALSE, align 4
  store i32 %187, i32* %7, align 4
  br label %523

188:                                              ; preds = %175
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %25, align 4
  %190 = load i8*, i8** %8, align 8
  %191 = load i64, i64* %24, align 8
  %192 = call i64 @debug_get_type_kind(i8* %190, i64 %191)
  %193 = load i64, i64* @DEBUG_KIND_METHOD, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load i8*, i8** %8, align 8
  %197 = load i64, i64* %24, align 8
  %198 = call i32* @debug_get_parameter_types(i8* %196, i64 %197, i32* %34)
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @TRUE, align 4
  store i32 %201, i32* %25, align 4
  br label %202

202:                                              ; preds = %200, %195, %188
  %203 = load i8**, i8*** %11, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = load i8*, i8** %18, align 8
  %206 = load i8**, i8*** %11, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = ptrtoint i8* %205 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  %212 = call i8* @savestring(i8* %204, i32 %211)
  store i8* %212, i8** %26, align 8
  %213 = load i8*, i8** %18, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8**, i8*** %11, align 8
  store i8* %214, i8** %215, align 8
  %216 = load i8**, i8*** %11, align 8
  %217 = load i8*, i8** %216, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  switch i32 %219, label %224 [
    i32 48, label %220
    i32 49, label %222
  ]

220:                                              ; preds = %202
  %221 = load i32, i32* @DEBUG_VISIBILITY_PRIVATE, align 4
  store i32 %221, i32* %27, align 4
  br label %226

222:                                              ; preds = %202
  %223 = load i32, i32* @DEBUG_VISIBILITY_PROTECTED, align 4
  store i32 %223, i32* %27, align 4
  br label %226

224:                                              ; preds = %202
  %225 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  store i32 %225, i32* %27, align 4
  br label %226

226:                                              ; preds = %224, %222, %220
  %227 = load i8**, i8*** %11, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %227, align 8
  %230 = load i32, i32* @FALSE, align 4
  store i32 %230, i32* %28, align 4
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %29, align 4
  %232 = load i8**, i8*** %11, align 8
  %233 = load i8*, i8** %232, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  switch i32 %235, label %257 [
    i32 65, label %236
    i32 66, label %240
    i32 67, label %245
    i32 68, label %250
    i32 42, label %256
    i32 63, label %256
    i32 46, label %256
  ]

236:                                              ; preds = %226
  %237 = load i8**, i8*** %11, align 8
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %237, align 8
  br label %261

240:                                              ; preds = %226
  %241 = load i32, i32* @TRUE, align 4
  store i32 %241, i32* %28, align 4
  %242 = load i8**, i8*** %11, align 8
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %242, align 8
  br label %261

245:                                              ; preds = %226
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %29, align 4
  %247 = load i8**, i8*** %11, align 8
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %247, align 8
  br label %261

250:                                              ; preds = %226
  %251 = load i32, i32* @TRUE, align 4
  store i32 %251, i32* %28, align 4
  %252 = load i32, i32* @TRUE, align 4
  store i32 %252, i32* %29, align 4
  %253 = load i8**, i8*** %11, align 8
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %253, align 8
  br label %261

256:                                              ; preds = %226, %226, %226
  br label %261

257:                                              ; preds = %226
  %258 = load i8*, i8** %14, align 8
  %259 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %260 = call i32 @warn_stab(i8* %258, i8* %259)
  br label %261

261:                                              ; preds = %257, %256, %250, %245, %240, %236
  %262 = load i32, i32* @FALSE, align 4
  store i32 %262, i32* %30, align 4
  %263 = load i8**, i8*** %11, align 8
  %264 = load i8*, i8** %263, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  switch i32 %266, label %346 [
    i32 42, label %267
    i32 63, label %331
    i32 46, label %350
  ]

267:                                              ; preds = %261
  %268 = load i8**, i8*** %11, align 8
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %268, align 8
  %271 = load i8**, i8*** %11, align 8
  %272 = call i32 @parse_number(i8** %271, i32* null)
  store i32 %272, i32* %31, align 4
  %273 = load i8**, i8*** %11, align 8
  %274 = load i8*, i8** %273, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp ne i32 %276, 59
  br i1 %277, label %278, label %282

278:                                              ; preds = %267
  %279 = load i8*, i8** %14, align 8
  %280 = call i32 @bad_stab(i8* %279)
  %281 = load i32, i32* @FALSE, align 4
  store i32 %281, i32* %7, align 4
  br label %523

282:                                              ; preds = %267
  %283 = load i8**, i8*** %11, align 8
  %284 = load i8*, i8** %283, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %283, align 8
  %286 = load i32, i32* %31, align 4
  %287 = and i32 %286, 2147483647
  store i32 %287, i32* %31, align 4
  %288 = load i8**, i8*** %11, align 8
  %289 = load i8*, i8** %288, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 59
  br i1 %292, label %299, label %293

293:                                              ; preds = %282
  %294 = load i8**, i8*** %11, align 8
  %295 = load i8*, i8** %294, align 8
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %293, %282
  %300 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %300, i64* %32, align 8
  br label %330

301:                                              ; preds = %293
  %302 = load i8*, i8** %8, align 8
  %303 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %304 = load i8**, i8*** %11, align 8
  %305 = call i64 @parse_stab_type(i8* %302, %struct.stab_handle* %303, i8* null, i8** %304, i64** null)
  store i64 %305, i64* %23, align 8
  %306 = load i8**, i8*** %11, align 8
  %307 = load i8*, i8** %306, align 8
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 58
  br i1 %310, label %311, label %313

311:                                              ; preds = %301
  %312 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %312, i64* %32, align 8
  br label %329

313:                                              ; preds = %301
  %314 = load i64, i64* %23, align 8
  store i64 %314, i64* %32, align 8
  %315 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %315, i64* %23, align 8
  %316 = load i8**, i8*** %11, align 8
  %317 = load i8*, i8** %316, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 59
  br i1 %320, label %321, label %325

321:                                              ; preds = %313
  %322 = load i8*, i8** %14, align 8
  %323 = call i32 @bad_stab(i8* %322)
  %324 = load i32, i32* @FALSE, align 4
  store i32 %324, i32* %7, align 4
  br label %523

325:                                              ; preds = %313
  %326 = load i8**, i8*** %11, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %326, align 8
  br label %329

329:                                              ; preds = %325, %311
  br label %330

330:                                              ; preds = %329, %299
  br label %355

331:                                              ; preds = %261
  %332 = load i8**, i8*** %11, align 8
  %333 = load i8*, i8** %332, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %332, align 8
  %335 = load i32, i32* @TRUE, align 4
  store i32 %335, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %336 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %336, i64* %32, align 8
  %337 = load i8*, i8** %26, align 8
  %338 = load i8*, i8** %19, align 8
  %339 = load i8*, i8** %19, align 8
  %340 = call i32 @strlen(i8* %339)
  %341 = call i32 @strncmp(i8* %337, i8* %338, i32 %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %331
  %344 = load i32, i32* @TRUE, align 4
  store i32 %344, i32* %25, align 4
  br label %345

345:                                              ; preds = %343, %331
  br label %355

346:                                              ; preds = %261
  %347 = load i8*, i8** %14, align 8
  %348 = call i32 @warn_stab(i8* %347, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %31, align 4
  %349 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %349, i64* %32, align 8
  br label %355

350:                                              ; preds = %261
  %351 = load i8**, i8*** %11, align 8
  %352 = load i8*, i8** %351, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %351, align 8
  store i32 0, i32* %31, align 4
  %354 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %354, i64* %32, align 8
  br label %355

355:                                              ; preds = %350, %346, %345, %330
  %356 = load i32, i32* %25, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = load i8*, i8** %26, align 8
  store i8* %359, i8** %33, align 8
  br label %398

360:                                              ; preds = %355
  %361 = load i8*, i8** %8, align 8
  %362 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %363 = load i32*, i32** %12, align 8
  %364 = call i64 @stab_find_type(i8* %361, %struct.stab_handle* %362, i32* %363)
  store i64 %364, i64* %35, align 8
  %365 = load i64, i64* %35, align 8
  %366 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %360
  %369 = load i32, i32* @FALSE, align 4
  store i32 %369, i32* %7, align 4
  br label %523

370:                                              ; preds = %360
  %371 = load i8*, i8** %8, align 8
  %372 = load i64, i64* %24, align 8
  %373 = call i64 @debug_get_return_type(i8* %371, i64 %372)
  store i64 %373, i64* %36, align 8
  %374 = load i64, i64* %36, align 8
  %375 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %381

377:                                              ; preds = %370
  %378 = load i8*, i8** %14, align 8
  %379 = call i32 @bad_stab(i8* %378)
  %380 = load i32, i32* @FALSE, align 4
  store i32 %380, i32* %7, align 4
  br label %523

381:                                              ; preds = %370
  %382 = load i8*, i8** %8, align 8
  %383 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %384 = load i64, i64* %35, align 8
  %385 = load i8*, i8** %19, align 8
  %386 = load i8*, i8** %10, align 8
  %387 = load i64, i64* %36, align 8
  %388 = load i8*, i8** %26, align 8
  %389 = load i32, i32* %28, align 4
  %390 = load i32, i32* %29, align 4
  %391 = call i64 @parse_stab_argtypes(i8* %382, %struct.stab_handle* %383, i64 %384, i8* %385, i8* %386, i64 %387, i8* %388, i32 %389, i32 %390, i8** %33)
  store i64 %391, i64* %24, align 8
  %392 = load i64, i64* %24, align 8
  %393 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %381
  %396 = load i32, i32* @FALSE, align 4
  store i32 %396, i32* %7, align 4
  br label %523

397:                                              ; preds = %381
  br label %398

398:                                              ; preds = %397, %358
  %399 = load i32, i32* %21, align 4
  %400 = add i32 %399, 1
  %401 = load i32, i32* %22, align 4
  %402 = icmp uge i32 %400, %401
  br i1 %402, label %403, label %413

403:                                              ; preds = %398
  %404 = load i32, i32* %22, align 4
  %405 = add i32 %404, 10
  store i32 %405, i32* %22, align 4
  %406 = load i64*, i64** %20, align 8
  %407 = load i32, i32* %22, align 4
  %408 = zext i32 %407 to i64
  %409 = mul i64 %408, 8
  %410 = trunc i64 %409 to i32
  %411 = call i64 @xrealloc(i64* %406, i32 %410)
  %412 = inttoptr i64 %411 to i64*
  store i64* %412, i64** %20, align 8
  br label %413

413:                                              ; preds = %403, %398
  %414 = load i32, i32* %30, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %430, label %416

416:                                              ; preds = %413
  %417 = load i8*, i8** %8, align 8
  %418 = load i8*, i8** %33, align 8
  %419 = load i64, i64* %24, align 8
  %420 = load i32, i32* %27, align 4
  %421 = load i32, i32* %28, align 4
  %422 = load i32, i32* %29, align 4
  %423 = load i32, i32* %31, align 4
  %424 = load i64, i64* %32, align 8
  %425 = call i64 @debug_make_method_variant(i8* %417, i8* %418, i64 %419, i32 %420, i32 %421, i32 %422, i32 %423, i64 %424)
  %426 = load i64*, i64** %20, align 8
  %427 = load i32, i32* %21, align 4
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i64, i64* %426, i64 %428
  store i64 %425, i64* %429, align 8
  br label %442

430:                                              ; preds = %413
  %431 = load i8*, i8** %8, align 8
  %432 = load i8*, i8** %33, align 8
  %433 = load i64, i64* %24, align 8
  %434 = load i32, i32* %27, align 4
  %435 = load i32, i32* %28, align 4
  %436 = load i32, i32* %29, align 4
  %437 = call i64 @debug_make_static_method_variant(i8* %431, i8* %432, i64 %433, i32 %434, i32 %435, i32 %436)
  %438 = load i64*, i64** %20, align 8
  %439 = load i32, i32* %21, align 4
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds i64, i64* %438, i64 %440
  store i64 %437, i64* %441, align 8
  br label %442

442:                                              ; preds = %430, %416
  %443 = load i64*, i64** %20, align 8
  %444 = load i32, i32* %21, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds i64, i64* %443, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @DEBUG_METHOD_VARIANT_NULL, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %452

450:                                              ; preds = %442
  %451 = load i32, i32* @FALSE, align 4
  store i32 %451, i32* %7, align 4
  br label %523

452:                                              ; preds = %442
  %453 = load i32, i32* %21, align 4
  %454 = add i32 %453, 1
  store i32 %454, i32* %21, align 4
  br label %455

455:                                              ; preds = %452
  %456 = load i8**, i8*** %11, align 8
  %457 = load i8*, i8** %456, align 8
  %458 = load i8, i8* %457, align 1
  %459 = sext i8 %458 to i32
  %460 = icmp ne i32 %459, 59
  br i1 %460, label %461, label %467

461:                                              ; preds = %455
  %462 = load i8**, i8*** %11, align 8
  %463 = load i8*, i8** %462, align 8
  %464 = load i8, i8* %463, align 1
  %465 = sext i8 %464 to i32
  %466 = icmp ne i32 %465, 0
  br label %467

467:                                              ; preds = %461, %455
  %468 = phi i1 [ false, %455 ], [ %466, %461 ]
  br i1 %468, label %147, label %469

469:                                              ; preds = %467
  %470 = load i64, i64* @DEBUG_METHOD_VARIANT_NULL, align 8
  %471 = load i64*, i64** %20, align 8
  %472 = load i32, i32* %21, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds i64, i64* %471, i64 %473
  store i64 %470, i64* %474, align 8
  %475 = load i8**, i8*** %11, align 8
  %476 = load i8*, i8** %475, align 8
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %469
  %481 = load i8**, i8*** %11, align 8
  %482 = load i8*, i8** %481, align 8
  %483 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %483, i8** %481, align 8
  br label %484

484:                                              ; preds = %480, %469
  %485 = load i32, i32* %16, align 4
  %486 = add i32 %485, 1
  %487 = load i32, i32* %17, align 4
  %488 = icmp uge i32 %486, %487
  br i1 %488, label %489, label %499

489:                                              ; preds = %484
  %490 = load i32, i32* %17, align 4
  %491 = add i32 %490, 10
  store i32 %491, i32* %17, align 4
  %492 = load i64*, i64** %15, align 8
  %493 = load i32, i32* %17, align 4
  %494 = zext i32 %493 to i64
  %495 = mul i64 %494, 8
  %496 = trunc i64 %495 to i32
  %497 = call i64 @xrealloc(i64* %492, i32 %496)
  %498 = inttoptr i64 %497 to i64*
  store i64* %498, i64** %15, align 8
  br label %499

499:                                              ; preds = %489, %484
  %500 = load i8*, i8** %8, align 8
  %501 = load i8*, i8** %19, align 8
  %502 = load i64*, i64** %20, align 8
  %503 = call i64 @debug_make_method(i8* %500, i8* %501, i64* %502)
  %504 = load i64*, i64** %15, align 8
  %505 = load i32, i32* %16, align 4
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds i64, i64* %504, i64 %506
  store i64 %503, i64* %507, align 8
  %508 = load i32, i32* %16, align 4
  %509 = add i32 %508, 1
  store i32 %509, i32* %16, align 4
  br label %40

510:                                              ; preds = %58, %40
  %511 = load i64*, i64** %15, align 8
  %512 = icmp ne i64* %511, null
  br i1 %512, label %513, label %519

513:                                              ; preds = %510
  %514 = load i64, i64* @DEBUG_METHOD_NULL, align 8
  %515 = load i64*, i64** %15, align 8
  %516 = load i32, i32* %16, align 4
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds i64, i64* %515, i64 %517
  store i64 %514, i64* %518, align 8
  br label %519

519:                                              ; preds = %513, %510
  %520 = load i64*, i64** %15, align 8
  %521 = load i64**, i64*** %13, align 8
  store i64* %520, i64** %521, align 8
  %522 = load i32, i32* @TRUE, align 4
  store i32 %522, i32* %7, align 4
  br label %523

523:                                              ; preds = %519, %450, %395, %377, %368, %321, %278, %184, %170, %162, %121
  %524 = load i32, i32* %7, align 4
  ret i32 %524
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i64**) #1

declare dso_local i64 @debug_get_type_kind(i8*, i64) #1

declare dso_local i32* @debug_get_parameter_types(i8*, i64, i32*) #1

declare dso_local i32 @warn_stab(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @parse_number(i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @stab_find_type(i8*, %struct.stab_handle*, i32*) #1

declare dso_local i64 @debug_get_return_type(i8*, i64) #1

declare dso_local i64 @parse_stab_argtypes(i8*, %struct.stab_handle*, i64, i8*, i8*, i64, i8*, i32, i32, i8**) #1

declare dso_local i64 @xrealloc(i64*, i32) #1

declare dso_local i64 @debug_make_method_variant(i8*, i8*, i64, i32, i32, i32, i32, i64) #1

declare dso_local i64 @debug_make_static_method_variant(i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i64 @debug_make_method(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
