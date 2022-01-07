; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_tagged_types_tu_compatible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_tagged_types_tu_compatible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagged_tu_seen_cache = type { i64, i64, i32, %struct.tagged_tu_seen_cache* }

@TYPE_DECL = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i64 0, align 8
@tagged_tu_seen_base = common dso_local global %struct.tagged_tu_seen_cache* null, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @tagged_types_tu_compatible_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tagged_types_tu_compatible_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tagged_tu_seen_cache*, align 8
  %10 = alloca %struct.tagged_tu_seen_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tagged_tu_seen_cache*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tagged_tu_seen_cache*, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %36, %2
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TYPE_NAME(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TYPE_NAME(i64 %24)
  %26 = call i32 @TREE_CODE(i64 %25)
  %27 = load i32, i32* @TYPE_DECL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TYPE_NAME(i64 %30)
  %32 = call i64 @DECL_ORIGINAL_TYPE(i64 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %23, %19
  %35 = phi i1 [ false, %23 ], [ false, %19 ], [ %33, %29 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @TYPE_NAME(i64 %37)
  %39 = call i64 @DECL_ORIGINAL_TYPE(i64 %38)
  store i64 %39, i64* %4, align 8
  br label %19

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @TYPE_NAME(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TYPE_NAME(i64 %46)
  %48 = call i32 @TREE_CODE(i64 %47)
  %49 = load i32, i32* @TYPE_DECL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @TYPE_NAME(i64 %52)
  %54 = call i64 @DECL_ORIGINAL_TYPE(i64 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %45, %41
  %57 = phi i1 [ false, %45 ], [ false, %41 ], [ %55, %51 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @TYPE_NAME(i64 %59)
  %61 = call i64 @DECL_ORIGINAL_TYPE(i64 %60)
  store i64 %61, i64* %5, align 8
  br label %41

62:                                               ; preds = %56
  %63 = load i64, i64* @flag_isoc99, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @TYPE_NAME(i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @TYPE_NAME(i64 %68)
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %464

72:                                               ; preds = %65, %62
  %73 = load i64, i64* %4, align 8
  %74 = call i32* @TYPE_SIZE(i64 %73)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %5, align 8
  %78 = call i32* @TYPE_SIZE(i64 %77)
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  store i32 1, i32* %3, align 4
  br label %464

81:                                               ; preds = %76
  %82 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** @tagged_tu_seen_base, align 8
  store %struct.tagged_tu_seen_cache* %82, %struct.tagged_tu_seen_cache** %9, align 8
  br label %83

83:                                               ; preds = %103, %81
  %84 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %9, align 8
  %85 = icmp ne %struct.tagged_tu_seen_cache* %84, null
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %9, align 8
  %88 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %9, align 8
  %94 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %9, align 8
  %100 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %3, align 4
  br label %464

102:                                              ; preds = %92, %86
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %9, align 8
  %105 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %104, i32 0, i32 3
  %106 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %105, align 8
  store %struct.tagged_tu_seen_cache* %106, %struct.tagged_tu_seen_cache** %9, align 8
  br label %83

107:                                              ; preds = %83
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @TREE_CODE(i64 %108)
  switch i32 %109, label %462 [
    i32 130, label %110
    i32 128, label %215
    i32 129, label %381
  ]

110:                                              ; preds = %107
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call %struct.tagged_tu_seen_cache* @alloc_tagged_tu_seen_cache(i64 %111, i64 %112)
  store %struct.tagged_tu_seen_cache* %113, %struct.tagged_tu_seen_cache** %10, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i64 @TYPE_VALUES(i64 %114)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @TYPE_VALUES(i64 %116)
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 1, i32* %3, align 4
  br label %464

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %149, %122
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i64, i64* %12, align 8
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi i1 [ false, %123 ], [ %128, %126 ]
  br i1 %130, label %131, label %154

131:                                              ; preds = %129
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @TREE_PURPOSE(i64 %132)
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @TREE_PURPOSE(i64 %134)
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %154

138:                                              ; preds = %131
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @TREE_VALUE(i64 %139)
  %141 = load i64, i64* %12, align 8
  %142 = call i32 @TREE_VALUE(i64 %141)
  %143 = call i32 @simple_cst_equal(i32 %140, i32 %142)
  %144 = icmp ne i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %10, align 8
  %147 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %146, i32 0, i32 2
  store i32 0, i32* %147, align 8
  store i32 0, i32* %3, align 4
  br label %464

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %11, align 8
  %151 = call i64 @TREE_CHAIN(i64 %150)
  store i64 %151, i64* %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i64 @TREE_CHAIN(i64 %152)
  store i64 %153, i64* %12, align 8
  br label %123

154:                                              ; preds = %137, %129
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* @NULL_TREE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @NULL_TREE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 1, i32* %3, align 4
  br label %464

163:                                              ; preds = %158, %154
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* @NULL_TREE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* @NULL_TREE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167, %163
  %172 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %10, align 8
  %173 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %172, i32 0, i32 2
  store i32 0, i32* %173, align 8
  store i32 0, i32* %3, align 4
  br label %464

174:                                              ; preds = %167
  %175 = load i64, i64* %4, align 8
  %176 = call i64 @TYPE_VALUES(i64 %175)
  %177 = call i32 @list_length(i64 %176)
  %178 = load i64, i64* %5, align 8
  %179 = call i64 @TYPE_VALUES(i64 %178)
  %180 = call i32 @list_length(i64 %179)
  %181 = icmp ne i32 %177, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %10, align 8
  %184 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %183, i32 0, i32 2
  store i32 0, i32* %184, align 8
  store i32 0, i32* %3, align 4
  br label %464

185:                                              ; preds = %174
  %186 = load i64, i64* %4, align 8
  %187 = call i64 @TYPE_VALUES(i64 %186)
  store i64 %187, i64* %6, align 8
  br label %188

188:                                              ; preds = %211, %185
  %189 = load i64, i64* %6, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %214

191:                                              ; preds = %188
  %192 = load i64, i64* %6, align 8
  %193 = call i32 @TREE_PURPOSE(i64 %192)
  %194 = load i64, i64* %5, align 8
  %195 = call i64 @TYPE_VALUES(i64 %194)
  %196 = call i64 @purpose_member(i32 %193, i64 %195)
  store i64 %196, i64* %7, align 8
  %197 = load i64, i64* %7, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = icmp eq i8* %198, null
  br i1 %199, label %207, label %200

200:                                              ; preds = %191
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @TREE_VALUE(i64 %201)
  %203 = load i64, i64* %7, align 8
  %204 = call i32 @TREE_VALUE(i64 %203)
  %205 = call i32 @simple_cst_equal(i32 %202, i32 %204)
  %206 = icmp ne i32 %205, 1
  br i1 %206, label %207, label %210

207:                                              ; preds = %200, %191
  %208 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %10, align 8
  %209 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %208, i32 0, i32 2
  store i32 0, i32* %209, align 8
  store i32 0, i32* %3, align 4
  br label %464

210:                                              ; preds = %200
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* %6, align 8
  %213 = call i64 @TREE_CHAIN(i64 %212)
  store i64 %213, i64* %6, align 8
  br label %188

214:                                              ; preds = %188
  store i32 1, i32* %3, align 4
  br label %464

215:                                              ; preds = %107
  %216 = load i64, i64* %4, align 8
  %217 = load i64, i64* %5, align 8
  %218 = call %struct.tagged_tu_seen_cache* @alloc_tagged_tu_seen_cache(i64 %216, i64 %217)
  store %struct.tagged_tu_seen_cache* %218, %struct.tagged_tu_seen_cache** %13, align 8
  %219 = load i64, i64* %4, align 8
  %220 = call i64 @TYPE_FIELDS(i64 %219)
  %221 = call i32 @list_length(i64 %220)
  %222 = load i64, i64* %5, align 8
  %223 = call i64 @TYPE_FIELDS(i64 %222)
  %224 = call i32 @list_length(i64 %223)
  %225 = icmp ne i32 %221, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %215
  %227 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %228 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %227, i32 0, i32 2
  store i32 0, i32* %228, align 8
  store i32 0, i32* %3, align 4
  br label %464

229:                                              ; preds = %215
  %230 = load i64, i64* %4, align 8
  %231 = call i64 @TYPE_FIELDS(i64 %230)
  store i64 %231, i64* %6, align 8
  %232 = load i64, i64* %5, align 8
  %233 = call i64 @TYPE_FIELDS(i64 %232)
  store i64 %233, i64* %7, align 8
  br label %234

234:                                              ; preds = %284, %229
  %235 = load i64, i64* %6, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i64, i64* %7, align 8
  %239 = icmp ne i64 %238, 0
  br label %240

240:                                              ; preds = %237, %234
  %241 = phi i1 [ false, %234 ], [ %239, %237 ]
  br i1 %241, label %242, label %289

242:                                              ; preds = %240
  %243 = load i64, i64* %6, align 8
  %244 = call i32* @DECL_NAME(i64 %243)
  %245 = icmp eq i32* %244, null
  br i1 %245, label %252, label %246

246:                                              ; preds = %242
  %247 = load i64, i64* %6, align 8
  %248 = call i32* @DECL_NAME(i64 %247)
  %249 = load i64, i64* %7, align 8
  %250 = call i32* @DECL_NAME(i64 %249)
  %251 = icmp ne i32* %248, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246, %242
  br label %289

253:                                              ; preds = %246
  %254 = load i64, i64* %6, align 8
  %255 = call i32 @TREE_TYPE(i64 %254)
  %256 = load i64, i64* %7, align 8
  %257 = call i32 @TREE_TYPE(i64 %256)
  %258 = call i32 @comptypes_internal(i32 %255, i32 %257)
  store i32 %258, i32* %14, align 4
  %259 = load i32, i32* %14, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %253
  %262 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %263 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %262, i32 0, i32 2
  store i32 0, i32* %263, align 8
  store i32 0, i32* %3, align 4
  br label %464

264:                                              ; preds = %253
  %265 = load i32, i32* %14, align 4
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 1, i32* %8, align 4
  br label %268

268:                                              ; preds = %267, %264
  %269 = load i64, i64* %6, align 8
  %270 = call i32 @TREE_CODE(i64 %269)
  %271 = load i32, i32* @FIELD_DECL, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %268
  %274 = load i64, i64* %6, align 8
  %275 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %274)
  %276 = load i64, i64* %7, align 8
  %277 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %276)
  %278 = call i32 @simple_cst_equal(i32 %275, i32 %277)
  %279 = icmp ne i32 %278, 1
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %282 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %281, i32 0, i32 2
  store i32 0, i32* %282, align 8
  store i32 0, i32* %3, align 4
  br label %464

283:                                              ; preds = %273, %268
  br label %284

284:                                              ; preds = %283
  %285 = load i64, i64* %6, align 8
  %286 = call i64 @TREE_CHAIN(i64 %285)
  store i64 %286, i64* %6, align 8
  %287 = load i64, i64* %7, align 8
  %288 = call i64 @TREE_CHAIN(i64 %287)
  store i64 %288, i64* %7, align 8
  br label %234

289:                                              ; preds = %252, %240
  %290 = load i64, i64* %6, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %305, label %292

292:                                              ; preds = %289
  %293 = load i64, i64* %7, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %305, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* %8, align 4
  %297 = icmp ne i32 %296, 0
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i32 2, i32 1
  %300 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %301 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  %302 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %303 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %3, align 4
  br label %464

305:                                              ; preds = %292, %289
  %306 = load i64, i64* %4, align 8
  %307 = call i64 @TYPE_FIELDS(i64 %306)
  store i64 %307, i64* %6, align 8
  br label %308

308:                                              ; preds = %368, %305
  %309 = load i64, i64* %6, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %371

311:                                              ; preds = %308
  store i32 0, i32* %15, align 4
  %312 = load i64, i64* %6, align 8
  %313 = call i32* @DECL_NAME(i64 %312)
  %314 = icmp ne i32* %313, null
  br i1 %314, label %315, label %361

315:                                              ; preds = %311
  %316 = load i64, i64* %5, align 8
  %317 = call i64 @TYPE_FIELDS(i64 %316)
  store i64 %317, i64* %7, align 8
  br label %318

318:                                              ; preds = %357, %315
  %319 = load i64, i64* %7, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %360

321:                                              ; preds = %318
  %322 = load i64, i64* %6, align 8
  %323 = call i32* @DECL_NAME(i64 %322)
  %324 = load i64, i64* %7, align 8
  %325 = call i32* @DECL_NAME(i64 %324)
  %326 = icmp eq i32* %323, %325
  br i1 %326, label %327, label %356

327:                                              ; preds = %321
  %328 = load i64, i64* %6, align 8
  %329 = call i32 @TREE_TYPE(i64 %328)
  %330 = load i64, i64* %7, align 8
  %331 = call i32 @TREE_TYPE(i64 %330)
  %332 = call i32 @comptypes_internal(i32 %329, i32 %331)
  store i32 %332, i32* %16, align 4
  %333 = load i32, i32* %16, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %327
  %336 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %337 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %336, i32 0, i32 2
  store i32 0, i32* %337, align 8
  store i32 0, i32* %3, align 4
  br label %464

338:                                              ; preds = %327
  %339 = load i32, i32* %16, align 4
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  store i32 1, i32* %8, align 4
  br label %342

342:                                              ; preds = %341, %338
  %343 = load i64, i64* %6, align 8
  %344 = call i32 @TREE_CODE(i64 %343)
  %345 = load i32, i32* @FIELD_DECL, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %355

347:                                              ; preds = %342
  %348 = load i64, i64* %6, align 8
  %349 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %348)
  %350 = load i64, i64* %7, align 8
  %351 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %350)
  %352 = call i32 @simple_cst_equal(i32 %349, i32 %351)
  %353 = icmp ne i32 %352, 1
  br i1 %353, label %354, label %355

354:                                              ; preds = %347
  br label %360

355:                                              ; preds = %347, %342
  store i32 1, i32* %15, align 4
  br label %360

356:                                              ; preds = %321
  br label %357

357:                                              ; preds = %356
  %358 = load i64, i64* %7, align 8
  %359 = call i64 @TREE_CHAIN(i64 %358)
  store i64 %359, i64* %7, align 8
  br label %318

360:                                              ; preds = %355, %354, %318
  br label %361

361:                                              ; preds = %360, %311
  %362 = load i32, i32* %15, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %361
  %365 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %366 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %365, i32 0, i32 2
  store i32 0, i32* %366, align 8
  store i32 0, i32* %3, align 4
  br label %464

367:                                              ; preds = %361
  br label %368

368:                                              ; preds = %367
  %369 = load i64, i64* %6, align 8
  %370 = call i64 @TREE_CHAIN(i64 %369)
  store i64 %370, i64* %6, align 8
  br label %308

371:                                              ; preds = %308
  %372 = load i32, i32* %8, align 4
  %373 = icmp ne i32 %372, 0
  %374 = zext i1 %373 to i64
  %375 = select i1 %373, i32 2, i32 10
  %376 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %377 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %376, i32 0, i32 2
  store i32 %375, i32* %377, align 8
  %378 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  %379 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  store i32 %380, i32* %3, align 4
  br label %464

381:                                              ; preds = %107
  %382 = load i64, i64* %4, align 8
  %383 = load i64, i64* %5, align 8
  %384 = call %struct.tagged_tu_seen_cache* @alloc_tagged_tu_seen_cache(i64 %382, i64 %383)
  store %struct.tagged_tu_seen_cache* %384, %struct.tagged_tu_seen_cache** %17, align 8
  %385 = load i64, i64* %4, align 8
  %386 = call i64 @TYPE_FIELDS(i64 %385)
  store i64 %386, i64* %6, align 8
  %387 = load i64, i64* %5, align 8
  %388 = call i64 @TYPE_FIELDS(i64 %387)
  store i64 %388, i64* %7, align 8
  br label %389

389:                                              ; preds = %437, %381
  %390 = load i64, i64* %6, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load i64, i64* %7, align 8
  %394 = icmp ne i64 %393, 0
  br label %395

395:                                              ; preds = %392, %389
  %396 = phi i1 [ false, %389 ], [ %394, %392 ]
  br i1 %396, label %397, label %442

397:                                              ; preds = %395
  %398 = load i64, i64* %6, align 8
  %399 = call i32 @TREE_CODE(i64 %398)
  %400 = load i64, i64* %7, align 8
  %401 = call i32 @TREE_CODE(i64 %400)
  %402 = icmp ne i32 %399, %401
  br i1 %402, label %409, label %403

403:                                              ; preds = %397
  %404 = load i64, i64* %6, align 8
  %405 = call i32* @DECL_NAME(i64 %404)
  %406 = load i64, i64* %7, align 8
  %407 = call i32* @DECL_NAME(i64 %406)
  %408 = icmp ne i32* %405, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %403, %397
  br label %442

410:                                              ; preds = %403
  %411 = load i64, i64* %6, align 8
  %412 = call i32 @TREE_TYPE(i64 %411)
  %413 = load i64, i64* %7, align 8
  %414 = call i32 @TREE_TYPE(i64 %413)
  %415 = call i32 @comptypes_internal(i32 %412, i32 %414)
  store i32 %415, i32* %18, align 4
  %416 = load i32, i32* %18, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %410
  br label %442

419:                                              ; preds = %410
  %420 = load i32, i32* %18, align 4
  %421 = icmp eq i32 %420, 2
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  store i32 1, i32* %8, align 4
  br label %423

423:                                              ; preds = %422, %419
  %424 = load i64, i64* %6, align 8
  %425 = call i32 @TREE_CODE(i64 %424)
  %426 = load i32, i32* @FIELD_DECL, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %436

428:                                              ; preds = %423
  %429 = load i64, i64* %6, align 8
  %430 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %429)
  %431 = load i64, i64* %7, align 8
  %432 = call i32 @DECL_FIELD_BIT_OFFSET(i64 %431)
  %433 = call i32 @simple_cst_equal(i32 %430, i32 %432)
  %434 = icmp ne i32 %433, 1
  br i1 %434, label %435, label %436

435:                                              ; preds = %428
  br label %442

436:                                              ; preds = %428, %423
  br label %437

437:                                              ; preds = %436
  %438 = load i64, i64* %6, align 8
  %439 = call i64 @TREE_CHAIN(i64 %438)
  store i64 %439, i64* %6, align 8
  %440 = load i64, i64* %7, align 8
  %441 = call i64 @TREE_CHAIN(i64 %440)
  store i64 %441, i64* %7, align 8
  br label %389

442:                                              ; preds = %435, %418, %409, %395
  %443 = load i64, i64* %6, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %451

445:                                              ; preds = %442
  %446 = load i64, i64* %7, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %17, align 8
  %450 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %449, i32 0, i32 2
  store i32 0, i32* %450, align 8
  br label %458

451:                                              ; preds = %445, %442
  %452 = load i32, i32* %8, align 4
  %453 = icmp ne i32 %452, 0
  %454 = zext i1 %453 to i64
  %455 = select i1 %453, i32 2, i32 1
  %456 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %17, align 8
  %457 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %456, i32 0, i32 2
  store i32 %455, i32* %457, align 8
  br label %458

458:                                              ; preds = %451, %448
  %459 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %17, align 8
  %460 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  store i32 %461, i32* %3, align 4
  br label %464

462:                                              ; preds = %107
  %463 = call i32 (...) @gcc_unreachable()
  br label %464

464:                                              ; preds = %71, %80, %98, %121, %145, %162, %171, %182, %207, %214, %226, %261, %280, %295, %335, %364, %371, %458, %462
  %465 = load i32, i32* %3, align 4
  ret i32 %465
}

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_ORIGINAL_TYPE(i64) #1

declare dso_local i32* @TYPE_SIZE(i64) #1

declare dso_local %struct.tagged_tu_seen_cache* @alloc_tagged_tu_seen_cache(i64, i64) #1

declare dso_local i64 @TYPE_VALUES(i64) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i32 @simple_cst_equal(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local i64 @purpose_member(i32, i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i32* @DECL_NAME(i64) #1

declare dso_local i32 @comptypes_internal(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @DECL_FIELD_BIT_OFFSET(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
