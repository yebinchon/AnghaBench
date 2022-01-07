; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_builtin_candidates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_builtin_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z_candidate**, i32, i32, i64, i64*, i32)* @add_builtin_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_builtin_candidates(%struct.z_candidate** %0, i32 %1, i32 %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.z_candidate**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [3 x i64], align 16
  %18 = alloca [2 x i64], align 16
  %19 = alloca i64, align 8
  store %struct.z_candidate** %0, %struct.z_candidate*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %46, %6
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i64*, i64** %11, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i64*, i64** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @lvalue_type(i64 %35)
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %38
  store i64 %36, i64* %39, align 8
  br label %45

40:                                               ; preds = %23
  %41 = load i64, i64* @NULL_TREE, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %43
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %30
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %20

49:                                               ; preds = %20
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %72 [
    i32 133, label %51
    i32 131, label %51
    i32 134, label %51
    i32 132, label %51
    i32 136, label %51
    i32 129, label %52
    i32 128, label %61
    i32 130, label %61
    i32 145, label %70
    i32 143, label %70
    i32 144, label %70
    i32 142, label %71
    i32 141, label %71
    i32 135, label %71
    i32 137, label %71
    i32 138, label %71
    i32 139, label %71
    i32 140, label %71
  ]

51:                                               ; preds = %49, %49, %49, %49, %49
  store i32 1, i32* %13, align 4
  br label %73

52:                                               ; preds = %49
  %53 = load %struct.z_candidate**, %struct.z_candidate*** %7, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @boolean_type_node, align 8
  %56 = load i64, i64* @NULL_TREE, align 8
  %57 = load i64*, i64** %11, align 8
  %58 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @build_builtin_candidate(%struct.z_candidate** %53, i64 %54, i64 %55, i64 %56, i64* %57, i64* %58, i32 %59)
  br label %399

61:                                               ; preds = %49, %49
  %62 = load %struct.z_candidate**, %struct.z_candidate*** %7, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @boolean_type_node, align 8
  %65 = load i64, i64* @boolean_type_node, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @build_builtin_candidate(%struct.z_candidate** %62, i64 %63, i64 %64, i64 %65, i64* %66, i64* %67, i32 %68)
  br label %399

70:                                               ; preds = %49, %49, %49
  br label %399

71:                                               ; preds = %49, %49, %49, %49, %49, %49, %49
  store i32 1, i32* %15, align 4
  br label %72

72:                                               ; preds = %49, %71
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i64, i64* @NULL_TREE, align 8
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  store i64 %74, i64* %76, align 16
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %344, %73
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %347

80:                                               ; preds = %77
  %81 = load i64*, i64** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %343

88:                                               ; preds = %80
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @IS_AGGR_TYPE(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %264

95:                                               ; preds = %88
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 136
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @NOP_EXPR, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %399

106:                                              ; preds = %101, %98, %95
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @lookup_conversions(i64 %110)
  store i64 %111, i64* %19, align 8
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 142
  br i1 %113, label %114, label %152

114:                                              ; preds = %106
  %115 = load i64*, i64** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @real_lvalue_p(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %114
  %123 = load i64, i64* @NULL_TREE, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @build_reference_type(i64 %127)
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @tree_cons(i64 %123, i64 %128, i64 %132)
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %135
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %122, %114
  %138 = load i64, i64* @NULL_TREE, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @TYPE_MAIN_VARIANT(i64 %142)
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @tree_cons(i64 %138, i64 %143, i64 %147)
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %150
  store i64 %148, i64* %151, align 8
  br label %157

152:                                              ; preds = %106
  %153 = load i64, i64* %19, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  br label %399

156:                                              ; preds = %152
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %260, %157
  %159 = load i64, i64* %19, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %263

161:                                              ; preds = %158
  %162 = load i64, i64* %19, align 8
  %163 = call i64 @TREE_VALUE(i64 %162)
  %164 = call i64 @OVL_CURRENT(i64 %163)
  %165 = call i64 @TREE_TYPE(i64 %164)
  %166 = call i64 @TREE_TYPE(i64 %165)
  store i64 %166, i64* %16, align 8
  %167 = load i32, i32* %14, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %161
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i64, i64* %16, align 8
  %174 = call i64 @TREE_CODE(i64 %173)
  %175 = load i64, i64* @REFERENCE_TYPE, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load i64, i64* %16, align 8
  %179 = call i64 @TREE_TYPE(i64 %178)
  %180 = call i64 @CP_TYPE_CONST_P(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177, %172
  br label %260

183:                                              ; preds = %177, %169, %161
  %184 = load i32, i32* %8, align 4
  %185 = icmp eq i32 %184, 142
  br i1 %185, label %186, label %202

186:                                              ; preds = %183
  %187 = load i64, i64* %16, align 8
  %188 = call i64 @TREE_CODE(i64 %187)
  %189 = load i64, i64* @REFERENCE_TYPE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = load i64, i64* @NULL_TREE, align 8
  %193 = load i64, i64* %16, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @tree_cons(i64 %192, i64 %193, i64 %197)
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %200
  store i64 %198, i64* %201, align 8
  br label %202

202:                                              ; preds = %191, %186, %183
  %203 = load i64, i64* %16, align 8
  %204 = call i64 @non_reference(i64 %203)
  store i64 %204, i64* %16, align 8
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %240, label %210

210:                                              ; preds = %207, %202
  %211 = load i64, i64* %16, align 8
  %212 = call i64 @type_decays_to(i64 %211)
  %213 = call i64 @TYPE_MAIN_VARIANT(i64 %212)
  store i64 %213, i64* %16, align 8
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %210
  %217 = load i64, i64* %16, align 8
  %218 = call i64 @TREE_CODE(i64 %217)
  %219 = load i64, i64* @ENUMERAL_TYPE, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %216
  %222 = load i64, i64* @NULL_TREE, align 8
  %223 = load i64, i64* %16, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @tree_cons(i64 %222, i64 %223, i64 %227)
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %230
  store i64 %228, i64* %231, align 8
  br label %232

232:                                              ; preds = %221, %216, %210
  %233 = load i64, i64* %16, align 8
  %234 = call i64 @INTEGRAL_TYPE_P(i64 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i64, i64* %16, align 8
  %238 = call i64 @type_promotes_to(i64 %237)
  store i64 %238, i64* %16, align 8
  br label %239

239:                                              ; preds = %236, %232
  br label %240

240:                                              ; preds = %239, %207
  %241 = load i64, i64* %16, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @value_member(i64 %241, i64 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %259, label %248

248:                                              ; preds = %240
  %249 = load i64, i64* @NULL_TREE, align 8
  %250 = load i64, i64* %16, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @tree_cons(i64 %249, i64 %250, i64 %254)
  %256 = load i32, i32* %14, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %257
  store i64 %255, i64* %258, align 8
  br label %259

259:                                              ; preds = %248, %240
  br label %260

260:                                              ; preds = %259, %182
  %261 = load i64, i64* %19, align 8
  %262 = call i64 @TREE_CHAIN(i64 %261)
  store i64 %262, i64* %19, align 8
  br label %158

263:                                              ; preds = %158
  br label %342

264:                                              ; preds = %88
  %265 = load i32, i32* %8, align 4
  %266 = icmp eq i32 %265, 142
  br i1 %266, label %267, label %290

267:                                              ; preds = %264
  %268 = load i64*, i64** %11, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @real_lvalue_p(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %267
  %276 = load i64, i64* @NULL_TREE, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @build_reference_type(i64 %280)
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = call i64 @tree_cons(i64 %276, i64 %281, i64 %285)
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %288
  store i64 %286, i64* %289, align 8
  br label %290

290:                                              ; preds = %275, %267, %264
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = call i64 @non_reference(i64 %294)
  store i64 %295, i64* %16, align 8
  %296 = load i32, i32* %14, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %290
  %299 = load i32, i32* %13, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %331, label %301

301:                                              ; preds = %298, %290
  %302 = load i64, i64* %16, align 8
  %303 = call i64 @type_decays_to(i64 %302)
  %304 = call i64 @TYPE_MAIN_VARIANT(i64 %303)
  store i64 %304, i64* %16, align 8
  %305 = load i32, i32* %15, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %323

307:                                              ; preds = %301
  %308 = load i64, i64* %16, align 8
  %309 = call i64 @TREE_CODE(i64 %308)
  %310 = load i64, i64* @ENUMERAL_TYPE, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %323

312:                                              ; preds = %307
  %313 = load i64, i64* @NULL_TREE, align 8
  %314 = load i64, i64* %16, align 8
  %315 = load i32, i32* %14, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @tree_cons(i64 %313, i64 %314, i64 %318)
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %321
  store i64 %319, i64* %322, align 8
  br label %323

323:                                              ; preds = %312, %307, %301
  %324 = load i64, i64* %16, align 8
  %325 = call i64 @INTEGRAL_TYPE_P(i64 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %323
  %328 = load i64, i64* %16, align 8
  %329 = call i64 @type_promotes_to(i64 %328)
  store i64 %329, i64* %16, align 8
  br label %330

330:                                              ; preds = %327, %323
  br label %331

331:                                              ; preds = %330, %298
  %332 = load i64, i64* @NULL_TREE, align 8
  %333 = load i64, i64* %16, align 8
  %334 = load i32, i32* %14, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = call i64 @tree_cons(i64 %332, i64 %333, i64 %337)
  %339 = load i32, i32* %14, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %340
  store i64 %338, i64* %341, align 8
  br label %342

342:                                              ; preds = %331, %263
  br label %343

343:                                              ; preds = %342, %87
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %14, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %14, align 4
  br label %77

347:                                              ; preds = %77
  br label %348

348:                                              ; preds = %394, %347
  %349 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %350 = load i64, i64* %349, align 16
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %399

352:                                              ; preds = %348
  %353 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %380

356:                                              ; preds = %352
  %357 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %16, align 8
  br label %359

359:                                              ; preds = %376, %356
  %360 = load i64, i64* %16, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %379

362:                                              ; preds = %359
  %363 = load %struct.z_candidate**, %struct.z_candidate*** %7, align 8
  %364 = load i32, i32* %8, align 4
  %365 = load i32, i32* %9, align 4
  %366 = load i64, i64* %10, align 8
  %367 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %368 = load i64, i64* %367, align 16
  %369 = call i64 @TREE_VALUE(i64 %368)
  %370 = load i64, i64* %16, align 8
  %371 = call i64 @TREE_VALUE(i64 %370)
  %372 = load i64*, i64** %11, align 8
  %373 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %374 = load i32, i32* %12, align 4
  %375 = call i32 @add_builtin_candidate(%struct.z_candidate** %363, i32 %364, i32 %365, i64 %366, i64 %369, i64 %371, i64* %372, i64* %373, i32 %374)
  br label %376

376:                                              ; preds = %362
  %377 = load i64, i64* %16, align 8
  %378 = call i64 @TREE_CHAIN(i64 %377)
  store i64 %378, i64* %16, align 8
  br label %359

379:                                              ; preds = %359
  br label %393

380:                                              ; preds = %352
  %381 = load %struct.z_candidate**, %struct.z_candidate*** %7, align 8
  %382 = load i32, i32* %8, align 4
  %383 = load i32, i32* %9, align 4
  %384 = load i64, i64* %10, align 8
  %385 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %386 = load i64, i64* %385, align 16
  %387 = call i64 @TREE_VALUE(i64 %386)
  %388 = load i64, i64* @NULL_TREE, align 8
  %389 = load i64*, i64** %11, align 8
  %390 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %391 = load i32, i32* %12, align 4
  %392 = call i32 @add_builtin_candidate(%struct.z_candidate** %381, i32 %382, i32 %383, i64 %384, i64 %387, i64 %388, i64* %389, i64* %390, i32 %391)
  br label %393

393:                                              ; preds = %380, %379
  br label %394

394:                                              ; preds = %393
  %395 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %396 = load i64, i64* %395, align 16
  %397 = call i64 @TREE_CHAIN(i64 %396)
  %398 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  store i64 %397, i64* %398, align 16
  br label %348

399:                                              ; preds = %52, %61, %70, %105, %155, %348
  ret void
}

declare dso_local i64 @lvalue_type(i64) #1

declare dso_local i32 @build_builtin_candidate(%struct.z_candidate**, i64, i64, i64, i64*, i64*, i32) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @lookup_conversions(i64) #1

declare dso_local i64 @real_lvalue_p(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build_reference_type(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @CP_TYPE_CONST_P(i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i64 @type_decays_to(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @type_promotes_to(i64) #1

declare dso_local i32 @value_member(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @add_builtin_candidate(%struct.z_candidate**, i32, i32, i64, i64, i64, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
