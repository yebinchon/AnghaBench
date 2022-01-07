; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_compare_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_compare_ranges.c"
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
@VR_RANGE = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_true_node = common dso_local global i32 0, align 4
@boolean_false_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)* @compare_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_ranges(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VR_VARYING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VR_UNDEFINED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VR_VARYING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VR_UNDEFINED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28, %22, %4
  %41 = load i32, i32* @NULL_TREE, align 4
  store i32 %41, i32* %5, align 4
  br label %421

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VR_ANTI_RANGE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VR_ANTI_RANGE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %139

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VR_ANTI_RANGE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VR_ANTI_RANGE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @NULL_TREE, align 4
  store i32 %67, i32* %5, align 4
  br label %421

68:                                               ; preds = %60, %54
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GT_EXPR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @GE_EXPR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LT_EXPR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @LE_EXPR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76, %72, %68
  %85 = load i32, i32* @NULL_TREE, align 4
  store i32 %85, i32* %5, align 4
  br label %421

86:                                               ; preds = %80
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VR_RANGE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %10, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %7, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %8, align 8
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @NE_EXPR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @EQ_EXPR, align 4
  %103 = icmp eq i32 %101, %102
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i1 [ true, %96 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @gcc_assert(i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @compare_values_warnv(i32 %110, i32 %113, i32* %114)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %104
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @compare_values_warnv(i32 %120, i32 %123, i32* %124)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %117
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @NE_EXPR, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @boolean_true_node, align 4
  br label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @boolean_false_node, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  store i32 %136, i32* %5, align 4
  br label %421

137:                                              ; preds = %117, %104
  %138 = load i32, i32* @NULL_TREE, align 4
  store i32 %138, i32* %5, align 4
  br label %421

139:                                              ; preds = %48
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @usable_range_p(%struct.TYPE_6__* %140, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @usable_range_p(%struct.TYPE_6__* %145, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %144, %139
  %150 = load i32, i32* @NULL_TREE, align 4
  store i32 %150, i32* %5, align 4
  br label %421

151:                                              ; preds = %144
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @GT_EXPR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @GE_EXPR, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155, %151
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @GT_EXPR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @LT_EXPR, align 4
  br label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @LE_EXPR, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  store i32 %168, i32* %6, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %169, %struct.TYPE_6__** %11, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %170, %struct.TYPE_6__** %7, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %171, %struct.TYPE_6__** %8, align 8
  br label %172

172:                                              ; preds = %167, %155
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @EQ_EXPR, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %255

176:                                              ; preds = %172
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @compare_values_warnv(i32 %179, i32 %182, i32* %183)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %230

186:                                              ; preds = %176
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @compare_values_warnv(i32 %189, i32 %192, i32* %193)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %230

196:                                              ; preds = %186
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = call i32 @compare_values_warnv(i32 %199, i32 %202, i32* %203)
  store i32 %204, i32* %12, align 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = call i32 @compare_values_warnv(i32 %207, i32 %210, i32* %211)
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %196
  %216 = load i32, i32* %13, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32, i32* @boolean_true_node, align 4
  store i32 %219, i32* %5, align 4
  br label %421

220:                                              ; preds = %215, %196
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, -2
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, -2
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, i32* @boolean_false_node, align 4
  store i32 %227, i32* %5, align 4
  br label %421

228:                                              ; preds = %223, %220
  br label %229

229:                                              ; preds = %228
  br label %253

230:                                              ; preds = %186, %176
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %9, align 8
  %238 = call i32 @compare_values_warnv(i32 %233, i32 %236, i32* %237)
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %250, label %240

240:                                              ; preds = %230
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @compare_values_warnv(i32 %243, i32 %246, i32* %247)
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %252

250:                                              ; preds = %240, %230
  %251 = load i32, i32* @boolean_false_node, align 4
  store i32 %251, i32* %5, align 4
  br label %421

252:                                              ; preds = %240
  br label %253

253:                                              ; preds = %252, %229
  %254 = load i32, i32* @NULL_TREE, align 4
  store i32 %254, i32* %5, align 4
  br label %421

255:                                              ; preds = %172
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* @NE_EXPR, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %333

259:                                              ; preds = %255
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = call i32 @compare_values_warnv(i32 %262, i32 %265, i32* %266)
  store i32 %267, i32* %14, align 4
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i32*, i32** %9, align 8
  %275 = call i32 @compare_values_warnv(i32 %270, i32 %273, i32* %274)
  store i32 %275, i32* %15, align 4
  %276 = load i32, i32* %14, align 4
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %281

278:                                              ; preds = %259
  %279 = load i32, i32* %15, align 4
  %280 = icmp eq i32 %279, -1
  br i1 %280, label %287, label %281

281:                                              ; preds = %278, %259
  %282 = load i32, i32* %14, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i32, i32* %15, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %289

287:                                              ; preds = %284, %278
  %288 = load i32, i32* @boolean_true_node, align 4
  store i32 %288, i32* %5, align 4
  br label %421

289:                                              ; preds = %284, %281
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load i32*, i32** %9, align 8
  %297 = call i32 @compare_values_warnv(i32 %292, i32 %295, i32* %296)
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %331

299:                                              ; preds = %289
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load i32*, i32** %9, align 8
  %307 = call i32 @compare_values_warnv(i32 %302, i32 %305, i32* %306)
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %331

309:                                              ; preds = %299
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %9, align 8
  %317 = call i32 @compare_values_warnv(i32 %312, i32 %315, i32* %316)
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %309
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load i32*, i32** %9, align 8
  %327 = call i32 @compare_values_warnv(i32 %322, i32 %325, i32* %326)
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %319
  %330 = load i32, i32* @boolean_false_node, align 4
  store i32 %330, i32* %5, align 4
  br label %421

331:                                              ; preds = %319, %309, %299, %289
  %332 = load i32, i32* @NULL_TREE, align 4
  store i32 %332, i32* %5, align 4
  br label %421

333:                                              ; preds = %255
  %334 = load i32, i32* %6, align 4
  %335 = load i32, i32* @LT_EXPR, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %341, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* @LE_EXPR, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %417

341:                                              ; preds = %337, %333
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load i32*, i32** %9, align 8
  %349 = call i32 @compare_values_warnv(i32 %344, i32 %347, i32* %348)
  store i32 %349, i32* %16, align 4
  %350 = load i32, i32* %6, align 4
  %351 = load i32, i32* @LT_EXPR, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %341
  %354 = load i32, i32* %16, align 4
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %366, label %356

356:                                              ; preds = %353, %341
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* @LE_EXPR, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %378

360:                                              ; preds = %356
  %361 = load i32, i32* %16, align 4
  %362 = icmp eq i32 %361, -1
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = load i32, i32* %16, align 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %378

366:                                              ; preds = %363, %360, %353
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %368 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %372 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %370, %366
  %375 = load i32*, i32** %9, align 8
  store i32 1, i32* %375, align 4
  br label %376

376:                                              ; preds = %374, %370
  %377 = load i32, i32* @boolean_true_node, align 4
  store i32 %377, i32* %5, align 4
  br label %421

378:                                              ; preds = %363, %356
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = load i32*, i32** %9, align 8
  %386 = call i32 @compare_values_warnv(i32 %381, i32 %384, i32* %385)
  store i32 %386, i32* %16, align 4
  %387 = load i32, i32* %6, align 4
  %388 = load i32, i32* @LT_EXPR, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %396

390:                                              ; preds = %378
  %391 = load i32, i32* %16, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %403, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %16, align 4
  %395 = icmp eq i32 %394, 1
  br i1 %395, label %403, label %396

396:                                              ; preds = %393, %378
  %397 = load i32, i32* %6, align 4
  %398 = load i32, i32* @LE_EXPR, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %415

400:                                              ; preds = %396
  %401 = load i32, i32* %16, align 4
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %403, label %415

403:                                              ; preds = %400, %393, %390
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %405 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %403
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %409 = call i64 @overflow_infinity_range_p(%struct.TYPE_6__* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %407, %403
  %412 = load i32*, i32** %9, align 8
  store i32 1, i32* %412, align 4
  br label %413

413:                                              ; preds = %411, %407
  %414 = load i32, i32* @boolean_false_node, align 4
  store i32 %414, i32* %5, align 4
  br label %421

415:                                              ; preds = %400, %396
  %416 = load i32, i32* @NULL_TREE, align 4
  store i32 %416, i32* %5, align 4
  br label %421

417:                                              ; preds = %337
  br label %418

418:                                              ; preds = %417
  br label %419

419:                                              ; preds = %418
  %420 = call i32 (...) @gcc_unreachable()
  br label %421

421:                                              ; preds = %419, %415, %413, %376, %331, %329, %287, %253, %250, %226, %218, %149, %137, %135, %84, %66, %40
  %422 = load i32, i32* %5, align 4
  ret i32 %422
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @compare_values_warnv(i32, i32, i32*) #1

declare dso_local i32 @usable_range_p(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @overflow_infinity_range_p(%struct.TYPE_6__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
