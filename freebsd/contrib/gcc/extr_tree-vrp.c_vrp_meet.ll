; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_meet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_meet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32 }

@VR_UNDEFINED = common dso_local global i64 0, align 8
@VR_VARYING = common dso_local global i64 0, align 8
@VR_RANGE = common dso_local global i64 0, align 8
@VR_ANTI_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_13__*)* @vrp_meet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vrp_meet(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VR_UNDEFINED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = call i32 @copy_value_range(%struct.TYPE_13__* %14, %struct.TYPE_13__* %15)
  br label %440

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VR_UNDEFINED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %440

24:                                               ; preds = %17
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VR_VARYING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %440

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VR_VARYING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = call i32 @set_value_range_to_varying(%struct.TYPE_13__* %38)
  br label %440

40:                                               ; preds = %31
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VR_RANGE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %192

46:                                               ; preds = %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VR_RANGE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %192

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = call i64 @value_ranges_intersect_p(%struct.TYPE_13__* %53, %struct.TYPE_13__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %190

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @compare_values(i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %57
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %6, align 4
  br label %85

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %6, align 4
  br label %84

81:                                               ; preds = %74
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = call i32 @set_value_range_to_varying(%struct.TYPE_13__* %82)
  br label %440

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @compare_values(i32 %88, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %102

98:                                               ; preds = %95, %85
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  br label %113

102:                                              ; preds = %95
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %7, align 4
  br label %112

109:                                              ; preds = %102
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = call i32 @set_value_range_to_varying(%struct.TYPE_13__* %110)
  br label %440

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @TREE_TYPE(i32 %114)
  %116 = call i64 @INTEGRAL_TYPE_P(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  %120 = call i64 @vrp_val_is_min(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = call i64 @is_overflow_infinity(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %122, %118
  %127 = load i32, i32* %7, align 4
  %128 = call i64 @vrp_val_is_max(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = call i64 @is_overflow_infinity(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130, %126
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = call i32 @set_value_range_to_varying(%struct.TYPE_13__* %135)
  br label %440

137:                                              ; preds = %130, %122, %113
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %137
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %142
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %147
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @bitmap_and_into(i64 %158, i64 %161)
  br label %179

163:                                              ; preds = %147, %142, %137
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @bitmap_clear(i64 %176)
  br label %178

178:                                              ; preds = %173, %168, %163
  br label %179

179:                                              ; preds = %178, %155
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @set_value_range(%struct.TYPE_13__* %180, i64 %183, i32 %184, i32 %185, i64 %188)
  br label %191

190:                                              ; preds = %52
  br label %372

191:                                              ; preds = %179
  br label %371

192:                                              ; preds = %46, %40
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @VR_ANTI_RANGE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %276

198:                                              ; preds = %192
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VR_ANTI_RANGE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %276

204:                                              ; preds = %198
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @compare_values(i32 %207, i32 %210)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %274

213:                                              ; preds = %204
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @compare_values(i32 %216, i32 %219)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %274

222:                                              ; preds = %213
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @compare_values(i32 %225, i32 %228)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %274

231:                                              ; preds = %222
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %231
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %236
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %244, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %241
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @bitmap_and_into(i64 %252, i64 %255)
  br label %273

257:                                              ; preds = %241, %236, %231
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %257
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %262
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @bitmap_clear(i64 %270)
  br label %272

272:                                              ; preds = %267, %262, %257
  br label %273

273:                                              ; preds = %272, %249
  br label %275

274:                                              ; preds = %222, %213, %204
  br label %372

275:                                              ; preds = %273
  br label %370

276:                                              ; preds = %198, %192
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @VR_ANTI_RANGE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %288, label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @VR_ANTI_RANGE, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %367

288:                                              ; preds = %282, %276
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %290 = call i32 @symbolic_range_p(%struct.TYPE_13__* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %365, label %292

292:                                              ; preds = %288
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %294 = call i32 @symbolic_range_p(%struct.TYPE_13__* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %365, label %296

296:                                              ; preds = %292
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %299 = call i64 @value_ranges_intersect_p(%struct.TYPE_13__* %297, %struct.TYPE_13__* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %365, label %301

301:                                              ; preds = %296
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @VR_ANTI_RANGE, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %322

307:                                              ; preds = %301
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @set_value_range(%struct.TYPE_13__* %308, i64 %311, i32 %314, i32 %317, i64 %320)
  br label %322

322:                                              ; preds = %307, %301
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %348

327:                                              ; preds = %322
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %348

332:                                              ; preds = %327
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %335, %338
  br i1 %339, label %340, label %348

340:                                              ; preds = %332
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @bitmap_and_into(i64 %343, i64 %346)
  br label %364

348:                                              ; preds = %332, %327, %322
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %348
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %363, label %358

358:                                              ; preds = %353
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @bitmap_clear(i64 %361)
  br label %363

363:                                              ; preds = %358, %353, %348
  br label %364

364:                                              ; preds = %363, %340
  br label %366

365:                                              ; preds = %296, %292, %288
  br label %372

366:                                              ; preds = %364
  br label %369

367:                                              ; preds = %282
  %368 = call i32 (...) @gcc_unreachable()
  br label %369

369:                                              ; preds = %367, %366
  br label %370

370:                                              ; preds = %369, %275
  br label %371

371:                                              ; preds = %370, %191
  br label %440

372:                                              ; preds = %365, %274, %190
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %374 = call i32 @symbolic_range_p(%struct.TYPE_13__* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %437, label %376

376:                                              ; preds = %372
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @VR_RANGE, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %386

382:                                              ; preds = %376
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %384 = call i64 @range_includes_zero_p(%struct.TYPE_13__* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %382, %376
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @VR_ANTI_RANGE, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %437

392:                                              ; preds = %386
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %394 = call i64 @range_includes_zero_p(%struct.TYPE_13__* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %437

396:                                              ; preds = %392, %382
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %398 = call i32 @symbolic_range_p(%struct.TYPE_13__* %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %437, label %400

400:                                              ; preds = %396
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @VR_RANGE, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %410

406:                                              ; preds = %400
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %408 = call i64 @range_includes_zero_p(%struct.TYPE_13__* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %406, %400
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @VR_ANTI_RANGE, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %437

416:                                              ; preds = %410
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %418 = call i64 @range_includes_zero_p(%struct.TYPE_13__* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %437

420:                                              ; preds = %416, %406
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @TREE_TYPE(i32 %424)
  %426 = call i32 @set_value_range_to_nonnull(%struct.TYPE_13__* %421, i32 %425)
  %427 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %420
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = call i32 @bitmap_clear(i64 %434)
  br label %436

436:                                              ; preds = %431, %420
  br label %440

437:                                              ; preds = %416, %410, %396, %392, %386, %372
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %439 = call i32 @set_value_range_to_varying(%struct.TYPE_13__* %438)
  br label %440

440:                                              ; preds = %13, %23, %30, %37, %81, %109, %134, %371, %437, %436
  ret void
}

declare dso_local i32 @copy_value_range(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @set_value_range_to_varying(%struct.TYPE_13__*) #1

declare dso_local i64 @value_ranges_intersect_p(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @compare_values(i32, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @vrp_val_is_min(i32) #1

declare dso_local i64 @is_overflow_infinity(i32) #1

declare dso_local i64 @vrp_val_is_max(i32) #1

declare dso_local i32 @bitmap_and_into(i64, i64) #1

declare dso_local i32 @bitmap_clear(i64) #1

declare dso_local i32 @set_value_range(%struct.TYPE_13__*, i64, i32, i32, i64) #1

declare dso_local i32 @symbolic_range_p(%struct.TYPE_13__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @range_includes_zero_p(%struct.TYPE_13__*) #1

declare dso_local i32 @set_value_range_to_nonnull(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
