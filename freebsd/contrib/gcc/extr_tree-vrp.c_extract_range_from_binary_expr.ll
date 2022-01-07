; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_binary_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_binary_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i32* }

@VR_UNDEFINED = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@FLOOR_DIV_EXPR = common dso_local global i32 0, align 4
@CEIL_DIV_EXPR = common dso_local global i32 0, align 4
@EXACT_DIV_EXPR = common dso_local global i32 0, align 4
@ROUND_DIV_EXPR = common dso_local global i32 0, align 4
@MIN_EXPR = common dso_local global i32 0, align 4
@MAX_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@VR_VARYING = common dso_local global i64 0, align 8
@VR_RANGE = common dso_local global i64 0, align 8
@VR_ANTI_RANGE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64)* @extract_range_from_binary_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_range_from_binary_expr(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca [4 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %21 = load i64, i64* @VR_UNDEFINED, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %23 = load i64, i64* @NULL_TREE, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %25 = load i64, i64* @NULL_TREE, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %31 = load i64, i64* @VR_UNDEFINED, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %33 = load i64, i64* @NULL_TREE, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %35 = load i64, i64* @NULL_TREE, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PLUS_EXPR, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %102

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MINUS_EXPR, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %102

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MULT_EXPR, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @FLOOR_DIV_EXPR, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %102

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @ROUND_DIV_EXPR, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MIN_EXPR, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MAX_EXPR, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @BIT_AND_EXPR, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %100)
  br label %851

102:                                              ; preds = %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %2
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @TREE_OPERAND(i64 %103, i32 0)
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i64 @TREE_CODE(i64 %105)
  %107 = load i64, i64* @SSA_NAME, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load i64, i64* %7, align 8
  %111 = call %struct.TYPE_15__* @get_value_range(i64 %110)
  %112 = bitcast %struct.TYPE_15__* %12 to i8*
  %113 = bitcast %struct.TYPE_15__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 56, i1 false)
  br label %124

114:                                              ; preds = %102
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @is_gimple_min_invariant(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @set_value_range_to_value(%struct.TYPE_15__* %12, i64 %119, i32* null)
  br label %123

121:                                              ; preds = %114
  %122 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %12)
  br label %123

123:                                              ; preds = %121, %118
  br label %124

124:                                              ; preds = %123, %109
  %125 = load i64, i64* %4, align 8
  %126 = call i64 @TREE_OPERAND(i64 %125, i32 1)
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i64 @TREE_CODE(i64 %127)
  %129 = load i64, i64* @SSA_NAME, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load i64, i64* %8, align 8
  %133 = call %struct.TYPE_15__* @get_value_range(i64 %132)
  %134 = bitcast %struct.TYPE_15__* %13 to i8*
  %135 = bitcast %struct.TYPE_15__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 56, i1 false)
  br label %146

136:                                              ; preds = %124
  %137 = load i64, i64* %8, align 8
  %138 = call i64 @is_gimple_min_invariant(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @set_value_range_to_value(%struct.TYPE_15__* %13, i64 %141, i32* null)
  br label %145

143:                                              ; preds = %136
  %144 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %13)
  br label %145

145:                                              ; preds = %143, %140
  br label %146

146:                                              ; preds = %145, %131
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @VR_UNDEFINED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @VR_UNDEFINED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %146
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = call i32 @set_value_range_to_undefined(%struct.TYPE_15__* %157)
  br label %851

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @BIT_AND_EXPR, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %199

166:                                              ; preds = %159
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %199

170:                                              ; preds = %166
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %199

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @VR_VARYING, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %196, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @VR_VARYING, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %196, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %186, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = call i64 @symbolic_range_p(%struct.TYPE_15__* %12)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = call i64 @symbolic_range_p(%struct.TYPE_15__* %13)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193, %190, %184, %179, %174
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %198 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %197)
  br label %851

199:                                              ; preds = %193, %170, %166, %159
  %200 = load i64, i64* %4, align 8
  %201 = call i32 @TREE_TYPE(i64 %200)
  %202 = call i64 @POINTER_TYPE_P(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %199
  %205 = load i64, i64* %7, align 8
  %206 = call i32 @TREE_TYPE(i64 %205)
  %207 = call i64 @POINTER_TYPE_P(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* %8, align 8
  %211 = call i32 @TREE_TYPE(i64 %210)
  %212 = call i64 @POINTER_TYPE_P(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %249

214:                                              ; preds = %209, %204, %199
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @PLUS_EXPR, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %245

218:                                              ; preds = %214
  %219 = call i64 @range_is_nonnull(%struct.TYPE_15__* %12)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = call i64 @range_is_nonnull(%struct.TYPE_15__* %13)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %221, %218
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %226 = load i64, i64* %4, align 8
  %227 = call i32 @TREE_TYPE(i64 %226)
  %228 = call i32 @set_value_range_to_nonnull(%struct.TYPE_15__* %225, i32 %227)
  br label %244

229:                                              ; preds = %221
  %230 = call i64 @range_is_null(%struct.TYPE_15__* %12)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = call i64 @range_is_null(%struct.TYPE_15__* %13)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %237 = load i64, i64* %4, align 8
  %238 = call i32 @TREE_TYPE(i64 %237)
  %239 = call i32 @set_value_range_to_null(%struct.TYPE_15__* %236, i32 %238)
  br label %243

240:                                              ; preds = %232, %229
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %242 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %241)
  br label %243

243:                                              ; preds = %240, %235
  br label %244

244:                                              ; preds = %243, %224
  br label %248

245:                                              ; preds = %214
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %247 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %246)
  br label %248

248:                                              ; preds = %245, %244
  br label %851

249:                                              ; preds = %209
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %265, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* %5, align 4
  %255 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %265, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %5, align 4
  %259 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %265, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %396

265:                                              ; preds = %261, %257, %253, %249
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %305

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @VR_RANGE, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %284

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = call i64 @integer_zerop(i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = call i64 @integer_zerop(i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %299, label %284

284:                                              ; preds = %279, %274, %269
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @VR_RANGE, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %305

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @integer_zerop(i64 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @integer_zerop(i64 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %294, %279
  %300 = load i64, i64* @VR_RANGE, align 8
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %6, align 4
  %302 = load i64, i64* %4, align 8
  %303 = call i32 @TREE_TYPE(i64 %302)
  %304 = call i64 @build_int_cst(i32 %303, i32 0)
  store i64 %304, i64* %10, align 8
  store i64 %304, i64* %9, align 8
  br label %395

305:                                              ; preds = %294, %289, %284, %265
  %306 = load i32, i32* %5, align 4
  %307 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %345

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @VR_RANGE, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = call i64 @integer_onep(i64 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = call i64 @integer_onep(i64 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %339, label %324

324:                                              ; preds = %319, %314, %309
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @VR_RANGE, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %345

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = call i64 @integer_onep(i64 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %336 = load i64, i64* %335, align 8
  %337 = call i64 @integer_onep(i64 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %334, %319
  %340 = load i64, i64* @VR_RANGE, align 8
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %6, align 4
  %342 = load i64, i64* %4, align 8
  %343 = call i32 @TREE_TYPE(i64 %342)
  %344 = call i64 @build_int_cst(i32 %343, i32 1)
  store i64 %344, i64* %10, align 8
  store i64 %344, i64* %9, align 8
  br label %394

345:                                              ; preds = %334, %329, %324, %305
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @VR_VARYING, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %390

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @VR_VARYING, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %390

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = icmp eq i64 %357, %359
  br i1 %360, label %361, label %390

361:                                              ; preds = %355
  %362 = call i64 @symbolic_range_p(%struct.TYPE_15__* %12)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %390, label %364

364:                                              ; preds = %361
  %365 = call i32 @overflow_infinity_range_p(%struct.TYPE_15__* %12)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %390, label %367

367:                                              ; preds = %364
  %368 = call i64 @symbolic_range_p(%struct.TYPE_15__* %13)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %390, label %370

370:                                              ; preds = %367
  %371 = call i32 @overflow_infinity_range_p(%struct.TYPE_15__* %13)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %390, label %373

373:                                              ; preds = %370
  %374 = load i32, i32* %5, align 4
  %375 = load i64, i64* %4, align 8
  %376 = call i32 @TREE_TYPE(i64 %375)
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %380 = load i64, i64* %379, align 8
  %381 = call i64 @fold_binary(i32 %374, i32 %376, i64 %378, i64 %380)
  store i64 %381, i64* %9, align 8
  %382 = load i32, i32* %5, align 4
  %383 = load i64, i64* %4, align 8
  %384 = call i32 @TREE_TYPE(i64 %383)
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %388 = load i64, i64* %387, align 8
  %389 = call i64 @fold_binary(i32 %382, i32 %384, i64 %386, i64 %388)
  store i64 %389, i64* %10, align 8
  br label %393

390:                                              ; preds = %370, %367, %364, %361, %355, %350, %345
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %392 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %391)
  br label %851

393:                                              ; preds = %373
  br label %394

394:                                              ; preds = %393, %339
  br label %395

395:                                              ; preds = %394, %299
  br label %779

396:                                              ; preds = %261
  %397 = load i32, i32* %5, align 4
  %398 = load i32, i32* @PLUS_EXPR, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %408, label %400

400:                                              ; preds = %396
  %401 = load i32, i32* %5, align 4
  %402 = load i32, i32* @MIN_EXPR, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = load i32, i32* %5, align 4
  %406 = load i32, i32* @MAX_EXPR, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %433

408:                                              ; preds = %404, %400, %396
  %409 = load i32, i32* %5, align 4
  %410 = load i32, i32* @PLUS_EXPR, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %412, label %420

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @VR_ANTI_RANGE, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %412
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %419 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %418)
  br label %851

420:                                              ; preds = %412, %408
  %421 = load i32, i32* %5, align 4
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %423 = load i64, i64* %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %425 = load i64, i64* %424, align 8
  %426 = call i64 @vrp_int_const_binop(i32 %421, i64 %423, i64 %425)
  store i64 %426, i64* %9, align 8
  %427 = load i32, i32* %5, align 4
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %431 = load i64, i64* %430, align 8
  %432 = call i64 @vrp_int_const_binop(i32 %427, i64 %429, i64 %431)
  store i64 %432, i64* %10, align 8
  br label %778

433:                                              ; preds = %404
  %434 = load i32, i32* %5, align 4
  %435 = load i32, i32* @MULT_EXPR, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %457, label %437

437:                                              ; preds = %433
  %438 = load i32, i32* %5, align 4
  %439 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %457, label %441

441:                                              ; preds = %437
  %442 = load i32, i32* %5, align 4
  %443 = load i32, i32* @FLOOR_DIV_EXPR, align 4
  %444 = icmp eq i32 %442, %443
  br i1 %444, label %457, label %445

445:                                              ; preds = %441
  %446 = load i32, i32* %5, align 4
  %447 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %448 = icmp eq i32 %446, %447
  br i1 %448, label %457, label %449

449:                                              ; preds = %445
  %450 = load i32, i32* %5, align 4
  %451 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %457, label %453

453:                                              ; preds = %449
  %454 = load i32, i32* %5, align 4
  %455 = load i32, i32* @ROUND_DIV_EXPR, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %671

457:                                              ; preds = %453, %449, %445, %441, %437, %433
  %458 = load i32, i32* %5, align 4
  %459 = load i32, i32* @MULT_EXPR, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %474

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @VR_ANTI_RANGE, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %474

466:                                              ; preds = %461
  %467 = load i64, i64* %7, align 8
  %468 = call i32 @TREE_TYPE(i64 %467)
  %469 = call i32 @TYPE_OVERFLOW_UNDEFINED(i32 %468)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %466
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %473 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %472)
  br label %851

474:                                              ; preds = %466, %461, %457
  %475 = load i32, i32* %5, align 4
  %476 = load i32, i32* @MULT_EXPR, align 4
  %477 = icmp ne i32 %475, %476
  br i1 %477, label %478, label %489

478:                                              ; preds = %474
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @VR_ANTI_RANGE, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %486, label %483

483:                                              ; preds = %478
  %484 = call i64 @range_includes_zero_p(%struct.TYPE_15__* %13)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %483, %478
  %487 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %488 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %487)
  br label %851

489:                                              ; preds = %483, %474
  store i32 0, i32* %16, align 4
  %490 = load i32, i32* %5, align 4
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %494 = load i64, i64* %493, align 8
  %495 = call i64 @vrp_int_const_binop(i32 %490, i64 %492, i64 %494)
  %496 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  store i64 %495, i64* %496, align 16
  %497 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %498 = load i64, i64* %497, align 16
  %499 = load i64, i64* @NULL_TREE, align 8
  %500 = icmp eq i64 %498, %499
  br i1 %500, label %501, label %502

501:                                              ; preds = %489
  store i32 1, i32* %16, align 4
  br label %502

502:                                              ; preds = %501, %489
  %503 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %504 = load i64, i64* %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %506 = load i64, i64* %505, align 8
  %507 = icmp eq i64 %504, %506
  br i1 %507, label %508, label %511

508:                                              ; preds = %502
  %509 = load i64, i64* @NULL_TREE, align 8
  %510 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  store i64 %509, i64* %510, align 8
  br label %525

511:                                              ; preds = %502
  %512 = load i32, i32* %5, align 4
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %516 = load i64, i64* %515, align 8
  %517 = call i64 @vrp_int_const_binop(i32 %512, i64 %514, i64 %516)
  %518 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  store i64 %517, i64* %518, align 8
  %519 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* @NULL_TREE, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %511
  store i32 1, i32* %16, align 4
  br label %524

524:                                              ; preds = %523, %511
  br label %525

525:                                              ; preds = %524, %508
  %526 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %527 = load i64, i64* %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %529 = load i64, i64* %528, align 8
  %530 = icmp eq i64 %527, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %525
  %532 = load i64, i64* @NULL_TREE, align 8
  %533 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 2
  store i64 %532, i64* %533, align 16
  br label %548

534:                                              ; preds = %525
  %535 = load i32, i32* %5, align 4
  %536 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %537 = load i64, i64* %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %539 = load i64, i64* %538, align 8
  %540 = call i64 @vrp_int_const_binop(i32 %535, i64 %537, i64 %539)
  %541 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 2
  store i64 %540, i64* %541, align 16
  %542 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 2
  %543 = load i64, i64* %542, align 16
  %544 = load i64, i64* @NULL_TREE, align 8
  %545 = icmp eq i64 %543, %544
  br i1 %545, label %546, label %547

546:                                              ; preds = %534
  store i32 1, i32* %16, align 4
  br label %547

547:                                              ; preds = %546, %534
  br label %548

548:                                              ; preds = %547, %531
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %550 = load i64, i64* %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %552 = load i64, i64* %551, align 8
  %553 = icmp eq i64 %550, %552
  br i1 %553, label %560, label %554

554:                                              ; preds = %548
  %555 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %556 = load i64, i64* %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %558 = load i64, i64* %557, align 8
  %559 = icmp eq i64 %556, %558
  br i1 %559, label %560, label %563

560:                                              ; preds = %554, %548
  %561 = load i64, i64* @NULL_TREE, align 8
  %562 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 3
  store i64 %561, i64* %562, align 8
  br label %577

563:                                              ; preds = %554
  %564 = load i32, i32* %5, align 4
  %565 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %566 = load i64, i64* %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %568 = load i64, i64* %567, align 8
  %569 = call i64 @vrp_int_const_binop(i32 %564, i64 %566, i64 %568)
  %570 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 3
  store i64 %569, i64* %570, align 8
  %571 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 3
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* @NULL_TREE, align 8
  %574 = icmp eq i64 %572, %573
  br i1 %574, label %575, label %576

575:                                              ; preds = %563
  store i32 1, i32* %16, align 4
  br label %576

576:                                              ; preds = %575, %563
  br label %577

577:                                              ; preds = %576, %560
  %578 = load i32, i32* %16, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %583

580:                                              ; preds = %577
  %581 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %582 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %581)
  br label %851

583:                                              ; preds = %577
  %584 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %585 = load i64, i64* %584, align 16
  store i64 %585, i64* %9, align 8
  %586 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %587 = load i64, i64* %586, align 16
  store i64 %587, i64* %10, align 8
  store i64 1, i64* %15, align 8
  br label %588

588:                                              ; preds = %667, %583
  %589 = load i64, i64* %15, align 8
  %590 = icmp ult i64 %589, 4
  br i1 %590, label %591, label %670

591:                                              ; preds = %588
  %592 = load i64, i64* %9, align 8
  %593 = call i64 @is_gimple_min_invariant(i64 %592)
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %615

595:                                              ; preds = %591
  %596 = load i64, i64* %9, align 8
  %597 = call i64 @TREE_OVERFLOW(i64 %596)
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %603

599:                                              ; preds = %595
  %600 = load i64, i64* %9, align 8
  %601 = call i64 @is_overflow_infinity(i64 %600)
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %615

603:                                              ; preds = %599, %595
  %604 = load i64, i64* %10, align 8
  %605 = call i64 @is_gimple_min_invariant(i64 %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %615

607:                                              ; preds = %603
  %608 = load i64, i64* %10, align 8
  %609 = call i64 @TREE_OVERFLOW(i64 %608)
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %611, label %616

611:                                              ; preds = %607
  %612 = load i64, i64* %10, align 8
  %613 = call i64 @is_overflow_infinity(i64 %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %611, %603, %599, %591
  br label %670

616:                                              ; preds = %611, %607
  %617 = load i64, i64* %15, align 8
  %618 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %617
  %619 = load i64, i64* %618, align 8
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %666

621:                                              ; preds = %616
  %622 = load i64, i64* %15, align 8
  %623 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %622
  %624 = load i64, i64* %623, align 8
  %625 = call i64 @is_gimple_min_invariant(i64 %624)
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %639

627:                                              ; preds = %621
  %628 = load i64, i64* %15, align 8
  %629 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %628
  %630 = load i64, i64* %629, align 8
  %631 = call i64 @TREE_OVERFLOW(i64 %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %643

633:                                              ; preds = %627
  %634 = load i64, i64* %15, align 8
  %635 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %634
  %636 = load i64, i64* %635, align 8
  %637 = call i64 @is_overflow_infinity(i64 %636)
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %643, label %639

639:                                              ; preds = %633, %621
  %640 = load i64, i64* %15, align 8
  %641 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %640
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %10, align 8
  store i64 %642, i64* %9, align 8
  br label %670

643:                                              ; preds = %633, %627
  %644 = load i64, i64* %15, align 8
  %645 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %644
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* %9, align 8
  %648 = call i32 @compare_values(i64 %646, i64 %647)
  %649 = icmp eq i32 %648, -1
  br i1 %649, label %650, label %654

650:                                              ; preds = %643
  %651 = load i64, i64* %15, align 8
  %652 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %651
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %9, align 8
  br label %654

654:                                              ; preds = %650, %643
  %655 = load i64, i64* %15, align 8
  %656 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %655
  %657 = load i64, i64* %656, align 8
  %658 = load i64, i64* %10, align 8
  %659 = call i32 @compare_values(i64 %657, i64 %658)
  %660 = icmp eq i32 %659, 1
  br i1 %660, label %661, label %665

661:                                              ; preds = %654
  %662 = load i64, i64* %15, align 8
  %663 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 %662
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %10, align 8
  br label %665

665:                                              ; preds = %661, %654
  br label %666

666:                                              ; preds = %665, %616
  br label %667

667:                                              ; preds = %666
  %668 = load i64, i64* %15, align 8
  %669 = add i64 %668, 1
  store i64 %669, i64* %15, align 8
  br label %588

670:                                              ; preds = %639, %615, %588
  br label %777

671:                                              ; preds = %453
  %672 = load i32, i32* %5, align 4
  %673 = load i32, i32* @MINUS_EXPR, align 4
  %674 = icmp eq i32 %672, %673
  br i1 %674, label %675, label %696

675:                                              ; preds = %671
  %676 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %677 = load i64, i64* %676, align 8
  %678 = load i64, i64* @VR_ANTI_RANGE, align 8
  %679 = icmp eq i64 %677, %678
  br i1 %679, label %680, label %683

680:                                              ; preds = %675
  %681 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %682 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %681)
  br label %851

683:                                              ; preds = %675
  %684 = load i32, i32* %5, align 4
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %686 = load i64, i64* %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %688 = load i64, i64* %687, align 8
  %689 = call i64 @vrp_int_const_binop(i32 %684, i64 %686, i64 %688)
  store i64 %689, i64* %9, align 8
  %690 = load i32, i32* %5, align 4
  %691 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %692 = load i64, i64* %691, align 8
  %693 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %694 = load i64, i64* %693, align 8
  %695 = call i64 @vrp_int_const_binop(i32 %690, i64 %692, i64 %694)
  store i64 %695, i64* %10, align 8
  br label %776

696:                                              ; preds = %671
  %697 = load i32, i32* %5, align 4
  %698 = load i32, i32* @BIT_AND_EXPR, align 4
  %699 = icmp eq i32 %697, %698
  br i1 %699, label %700, label %773

700:                                              ; preds = %696
  %701 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %702 = load i64, i64* %701, align 8
  %703 = load i64, i64* @VR_RANGE, align 8
  %704 = icmp eq i64 %702, %703
  br i1 %704, label %705, label %733

705:                                              ; preds = %700
  %706 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %707 = load i64, i64* %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %709 = load i64, i64* %708, align 8
  %710 = icmp eq i64 %707, %709
  br i1 %710, label %711, label %733

711:                                              ; preds = %705
  %712 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %713 = load i64, i64* %712, align 8
  %714 = call i64 @TREE_CODE(i64 %713)
  %715 = load i64, i64* @INTEGER_CST, align 8
  %716 = icmp eq i64 %714, %715
  br i1 %716, label %717, label %733

717:                                              ; preds = %711
  %718 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %719 = load i64, i64* %718, align 8
  %720 = call i64 @TREE_OVERFLOW(i64 %719)
  %721 = icmp ne i64 %720, 0
  br i1 %721, label %733, label %722

722:                                              ; preds = %717
  %723 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %724 = load i64, i64* %723, align 8
  %725 = call i64 @tree_int_cst_sgn(i64 %724)
  %726 = icmp sge i64 %725, 0
  br i1 %726, label %727, label %733

727:                                              ; preds = %722
  %728 = load i64, i64* %4, align 8
  %729 = call i32 @TREE_TYPE(i64 %728)
  %730 = call i64 @build_int_cst(i32 %729, i32 0)
  store i64 %730, i64* %9, align 8
  %731 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 5
  %732 = load i64, i64* %731, align 8
  store i64 %732, i64* %10, align 8
  br label %772

733:                                              ; preds = %722, %717, %711, %705, %700
  %734 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %735 = load i64, i64* %734, align 8
  %736 = load i64, i64* @VR_RANGE, align 8
  %737 = icmp eq i64 %735, %736
  br i1 %737, label %738, label %768

738:                                              ; preds = %733
  %739 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %740 = load i64, i64* %739, align 8
  %741 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %742 = load i64, i64* %741, align 8
  %743 = icmp eq i64 %740, %742
  br i1 %743, label %744, label %768

744:                                              ; preds = %738
  %745 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %746 = load i64, i64* %745, align 8
  %747 = call i64 @TREE_CODE(i64 %746)
  %748 = load i64, i64* @INTEGER_CST, align 8
  %749 = icmp eq i64 %747, %748
  br i1 %749, label %750, label %768

750:                                              ; preds = %744
  %751 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %752 = load i64, i64* %751, align 8
  %753 = call i64 @TREE_OVERFLOW(i64 %752)
  %754 = icmp ne i64 %753, 0
  br i1 %754, label %768, label %755

755:                                              ; preds = %750
  %756 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %757 = load i64, i64* %756, align 8
  %758 = call i64 @tree_int_cst_sgn(i64 %757)
  %759 = icmp sge i64 %758, 0
  br i1 %759, label %760, label %768

760:                                              ; preds = %755
  %761 = load i64, i64* @VR_RANGE, align 8
  %762 = trunc i64 %761 to i32
  store i32 %762, i32* %6, align 4
  %763 = load i64, i64* %4, align 8
  %764 = call i32 @TREE_TYPE(i64 %763)
  %765 = call i64 @build_int_cst(i32 %764, i32 0)
  store i64 %765, i64* %9, align 8
  %766 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %10, align 8
  br label %771

768:                                              ; preds = %755, %750, %744, %738, %733
  %769 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %770 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %769)
  br label %851

771:                                              ; preds = %760
  br label %772

772:                                              ; preds = %771, %727
  br label %775

773:                                              ; preds = %696
  %774 = call i32 (...) @gcc_unreachable()
  br label %775

775:                                              ; preds = %773, %772
  br label %776

776:                                              ; preds = %775, %683
  br label %777

777:                                              ; preds = %776, %670
  br label %778

778:                                              ; preds = %777, %420
  br label %779

779:                                              ; preds = %778, %395
  %780 = load i64, i64* %9, align 8
  %781 = load i64, i64* @NULL_TREE, align 8
  %782 = icmp eq i64 %780, %781
  br i1 %782, label %811, label %783

783:                                              ; preds = %779
  %784 = load i64, i64* %9, align 8
  %785 = call i64 @is_gimple_min_invariant(i64 %784)
  %786 = icmp ne i64 %785, 0
  br i1 %786, label %787, label %811

787:                                              ; preds = %783
  %788 = load i64, i64* %9, align 8
  %789 = call i64 @TREE_OVERFLOW(i64 %788)
  %790 = icmp ne i64 %789, 0
  br i1 %790, label %791, label %795

791:                                              ; preds = %787
  %792 = load i64, i64* %9, align 8
  %793 = call i64 @is_overflow_infinity(i64 %792)
  %794 = icmp ne i64 %793, 0
  br i1 %794, label %795, label %811

795:                                              ; preds = %791, %787
  %796 = load i64, i64* %10, align 8
  %797 = load i64, i64* @NULL_TREE, align 8
  %798 = icmp eq i64 %796, %797
  br i1 %798, label %811, label %799

799:                                              ; preds = %795
  %800 = load i64, i64* %10, align 8
  %801 = call i64 @is_gimple_min_invariant(i64 %800)
  %802 = icmp ne i64 %801, 0
  br i1 %802, label %803, label %811

803:                                              ; preds = %799
  %804 = load i64, i64* %10, align 8
  %805 = call i64 @TREE_OVERFLOW(i64 %804)
  %806 = icmp ne i64 %805, 0
  br i1 %806, label %807, label %814

807:                                              ; preds = %803
  %808 = load i64, i64* %10, align 8
  %809 = call i64 @is_overflow_infinity(i64 %808)
  %810 = icmp ne i64 %809, 0
  br i1 %810, label %814, label %811

811:                                              ; preds = %807, %799, %795, %791, %783, %779
  %812 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %813 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %812)
  br label %851

814:                                              ; preds = %807, %803
  %815 = load i64, i64* %9, align 8
  %816 = call i64 @vrp_val_is_min(i64 %815)
  %817 = icmp ne i64 %816, 0
  br i1 %817, label %822, label %818

818:                                              ; preds = %814
  %819 = load i64, i64* %9, align 8
  %820 = call i64 @is_overflow_infinity(i64 %819)
  %821 = icmp ne i64 %820, 0
  br i1 %821, label %822, label %833

822:                                              ; preds = %818, %814
  %823 = load i64, i64* %10, align 8
  %824 = call i64 @vrp_val_is_max(i64 %823)
  %825 = icmp ne i64 %824, 0
  br i1 %825, label %830, label %826

826:                                              ; preds = %822
  %827 = load i64, i64* %10, align 8
  %828 = call i64 @is_overflow_infinity(i64 %827)
  %829 = icmp ne i64 %828, 0
  br i1 %829, label %830, label %833

830:                                              ; preds = %826, %822
  %831 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %832 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %831)
  br label %851

833:                                              ; preds = %826, %818
  %834 = load i64, i64* %9, align 8
  %835 = load i64, i64* %10, align 8
  %836 = call i32 @compare_values(i64 %834, i64 %835)
  store i32 %836, i32* %11, align 4
  %837 = load i32, i32* %11, align 4
  %838 = icmp eq i32 %837, -2
  br i1 %838, label %842, label %839

839:                                              ; preds = %833
  %840 = load i32, i32* %11, align 4
  %841 = icmp eq i32 %840, 1
  br i1 %841, label %842, label %845

842:                                              ; preds = %839, %833
  %843 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %844 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %843)
  br label %851

845:                                              ; preds = %839
  %846 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %847 = load i32, i32* %6, align 4
  %848 = load i64, i64* %9, align 8
  %849 = load i64, i64* %10, align 8
  %850 = call i32 @set_value_range(%struct.TYPE_15__* %846, i32 %847, i64 %848, i64 %849, i32* null)
  br label %851

851:                                              ; preds = %99, %156, %196, %248, %390, %417, %471, %486, %580, %680, %768, %811, %830, %845, %842
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @set_value_range_to_varying(%struct.TYPE_15__*) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local %struct.TYPE_15__* @get_value_range(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i32 @set_value_range_to_value(%struct.TYPE_15__*, i64, i32*) #1

declare dso_local i32 @set_value_range_to_undefined(%struct.TYPE_15__*) #1

declare dso_local i64 @symbolic_range_p(%struct.TYPE_15__*) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @range_is_nonnull(%struct.TYPE_15__*) #1

declare dso_local i32 @set_value_range_to_nonnull(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @range_is_null(%struct.TYPE_15__*) #1

declare dso_local i32 @set_value_range_to_null(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i64 @integer_onep(i64) #1

declare dso_local i32 @overflow_infinity_range_p(%struct.TYPE_15__*) #1

declare dso_local i64 @fold_binary(i32, i32, i64, i64) #1

declare dso_local i64 @vrp_int_const_binop(i32, i64, i64) #1

declare dso_local i32 @TYPE_OVERFLOW_UNDEFINED(i32) #1

declare dso_local i64 @range_includes_zero_p(%struct.TYPE_15__*) #1

declare dso_local i64 @TREE_OVERFLOW(i64) #1

declare dso_local i64 @is_overflow_infinity(i64) #1

declare dso_local i32 @compare_values(i64, i64) #1

declare dso_local i64 @tree_int_cst_sgn(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @vrp_val_is_min(i64) #1

declare dso_local i64 @vrp_val_is_max(i64) #1

declare dso_local i32 @set_value_range(%struct.TYPE_15__*, i32, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
