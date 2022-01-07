; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_gnu_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_gnu_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32 }

@cplus_markers = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c" virtual table\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0123456789Qt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"{anonymous}\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"__thunk_\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"virtual function thunk (delta:%d) for \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"__t\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" type_info node\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" type_info function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*)* @gnu_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_special(%struct.work_stuff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.work_stuff*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [50 x i8], align 16
  store %struct.work_stuff* %0, %struct.work_stuff** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %8, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 95
  br i1 %18, label %19, label %42

19:                                               ; preds = %3
  %20 = load i8*, i8** @cplus_markers, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = call i32* @strchr(i8* %20, i8 signext %24)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8* %37, i8** %35, align 8
  %38 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %39 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %465

42:                                               ; preds = %27, %19, %3
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 95
  br i1 %48, label %49, label %205

49:                                               ; preds = %42
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 95
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 118
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 116
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 95
  br i1 %76, label %99, label %77

77:                                               ; preds = %70, %63, %56, %49
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 118
  br i1 %83, label %84, label %205

84:                                               ; preds = %77
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 116
  br i1 %90, label %91, label %205

91:                                               ; preds = %84
  %92 = load i8*, i8** @cplus_markers, align 8
  %93 = load i8**, i8*** %5, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = call i32* @strchr(i8* %92, i8 signext %96)
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %205

99:                                               ; preds = %91, %70
  %100 = load i8**, i8*** %5, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 118
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i8**, i8*** %5, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 5
  store i8* %109, i8** %107, align 8
  br label %114

110:                                              ; preds = %99
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  store i8* %113, i8** %111, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %197, %114
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %198

121:                                              ; preds = %115
  %122 = load i8**, i8*** %5, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  switch i32 %125, label %136 [
    i32 81, label %126
    i32 75, label %126
    i32 116, label %131
  ]

126:                                              ; preds = %121, %121
  %127 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %128 = load i8**, i8*** %5, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @demangle_qualified(%struct.work_stuff* %127, i8** %128, i32* %129, i32 0, i32 1)
  store i32 %130, i32* %8, align 4
  br label %169

131:                                              ; preds = %121
  %132 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @demangle_template(%struct.work_stuff* %132, i8** %133, i32* %134, i32 0, i32 1, i32 1)
  store i32 %135, i32* %8, align 4
  br label %169

136:                                              ; preds = %121
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @ISDIGIT(i8 zeroext %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = load i8**, i8*** %5, align 8
  %145 = call i32 @consume_count(i8** %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i32 1, i32* %8, align 4
  br label %169

152:                                              ; preds = %143
  br label %158

153:                                              ; preds = %136
  %154 = load i8**, i8*** %5, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** @cplus_markers, align 8
  %157 = call i32 @strcspn(i8* %155, i8* %156)
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %153, %152
  %159 = load i32*, i32** %6, align 8
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @string_appendn(i32* %159, i8* %161, i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = load i8**, i8*** %5, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = sext i32 %164 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %165, align 8
  br label %169

169:                                              ; preds = %158, %151, %131, %126
  %170 = load i8**, i8*** %5, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = load i8*, i8** @cplus_markers, align 8
  %173 = call i8* @strpbrk(i8* %171, i8* %172)
  store i8* %173, i8** %9, align 8
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %169
  %177 = load i8*, i8** %9, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = load i8*, i8** %9, align 8
  %181 = load i8**, i8*** %5, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = icmp eq i8* %180, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %179, %176
  %185 = load i8*, i8** %9, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32*, i32** %6, align 8
  %189 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %190 = call i8* @SCOPE_STRING(%struct.work_stuff* %189)
  %191 = call i32 @string_append(i32* %188, i8* %190)
  %192 = load i8**, i8*** %5, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %192, align 8
  br label %195

195:                                              ; preds = %187, %184
  br label %197

196:                                              ; preds = %179, %169
  store i32 0, i32* %8, align 4
  br label %198

197:                                              ; preds = %195
  br label %115

198:                                              ; preds = %196, %115
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32*, i32** %6, align 8
  %203 = call i32 @string_append(i32* %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %198
  br label %464

205:                                              ; preds = %91, %84, %77, %42
  %206 = load i8**, i8*** %5, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 95
  br i1 %211, label %212, label %346

212:                                              ; preds = %205
  %213 = load i8**, i8*** %5, align 8
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = call i32* @strchr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8 signext %216)
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %346

219:                                              ; preds = %212
  %220 = load i8**, i8*** %5, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = load i8*, i8** @cplus_markers, align 8
  %223 = call i8* @strpbrk(i8* %221, i8* %222)
  store i8* %223, i8** %9, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %346

225:                                              ; preds = %219
  %226 = load i8**, i8*** %5, align 8
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %226, align 8
  %229 = load i8**, i8*** %5, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  switch i32 %232, label %243 [
    i32 81, label %233
    i32 75, label %233
    i32 116, label %238
  ]

233:                                              ; preds = %225, %225
  %234 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %235 = load i8**, i8*** %5, align 8
  %236 = load i32*, i32** %6, align 8
  %237 = call i32 @demangle_qualified(%struct.work_stuff* %234, i8** %235, i32* %236, i32 0, i32 1)
  store i32 %237, i32* %8, align 4
  br label %315

238:                                              ; preds = %225
  %239 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = call i32 @demangle_template(%struct.work_stuff* %239, i8** %240, i32* %241, i32 0, i32 1, i32 1)
  store i32 %242, i32* %8, align 4
  br label %315

243:                                              ; preds = %225
  %244 = load i8**, i8*** %5, align 8
  %245 = call i32 @consume_count(i8** %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = load i8**, i8*** %5, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @strlen(i8* %252)
  %254 = sext i32 %253 to i64
  %255 = icmp sgt i64 %250, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %248, %243
  store i32 0, i32* %8, align 4
  br label %315

257:                                              ; preds = %248
  %258 = load i32, i32* %7, align 4
  %259 = icmp sgt i32 %258, 10
  br i1 %259, label %260, label %304

260:                                              ; preds = %257
  %261 = load i8**, i8*** %5, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @strncmp(i8* %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %304

265:                                              ; preds = %260
  %266 = load i8**, i8*** %5, align 8
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 9
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 78
  br i1 %271, label %272, label %304

272:                                              ; preds = %265
  %273 = load i8**, i8*** %5, align 8
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 8
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = load i8**, i8*** %5, align 8
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 10
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %277, %282
  br i1 %283, label %284, label %304

284:                                              ; preds = %272
  %285 = load i8*, i8** @cplus_markers, align 8
  %286 = load i8**, i8*** %5, align 8
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 8
  %289 = load i8, i8* %288, align 1
  %290 = call i32* @strchr(i8* %285, i8 signext %289)
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %304

292:                                              ; preds = %284
  %293 = load i32*, i32** %6, align 8
  %294 = call i32 @string_append(i32* %293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %295 = load i32, i32* %7, align 4
  %296 = load i8**, i8*** %5, align 8
  %297 = load i8*, i8** %296, align 8
  %298 = sext i32 %295 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %296, align 8
  %300 = load i8**, i8*** %5, align 8
  %301 = load i8*, i8** %300, align 8
  %302 = load i8*, i8** @cplus_markers, align 8
  %303 = call i8* @strpbrk(i8* %301, i8* %302)
  store i8* %303, i8** %9, align 8
  br label %315

304:                                              ; preds = %284, %272, %265, %260, %257
  %305 = load i32*, i32** %6, align 8
  %306 = load i8**, i8*** %5, align 8
  %307 = load i8*, i8** %306, align 8
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @string_appendn(i32* %305, i8* %307, i32 %308)
  %310 = load i32, i32* %7, align 4
  %311 = load i8**, i8*** %5, align 8
  %312 = load i8*, i8** %311, align 8
  %313 = sext i32 %310 to i64
  %314 = getelementptr inbounds i8, i8* %312, i64 %313
  store i8* %314, i8** %311, align 8
  br label %315

315:                                              ; preds = %304, %292, %256, %238, %233
  %316 = load i32, i32* %8, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %344

318:                                              ; preds = %315
  %319 = load i8*, i8** %9, align 8
  %320 = load i8**, i8*** %5, align 8
  %321 = load i8*, i8** %320, align 8
  %322 = icmp eq i8* %319, %321
  br i1 %322, label %323, label %344

323:                                              ; preds = %318
  %324 = load i8**, i8*** %5, align 8
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %324, align 8
  %327 = load i32*, i32** %6, align 8
  %328 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %329 = call i8* @SCOPE_STRING(%struct.work_stuff* %328)
  %330 = call i32 @string_append(i32* %327, i8* %329)
  %331 = load i8**, i8*** %5, align 8
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @strlen(i8* %332)
  store i32 %333, i32* %7, align 4
  %334 = load i32*, i32** %6, align 8
  %335 = load i8**, i8*** %5, align 8
  %336 = load i8*, i8** %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = call i32 @string_appendn(i32* %334, i8* %336, i32 %337)
  %339 = load i32, i32* %7, align 4
  %340 = load i8**, i8*** %5, align 8
  %341 = load i8*, i8** %340, align 8
  %342 = sext i32 %339 to i64
  %343 = getelementptr inbounds i8, i8* %341, i64 %342
  store i8* %343, i8** %340, align 8
  br label %345

344:                                              ; preds = %318, %315
  store i32 0, i32* %8, align 4
  br label %345

345:                                              ; preds = %344, %323
  br label %463

346:                                              ; preds = %219, %212, %205
  %347 = load i8**, i8*** %5, align 8
  %348 = load i8*, i8** %347, align 8
  %349 = call i64 @strncmp(i8* %348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %392

351:                                              ; preds = %346
  %352 = load i8**, i8*** %5, align 8
  %353 = load i8*, i8** %352, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 8
  store i8* %354, i8** %352, align 8
  %355 = load i8**, i8*** %5, align 8
  %356 = call i32 @consume_count(i8** %355)
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %10, align 4
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %359, label %360

359:                                              ; preds = %351
  store i32 0, i32* %8, align 4
  br label %391

360:                                              ; preds = %351
  %361 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %362 = load i8**, i8*** %5, align 8
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %362, align 8
  %365 = call i8* @internal_cplus_demangle(%struct.work_stuff* %361, i8* %364)
  store i8* %365, i8** %11, align 8
  %366 = load i8*, i8** %11, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %368, label %389

368:                                              ; preds = %360
  %369 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %370 = load i32, i32* %10, align 4
  %371 = sub nsw i32 0, %370
  %372 = call i32 @sprintf(i8* %369, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %371)
  %373 = load i32*, i32** %6, align 8
  %374 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %375 = call i32 @string_append(i32* %373, i8* %374)
  %376 = load i32*, i32** %6, align 8
  %377 = load i8*, i8** %11, align 8
  %378 = call i32 @string_append(i32* %376, i8* %377)
  %379 = load i8*, i8** %11, align 8
  %380 = call i32 @free(i8* %379)
  %381 = load i8**, i8*** %5, align 8
  %382 = load i8*, i8** %381, align 8
  %383 = call i32 @strlen(i8* %382)
  store i32 %383, i32* %7, align 4
  %384 = load i32, i32* %7, align 4
  %385 = load i8**, i8*** %5, align 8
  %386 = load i8*, i8** %385, align 8
  %387 = sext i32 %384 to i64
  %388 = getelementptr inbounds i8, i8* %386, i64 %387
  store i8* %388, i8** %385, align 8
  br label %390

389:                                              ; preds = %360
  store i32 0, i32* %8, align 4
  br label %390

390:                                              ; preds = %389, %368
  br label %391

391:                                              ; preds = %390, %359
  br label %462

392:                                              ; preds = %346
  %393 = load i8**, i8*** %5, align 8
  %394 = load i8*, i8** %393, align 8
  %395 = call i64 @strncmp(i8* %394, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %460

397:                                              ; preds = %392
  %398 = load i8**, i8*** %5, align 8
  %399 = load i8*, i8** %398, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 3
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = icmp eq i32 %402, 105
  br i1 %403, label %411, label %404

404:                                              ; preds = %397
  %405 = load i8**, i8*** %5, align 8
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 3
  %408 = load i8, i8* %407, align 1
  %409 = sext i8 %408 to i32
  %410 = icmp eq i32 %409, 102
  br i1 %410, label %411, label %460

411:                                              ; preds = %404, %397
  %412 = load i8**, i8*** %5, align 8
  %413 = load i8*, i8** %412, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 3
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 105
  %418 = zext i1 %417 to i64
  %419 = select i1 %417, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)
  store i8* %419, i8** %9, align 8
  %420 = load i8**, i8*** %5, align 8
  %421 = load i8*, i8** %420, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 4
  store i8* %422, i8** %420, align 8
  %423 = load i8**, i8*** %5, align 8
  %424 = load i8*, i8** %423, align 8
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  switch i32 %426, label %437 [
    i32 81, label %427
    i32 75, label %427
    i32 116, label %432
  ]

427:                                              ; preds = %411, %411
  %428 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %429 = load i8**, i8*** %5, align 8
  %430 = load i32*, i32** %6, align 8
  %431 = call i32 @demangle_qualified(%struct.work_stuff* %428, i8** %429, i32* %430, i32 0, i32 1)
  store i32 %431, i32* %8, align 4
  br label %442

432:                                              ; preds = %411
  %433 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %434 = load i8**, i8*** %5, align 8
  %435 = load i32*, i32** %6, align 8
  %436 = call i32 @demangle_template(%struct.work_stuff* %433, i8** %434, i32* %435, i32 0, i32 1, i32 1)
  store i32 %436, i32* %8, align 4
  br label %442

437:                                              ; preds = %411
  %438 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %439 = load i8**, i8*** %5, align 8
  %440 = load i32*, i32** %6, align 8
  %441 = call i32 @do_type(%struct.work_stuff* %438, i8** %439, i32* %440)
  store i32 %441, i32* %8, align 4
  br label %442

442:                                              ; preds = %437, %432, %427
  %443 = load i32, i32* %8, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %442
  %446 = load i8**, i8*** %5, align 8
  %447 = load i8*, i8** %446, align 8
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %445
  store i32 0, i32* %8, align 4
  br label %452

452:                                              ; preds = %451, %445, %442
  %453 = load i32, i32* %8, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %452
  %456 = load i32*, i32** %6, align 8
  %457 = load i8*, i8** %9, align 8
  %458 = call i32 @string_append(i32* %456, i8* %457)
  br label %459

459:                                              ; preds = %455, %452
  br label %461

460:                                              ; preds = %404, %392
  store i32 0, i32* %8, align 4
  br label %461

461:                                              ; preds = %460, %459
  br label %462

462:                                              ; preds = %461, %391
  br label %463

463:                                              ; preds = %462, %345
  br label %464

464:                                              ; preds = %463, %204
  br label %465

465:                                              ; preds = %464, %34
  %466 = load i32, i32* %8, align 4
  ret i32 %466
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @demangle_qualified(%struct.work_stuff*, i8**, i32*, i32, i32) #1

declare dso_local i32 @demangle_template(%struct.work_stuff*, i8**, i32*, i32, i32, i32) #1

declare dso_local i32 @ISDIGIT(i8 zeroext) #1

declare dso_local i32 @consume_count(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @string_appendn(i32*, i8*, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @string_append(i32*, i8*) #1

declare dso_local i8* @SCOPE_STRING(%struct.work_stuff*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @internal_cplus_demangle(%struct.work_stuff*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @do_type(%struct.work_stuff*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
