; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i32* null, align 8
@DEBUG_KIND_CLASS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.stab_demangle_info*, i8**, i32**)* @stab_demangle_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stab_demangle_type(%struct.stab_demangle_info* %0, i8** %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stab_demangle_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %501 [
    i32 80, label %30
    i32 112, label %30
    i32 82, label %53
    i32 65, label %76
    i32 84, label %167
    i32 70, label %204
    i32 77, label %261
    i32 79, label %261
    i32 71, label %455
    i32 67, label %467
    i32 81, label %490
  ]

30:                                               ; preds = %3, %3
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32**, i32*** %7, align 8
  %37 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %34, i8** %35, i32** %36)
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** @FALSE, align 8
  store i8* %40, i8** %4, align 8
  br label %512

41:                                               ; preds = %30
  %42 = load i32**, i32*** %7, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %46 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @debug_make_pointer_type(i32 %47, i32* %49)
  %51 = load i32**, i32*** %7, align 8
  store i32* %50, i32** %51, align 8
  br label %52

52:                                               ; preds = %44, %41
  br label %510

53:                                               ; preds = %3
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %54, align 8
  %57 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %58 = load i8**, i8*** %6, align 8
  %59 = load i32**, i32*** %7, align 8
  %60 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %57, i8** %58, i32** %59)
  %61 = icmp ne i8* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = load i8*, i8** @FALSE, align 8
  store i8* %63, i8** %4, align 8
  br label %512

64:                                               ; preds = %53
  %65 = load i32**, i32*** %7, align 8
  %66 = icmp ne i32** %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %69 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32**, i32*** %7, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = call i32* @debug_make_reference_type(i32 %70, i32* %72)
  %74 = load i32**, i32*** %7, align 8
  store i32* %73, i32** %74, align 8
  br label %75

75:                                               ; preds = %67, %64
  br label %510

76:                                               ; preds = %3
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %77, align 8
  store i64 0, i64* %9, align 8
  br label %80

80:                                               ; preds = %104, %76
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i8**, i8*** %6, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 95
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi i1 [ false, %80 ], [ %91, %86 ]
  br i1 %93, label %94, label %118

94:                                               ; preds = %92
  %95 = load i8**, i8*** %6, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @ISDIGIT(i8 signext %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @stab_bad_demangle(i8* %101)
  %103 = load i8*, i8** @FALSE, align 8
  store i8* %103, i8** %4, align 8
  br label %512

104:                                              ; preds = %94
  %105 = load i64, i64* %9, align 8
  %106 = mul i64 %105, 10
  store i64 %106, i64* %9, align 8
  %107 = load i8**, i8*** %6, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 %110, 48
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %9, align 8
  %115 = load i8**, i8*** %6, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %115, align 8
  br label %80

118:                                              ; preds = %92
  %119 = load i8**, i8*** %6, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 95
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @stab_bad_demangle(i8* %125)
  %127 = load i8*, i8** @FALSE, align 8
  store i8* %127, i8** %4, align 8
  br label %512

128:                                              ; preds = %118
  %129 = load i8**, i8*** %6, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %129, align 8
  %132 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %133 = load i8**, i8*** %6, align 8
  %134 = load i32**, i32*** %7, align 8
  %135 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %132, i8** %133, i32** %134)
  %136 = icmp ne i8* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %128
  %138 = load i8*, i8** @FALSE, align 8
  store i8* %138, i8** %4, align 8
  br label %512

139:                                              ; preds = %128
  %140 = load i32**, i32*** %7, align 8
  %141 = icmp ne i32** %140, null
  br i1 %141, label %142, label %166

142:                                              ; preds = %139
  %143 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %144 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32* @debug_find_named_type(i32 %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %146, i32** %10, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %151 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** @FALSE, align 8
  %154 = call i32* @debug_make_int_type(i32 %152, i32 4, i8* %153)
  store i32* %154, i32** %10, align 8
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %157 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32**, i32*** %7, align 8
  %160 = load i32*, i32** %159, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load i8*, i8** @FALSE, align 8
  %164 = call i32* @debug_make_array_type(i32 %158, i32* %160, i32* %161, i32 0, i64 %162, i8* %163)
  %165 = load i32**, i32*** %7, align 8
  store i32* %164, i32** %165, align 8
  br label %166

166:                                              ; preds = %155, %139
  br label %510

167:                                              ; preds = %3
  %168 = load i8**, i8*** %6, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %168, align 8
  %171 = load i8**, i8*** %6, align 8
  %172 = call i32 @stab_demangle_get_count(i8** %171, i32* %11)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %167
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @stab_bad_demangle(i8* %175)
  %177 = load i8*, i8** @FALSE, align 8
  store i8* %177, i8** %4, align 8
  br label %512

178:                                              ; preds = %167
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %181 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp uge i32 %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @stab_bad_demangle(i8* %185)
  %187 = load i8*, i8** @FALSE, align 8
  store i8* %187, i8** %4, align 8
  br label %512

188:                                              ; preds = %178
  %189 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %190 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %189, i32 0, i32 3
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  store i8* %196, i8** %12, align 8
  %197 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %198 = load i32**, i32*** %7, align 8
  %199 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %197, i8** %12, i32** %198)
  %200 = icmp ne i8* %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %188
  %202 = load i8*, i8** @FALSE, align 8
  store i8* %202, i8** %4, align 8
  br label %512

203:                                              ; preds = %188
  br label %510

204:                                              ; preds = %3
  %205 = load i8**, i8*** %6, align 8
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %205, align 8
  %208 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %209 = load i8**, i8*** %6, align 8
  %210 = load i32**, i32*** %7, align 8
  %211 = icmp eq i32** %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %214

213:                                              ; preds = %204
  br label %214

214:                                              ; preds = %213, %212
  %215 = phi i32*** [ null, %212 ], [ %13, %213 ]
  %216 = load i32**, i32*** %7, align 8
  %217 = icmp eq i32** %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %220

219:                                              ; preds = %214
  br label %220

220:                                              ; preds = %219, %218
  %221 = phi i8** [ null, %218 ], [ %14, %219 ]
  %222 = call i32 @stab_demangle_args(%struct.stab_demangle_info* %208, i8** %209, i32*** %215, i8** %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = load i8*, i8** @FALSE, align 8
  store i8* %225, i8** %4, align 8
  br label %512

226:                                              ; preds = %220
  %227 = load i8**, i8*** %6, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 95
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load i8*, i8** %8, align 8
  %234 = call i32 @stab_bad_demangle(i8* %233)
  %235 = load i8*, i8** @FALSE, align 8
  store i8* %235, i8** %4, align 8
  br label %512

236:                                              ; preds = %226
  %237 = load i8**, i8*** %6, align 8
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %237, align 8
  %240 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %241 = load i8**, i8*** %6, align 8
  %242 = load i32**, i32*** %7, align 8
  %243 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %240, i8** %241, i32** %242)
  %244 = icmp ne i8* %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %236
  %246 = load i8*, i8** @FALSE, align 8
  store i8* %246, i8** %4, align 8
  br label %512

247:                                              ; preds = %236
  %248 = load i32**, i32*** %7, align 8
  %249 = icmp ne i32** %248, null
  br i1 %249, label %250, label %260

250:                                              ; preds = %247
  %251 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %252 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32**, i32*** %7, align 8
  %255 = load i32*, i32** %254, align 8
  %256 = load i32**, i32*** %13, align 8
  %257 = load i8*, i8** %14, align 8
  %258 = call i32* @debug_make_function_type(i32 %253, i32* %255, i32** %256, i8* %257)
  %259 = load i32**, i32*** %7, align 8
  store i32* %258, i32** %259, align 8
  br label %260

260:                                              ; preds = %250, %247
  br label %510

261:                                              ; preds = %3, %3
  %262 = load i32*, i32** @DEBUG_TYPE_NULL, align 8
  store i32* %262, i32** %18, align 8
  %263 = load i8**, i8*** %6, align 8
  %264 = load i8*, i8** %263, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 77
  %268 = zext i1 %267 to i32
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  store i8* %270, i8** %15, align 8
  %271 = load i8*, i8** @FALSE, align 8
  store i8* %271, i8** %16, align 8
  %272 = load i8*, i8** @FALSE, align 8
  store i8* %272, i8** %17, align 8
  store i32** null, i32*** %19, align 8
  %273 = load i8*, i8** @FALSE, align 8
  store i8* %273, i8** %20, align 8
  %274 = load i8**, i8*** %6, align 8
  %275 = load i8*, i8** %274, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %274, align 8
  %277 = load i8**, i8*** %6, align 8
  %278 = load i8*, i8** %277, align 8
  %279 = load i8, i8* %278, align 1
  %280 = call i32 @ISDIGIT(i8 signext %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %322

282:                                              ; preds = %261
  %283 = load i8**, i8*** %6, align 8
  %284 = call i32 @stab_demangle_count(i8** %283)
  store i32 %284, i32* %21, align 4
  %285 = load i8**, i8*** %6, align 8
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @strlen(i8* %286)
  %288 = load i32, i32* %21, align 4
  %289 = icmp ult i32 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %282
  %291 = load i8*, i8** %8, align 8
  %292 = call i32 @stab_bad_demangle(i8* %291)
  %293 = load i8*, i8** @FALSE, align 8
  store i8* %293, i8** %4, align 8
  br label %512

294:                                              ; preds = %282
  %295 = load i8**, i8*** %6, align 8
  %296 = load i8*, i8** %295, align 8
  store i8* %296, i8** %22, align 8
  %297 = load i32, i32* %21, align 4
  %298 = load i8**, i8*** %6, align 8
  %299 = load i8*, i8** %298, align 8
  %300 = zext i32 %297 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %298, align 8
  %302 = load i32**, i32*** %7, align 8
  %303 = icmp ne i32** %302, null
  br i1 %303, label %304, label %321

304:                                              ; preds = %294
  %305 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %306 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %309 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load i8*, i8** %22, align 8
  %312 = load i32, i32* %21, align 4
  %313 = load i32, i32* @DEBUG_KIND_CLASS, align 4
  %314 = call i32* @stab_find_tagged_type(i32 %307, i32 %310, i8* %311, i32 %312, i32 %313)
  store i32* %314, i32** %18, align 8
  %315 = load i32*, i32** %18, align 8
  %316 = load i32*, i32** @DEBUG_TYPE_NULL, align 8
  %317 = icmp eq i32* %315, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %304
  %319 = load i8*, i8** @FALSE, align 8
  store i8* %319, i8** %4, align 8
  br label %512

320:                                              ; preds = %304
  br label %321

321:                                              ; preds = %320, %294
  br label %347

322:                                              ; preds = %261
  %323 = load i8**, i8*** %6, align 8
  %324 = load i8*, i8** %323, align 8
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 81
  br i1 %327, label %328, label %342

328:                                              ; preds = %322
  %329 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %330 = load i8**, i8*** %6, align 8
  %331 = load i32**, i32*** %7, align 8
  %332 = icmp eq i32** %331, null
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %335

334:                                              ; preds = %328
  br label %335

335:                                              ; preds = %334, %333
  %336 = phi i32** [ null, %333 ], [ %18, %334 ]
  %337 = call i32 @stab_demangle_qualified(%struct.stab_demangle_info* %329, i8** %330, i32** %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %335
  %340 = load i8*, i8** @FALSE, align 8
  store i8* %340, i8** %4, align 8
  br label %512

341:                                              ; preds = %335
  br label %346

342:                                              ; preds = %322
  %343 = load i8*, i8** %8, align 8
  %344 = call i32 @stab_bad_demangle(i8* %343)
  %345 = load i8*, i8** @FALSE, align 8
  store i8* %345, i8** %4, align 8
  br label %512

346:                                              ; preds = %341
  br label %347

347:                                              ; preds = %346, %321
  %348 = load i8*, i8** %15, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %406

350:                                              ; preds = %347
  %351 = load i8**, i8*** %6, align 8
  %352 = load i8*, i8** %351, align 8
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp eq i32 %354, 67
  br i1 %355, label %356, label %361

356:                                              ; preds = %350
  %357 = load i8*, i8** @TRUE, align 8
  store i8* %357, i8** %16, align 8
  %358 = load i8**, i8*** %6, align 8
  %359 = load i8*, i8** %358, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %360, i8** %358, align 8
  br label %373

361:                                              ; preds = %350
  %362 = load i8**, i8*** %6, align 8
  %363 = load i8*, i8** %362, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp eq i32 %365, 86
  br i1 %366, label %367, label %372

367:                                              ; preds = %361
  %368 = load i8*, i8** @TRUE, align 8
  store i8* %368, i8** %17, align 8
  %369 = load i8**, i8*** %6, align 8
  %370 = load i8*, i8** %369, align 8
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %369, align 8
  br label %372

372:                                              ; preds = %367, %361
  br label %373

373:                                              ; preds = %372, %356
  %374 = load i8**, i8*** %6, align 8
  %375 = load i8*, i8** %374, align 8
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i32
  %378 = icmp ne i32 %377, 70
  br i1 %378, label %379, label %383

379:                                              ; preds = %373
  %380 = load i8*, i8** %8, align 8
  %381 = call i32 @stab_bad_demangle(i8* %380)
  %382 = load i8*, i8** @FALSE, align 8
  store i8* %382, i8** %4, align 8
  br label %512

383:                                              ; preds = %373
  %384 = load i8**, i8*** %6, align 8
  %385 = load i8*, i8** %384, align 8
  %386 = getelementptr inbounds i8, i8* %385, i32 1
  store i8* %386, i8** %384, align 8
  %387 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %388 = load i8**, i8*** %6, align 8
  %389 = load i32**, i32*** %7, align 8
  %390 = icmp eq i32** %389, null
  br i1 %390, label %391, label %392

391:                                              ; preds = %383
  br label %393

392:                                              ; preds = %383
  br label %393

393:                                              ; preds = %392, %391
  %394 = phi i32*** [ null, %391 ], [ %19, %392 ]
  %395 = load i32**, i32*** %7, align 8
  %396 = icmp eq i32** %395, null
  br i1 %396, label %397, label %398

397:                                              ; preds = %393
  br label %399

398:                                              ; preds = %393
  br label %399

399:                                              ; preds = %398, %397
  %400 = phi i8** [ null, %397 ], [ %20, %398 ]
  %401 = call i32 @stab_demangle_args(%struct.stab_demangle_info* %387, i8** %388, i32*** %394, i8** %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %399
  %404 = load i8*, i8** @FALSE, align 8
  store i8* %404, i8** %4, align 8
  br label %512

405:                                              ; preds = %399
  br label %406

406:                                              ; preds = %405, %347
  %407 = load i8**, i8*** %6, align 8
  %408 = load i8*, i8** %407, align 8
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp ne i32 %410, 95
  br i1 %411, label %412, label %416

412:                                              ; preds = %406
  %413 = load i8*, i8** %8, align 8
  %414 = call i32 @stab_bad_demangle(i8* %413)
  %415 = load i8*, i8** @FALSE, align 8
  store i8* %415, i8** %4, align 8
  br label %512

416:                                              ; preds = %406
  %417 = load i8**, i8*** %6, align 8
  %418 = load i8*, i8** %417, align 8
  %419 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %419, i8** %417, align 8
  %420 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %421 = load i8**, i8*** %6, align 8
  %422 = load i32**, i32*** %7, align 8
  %423 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %420, i8** %421, i32** %422)
  %424 = icmp ne i8* %423, null
  br i1 %424, label %427, label %425

425:                                              ; preds = %416
  %426 = load i8*, i8** @FALSE, align 8
  store i8* %426, i8** %4, align 8
  br label %512

427:                                              ; preds = %416
  %428 = load i32**, i32*** %7, align 8
  %429 = icmp ne i32** %428, null
  br i1 %429, label %430, label %454

430:                                              ; preds = %427
  %431 = load i8*, i8** %15, align 8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %442, label %433

433:                                              ; preds = %430
  %434 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %435 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load i32*, i32** %18, align 8
  %438 = load i32**, i32*** %7, align 8
  %439 = load i32*, i32** %438, align 8
  %440 = call i32* @debug_make_offset_type(i32 %436, i32* %437, i32* %439)
  %441 = load i32**, i32*** %7, align 8
  store i32* %440, i32** %441, align 8
  br label %453

442:                                              ; preds = %430
  %443 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %444 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = load i32**, i32*** %7, align 8
  %447 = load i32*, i32** %446, align 8
  %448 = load i32*, i32** %18, align 8
  %449 = load i32**, i32*** %19, align 8
  %450 = load i8*, i8** %20, align 8
  %451 = call i32* @debug_make_method_type(i32 %445, i32* %447, i32* %448, i32** %449, i8* %450)
  %452 = load i32**, i32*** %7, align 8
  store i32* %451, i32** %452, align 8
  br label %453

453:                                              ; preds = %442, %433
  br label %454

454:                                              ; preds = %453, %427
  br label %510

455:                                              ; preds = %3
  %456 = load i8**, i8*** %6, align 8
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds i8, i8* %457, i32 1
  store i8* %458, i8** %456, align 8
  %459 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %460 = load i8**, i8*** %6, align 8
  %461 = load i32**, i32*** %7, align 8
  %462 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %459, i8** %460, i32** %461)
  %463 = icmp ne i8* %462, null
  br i1 %463, label %466, label %464

464:                                              ; preds = %455
  %465 = load i8*, i8** @FALSE, align 8
  store i8* %465, i8** %4, align 8
  br label %512

466:                                              ; preds = %455
  br label %510

467:                                              ; preds = %3
  %468 = load i8**, i8*** %6, align 8
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %468, align 8
  %471 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %472 = load i8**, i8*** %6, align 8
  %473 = load i32**, i32*** %7, align 8
  %474 = call i8* @stab_demangle_type(%struct.stab_demangle_info* %471, i8** %472, i32** %473)
  %475 = icmp ne i8* %474, null
  br i1 %475, label %478, label %476

476:                                              ; preds = %467
  %477 = load i8*, i8** @FALSE, align 8
  store i8* %477, i8** %4, align 8
  br label %512

478:                                              ; preds = %467
  %479 = load i32**, i32*** %7, align 8
  %480 = icmp ne i32** %479, null
  br i1 %480, label %481, label %489

481:                                              ; preds = %478
  %482 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %483 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32**, i32*** %7, align 8
  %486 = load i32*, i32** %485, align 8
  %487 = call i32* @debug_make_const_type(i32 %484, i32* %486)
  %488 = load i32**, i32*** %7, align 8
  store i32* %487, i32** %488, align 8
  br label %489

489:                                              ; preds = %481, %478
  br label %510

490:                                              ; preds = %3
  %491 = load i8**, i8*** %6, align 8
  %492 = load i8*, i8** %491, align 8
  store i8* %492, i8** %23, align 8
  %493 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %494 = load i8**, i8*** %6, align 8
  %495 = load i32**, i32*** %7, align 8
  %496 = call i32 @stab_demangle_qualified(%struct.stab_demangle_info* %493, i8** %494, i32** %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %490
  %499 = load i8*, i8** @FALSE, align 8
  store i8* %499, i8** %4, align 8
  br label %512

500:                                              ; preds = %490
  br label %510

501:                                              ; preds = %3
  %502 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %5, align 8
  %503 = load i8**, i8*** %6, align 8
  %504 = load i32**, i32*** %7, align 8
  %505 = call i32 @stab_demangle_fund_type(%struct.stab_demangle_info* %502, i8** %503, i32** %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %501
  %508 = load i8*, i8** @FALSE, align 8
  store i8* %508, i8** %4, align 8
  br label %512

509:                                              ; preds = %501
  br label %510

510:                                              ; preds = %509, %500, %489, %466, %454, %260, %203, %166, %75, %52
  %511 = load i8*, i8** @TRUE, align 8
  store i8* %511, i8** %4, align 8
  br label %512

512:                                              ; preds = %510, %507, %498, %476, %464, %425, %412, %403, %379, %342, %339, %318, %290, %245, %232, %224, %201, %184, %174, %137, %124, %100, %62, %39
  %513 = load i8*, i8** %4, align 8
  ret i8* %513
}

declare dso_local i32* @debug_make_pointer_type(i32, i32*) #1

declare dso_local i32* @debug_make_reference_type(i32, i32*) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @stab_bad_demangle(i8*) #1

declare dso_local i32* @debug_find_named_type(i32, i8*) #1

declare dso_local i32* @debug_make_int_type(i32, i32, i8*) #1

declare dso_local i32* @debug_make_array_type(i32, i32*, i32*, i32, i64, i8*) #1

declare dso_local i32 @stab_demangle_get_count(i8**, i32*) #1

declare dso_local i32 @stab_demangle_args(%struct.stab_demangle_info*, i8**, i32***, i8**) #1

declare dso_local i32* @debug_make_function_type(i32, i32*, i32**, i8*) #1

declare dso_local i32 @stab_demangle_count(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @stab_find_tagged_type(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @stab_demangle_qualified(%struct.stab_demangle_info*, i8**, i32**) #1

declare dso_local i32* @debug_make_offset_type(i32, i32*, i32*) #1

declare dso_local i32* @debug_make_method_type(i32, i32*, i32*, i32**, i8*) #1

declare dso_local i32* @debug_make_const_type(i32, i32*) #1

declare dso_local i32 @stab_demangle_fund_type(%struct.stab_demangle_info*, i8**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
