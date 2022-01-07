; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_compare_range_with_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_compare_range_with_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@VR_VARYING = common dso_local global i64 0, align 8
@VR_UNDEFINED = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@VR_ANTI_RANGE = common dso_local global i64 0, align 8
@GT_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@boolean_true_node = common dso_local global i32 0, align 4
@boolean_false_node = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32, i32*)* @compare_range_with_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_range_with_value(i32 %0, %struct.TYPE_6__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VR_VARYING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VR_UNDEFINED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %4
  %25 = load i32, i32* @NULL_TREE, align 4
  store i32 %25, i32* %5, align 4
  br label %326

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VR_ANTI_RANGE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @GT_EXPR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GE_EXPR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @LT_EXPR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @LE_EXPR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40, %36, %32
  %49 = load i32, i32* @NULL_TREE, align 4
  store i32 %49, i32* %5, align 4
  br label %326

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = call i32 @value_inside_range(i32 %51, %struct.TYPE_6__* %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @NE_EXPR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @boolean_true_node, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @boolean_false_node, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %5, align 4
  br label %326

65:                                               ; preds = %50
  %66 = load i32, i32* @NULL_TREE, align 4
  store i32 %66, i32* %5, align 4
  br label %326

67:                                               ; preds = %26
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @usable_range_p(%struct.TYPE_6__* %68, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @NULL_TREE, align 4
  store i32 %73, i32* %5, align 4
  br label %326

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @EQ_EXPR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %133

78:                                               ; preds = %74
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @compare_values_warnv(i32 %81, i32 %84, i32* %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %78
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @compare_values_warnv(i32 %91, i32 %92, i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @boolean_true_node, align 4
  store i32 %98, i32* %5, align 4
  br label %326

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %102, %99
  %109 = load i32, i32* @boolean_false_node, align 4
  store i32 %109, i32* %5, align 4
  br label %326

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110
  br label %131

112:                                              ; preds = %78
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @compare_values_warnv(i32 %113, i32 %116, i32* %117)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %128, label %120

120:                                              ; preds = %112
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @compare_values_warnv(i32 %123, i32 %124, i32* %125)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %130

128:                                              ; preds = %120, %112
  %129 = load i32, i32* @boolean_false_node, align 4
  store i32 %129, i32* %5, align 4
  br label %326

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %111
  %132 = load i32, i32* @NULL_TREE, align 4
  store i32 %132, i32* %5, align 4
  br label %326

133:                                              ; preds = %74
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @NE_EXPR, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %177

137:                                              ; preds = %133
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @compare_values_warnv(i32 %140, i32 %141, i32* %142)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %153, label %145

145:                                              ; preds = %137
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @compare_values_warnv(i32 %148, i32 %149, i32* %150)
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %155

153:                                              ; preds = %145, %137
  %154 = load i32, i32* @boolean_true_node, align 4
  store i32 %154, i32* %5, align 4
  br label %326

155:                                              ; preds = %145
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @compare_values_warnv(i32 %158, i32 %161, i32* %162)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %155
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @compare_values_warnv(i32 %168, i32 %169, i32* %170)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = load i32, i32* @boolean_false_node, align 4
  store i32 %174, i32* %5, align 4
  br label %326

175:                                              ; preds = %165, %155
  %176 = load i32, i32* @NULL_TREE, align 4
  store i32 %176, i32* %5, align 4
  br label %326

177:                                              ; preds = %133
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @LT_EXPR, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @LE_EXPR, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %249

185:                                              ; preds = %181, %177
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @compare_values_warnv(i32 %188, i32 %189, i32* %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @LT_EXPR, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %185
  %196 = load i32, i32* %11, align 4
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %208, label %198

198:                                              ; preds = %195, %185
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @LE_EXPR, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %198
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %11, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %205, %202, %195
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32*, i32** %9, align 8
  store i32 1, i32* %213, align 4
  br label %214

214:                                              ; preds = %212, %208
  %215 = load i32, i32* @boolean_true_node, align 4
  store i32 %215, i32* %5, align 4
  br label %326

216:                                              ; preds = %205, %198
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = call i32 @compare_values_warnv(i32 %219, i32 %220, i32* %221)
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @LT_EXPR, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %216
  %227 = load i32, i32* %11, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %239, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %11, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %239, label %232

232:                                              ; preds = %229, %216
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* @LE_EXPR, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %247

236:                                              ; preds = %232
  %237 = load i32, i32* %11, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %247

239:                                              ; preds = %236, %229, %226
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %241 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i32*, i32** %9, align 8
  store i32 1, i32* %244, align 4
  br label %245

245:                                              ; preds = %243, %239
  %246 = load i32, i32* @boolean_false_node, align 4
  store i32 %246, i32* %5, align 4
  br label %326

247:                                              ; preds = %236, %232
  %248 = load i32, i32* @NULL_TREE, align 4
  store i32 %248, i32* %5, align 4
  br label %326

249:                                              ; preds = %181
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @GT_EXPR, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* @GE_EXPR, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %321

257:                                              ; preds = %253, %249
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %8, align 4
  %262 = load i32*, i32** %9, align 8
  %263 = call i32 @compare_values_warnv(i32 %260, i32 %261, i32* %262)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @GT_EXPR, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %257
  %268 = load i32, i32* %12, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %280, label %270

270:                                              ; preds = %267, %257
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @GE_EXPR, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %288

274:                                              ; preds = %270
  %275 = load i32, i32* %12, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %12, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %288

280:                                              ; preds = %277, %274, %267
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %282 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32*, i32** %9, align 8
  store i32 1, i32* %285, align 4
  br label %286

286:                                              ; preds = %284, %280
  %287 = load i32, i32* @boolean_true_node, align 4
  store i32 %287, i32* %5, align 4
  br label %326

288:                                              ; preds = %277, %270
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load i32*, i32** %9, align 8
  %294 = call i32 @compare_values_warnv(i32 %291, i32 %292, i32* %293)
  store i32 %294, i32* %12, align 4
  %295 = load i32, i32* %6, align 4
  %296 = load i32, i32* @GT_EXPR, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %288
  %299 = load i32, i32* %12, align 4
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %311, label %301

301:                                              ; preds = %298
  %302 = load i32, i32* %12, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %301, %288
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* @GE_EXPR, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %319

308:                                              ; preds = %304
  %309 = load i32, i32* %12, align 4
  %310 = icmp eq i32 %309, -1
  br i1 %310, label %311, label %319

311:                                              ; preds = %308, %301, %298
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %313 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = load i32*, i32** %9, align 8
  store i32 1, i32* %316, align 4
  br label %317

317:                                              ; preds = %315, %311
  %318 = load i32, i32* @boolean_false_node, align 4
  store i32 %318, i32* %5, align 4
  br label %326

319:                                              ; preds = %308, %304
  %320 = load i32, i32* @NULL_TREE, align 4
  store i32 %320, i32* %5, align 4
  br label %326

321:                                              ; preds = %253
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  br label %324

324:                                              ; preds = %323
  %325 = call i32 (...) @gcc_unreachable()
  br label %326

326:                                              ; preds = %324, %319, %317, %286, %247, %245, %214, %175, %173, %153, %131, %128, %108, %97, %72, %65, %63, %48, %24
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local i32 @value_inside_range(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @usable_range_p(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @compare_values_warnv(i32, i32, i32*) #1

declare dso_local i64 @overflow_infinity_range_p(%struct.TYPE_6__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
