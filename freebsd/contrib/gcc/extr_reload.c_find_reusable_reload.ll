; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_reusable_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_reusable_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i32 }

@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@reg_class_contents = common dso_local global i32* null, align 8
@SMALL_REGISTER_CLASSES = common dso_local global i64 0, align 8
@RTX_AUTOINC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, i32, i32, i32)* @find_reusable_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_reusable_reload(i64* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @earlyclobber_operand_p(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @n_reloads, align 4
  store i32 %22, i32* %7, align 4
  br label %369

23:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %186, %23
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @n_reloads, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %189

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @reg_class_subset_p(i32 %29, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @reg_class_subset_p(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %185

48:                                               ; preds = %38, %28
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** @reg_class_contents, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @true_regnum(i64 %67)
  %69 = call i64 @TEST_HARD_REG_BIT(i32 %61, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %185

71:                                               ; preds = %56, %48
  %72 = load i64, i64* %14, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %71
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @MATCHES(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %74
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %142, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %142, label %98

98:                                               ; preds = %90
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @MATCHES(i64 %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %98, %84, %74, %71
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %185

111:                                              ; preds = %108
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @MATCHES(i64 %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %185

121:                                              ; preds = %111
  %122 = load i64, i64* %14, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %124
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i64 @MATCHES(i64 %138, i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %185

142:                                              ; preds = %132, %124, %121, %98, %90, %87
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %142
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @earlyclobber_operand_p(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %185, label %159

159:                                              ; preds = %150, %142
  %160 = load i32, i32* %10, align 4
  %161 = call i64 @SMALL_REGISTER_CLASS_P(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i64, i64* @SMALL_REGISTER_CLASSES, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %163, %159
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @MERGABLE_RELOADS(i32 %167, i32 %173, i32 %174, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %166
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %7, align 4
  br label %369

185:                                              ; preds = %166, %163, %150, %132, %111, %108, %56, %38
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %24

189:                                              ; preds = %24
  store i32 0, i32* %15, align 4
  br label %190

190:                                              ; preds = %364, %189
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @n_reloads, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %367

194:                                              ; preds = %190
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @reg_class_subset_p(i32 %195, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %194
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %206 = load i32, i32* %15, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i64 @reg_class_subset_p(i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %363

214:                                              ; preds = %204, %194
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %214
  %223 = load i32*, i32** @reg_class_contents, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @true_regnum(i64 %233)
  %235 = call i64 @TEST_HARD_REG_BIT(i32 %227, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %363

237:                                              ; preds = %222, %214
  %238 = load i64, i64* %9, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %363

240:                                              ; preds = %237
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %363

248:                                              ; preds = %240
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %363

256:                                              ; preds = %248
  %257 = load i64, i64* %14, align 8
  %258 = call i64 @REG_P(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %282

260:                                              ; preds = %256
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %262 = load i32, i32* %15, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @GET_CODE(i64 %266)
  %268 = call i64 @GET_RTX_CLASS(i32 %267)
  %269 = load i64, i64* @RTX_AUTOINC, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %282

271:                                              ; preds = %260
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = call i64 @XEXP(i64 %277, i32 0)
  %279 = load i64, i64* %14, align 8
  %280 = call i64 @MATCHES(i64 %278, i64 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %308, label %282

282:                                              ; preds = %271, %260, %256
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %284 = load i32, i32* %15, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = call i64 @REG_P(i64 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %363

291:                                              ; preds = %282
  %292 = load i64, i64* %14, align 8
  %293 = call i32 @GET_CODE(i64 %292)
  %294 = call i64 @GET_RTX_CLASS(i32 %293)
  %295 = load i64, i64* @RTX_AUTOINC, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %363

297:                                              ; preds = %291
  %298 = load i64, i64* %14, align 8
  %299 = call i64 @XEXP(i64 %298, i32 0)
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = call i64 @MATCHES(i64 %299, i64 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %363

308:                                              ; preds = %297, %271
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %310 = load i32, i32* %15, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %325, label %316

316:                                              ; preds = %308
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %318 = load i32, i32* %15, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = call i64 @earlyclobber_operand_p(i64 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %363, label %325

325:                                              ; preds = %316, %308
  %326 = load i32, i32* %10, align 4
  %327 = call i64 @SMALL_REGISTER_CLASS_P(i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %325
  %330 = load i64, i64* @SMALL_REGISTER_CLASSES, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %363

332:                                              ; preds = %329, %325
  %333 = load i32, i32* %11, align 4
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %335 = load i32, i32* %15, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %12, align 4
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %342 = load i32, i32* %15, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @MERGABLE_RELOADS(i32 %333, i32 %339, i32 %340, i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %363

349:                                              ; preds = %332
  %350 = load i64, i64* %14, align 8
  %351 = call i64 @REG_P(i64 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %349
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %355 = load i32, i32* %15, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load i64*, i64** %8, align 8
  store i64 %359, i64* %360, align 8
  br label %361

361:                                              ; preds = %353, %349
  %362 = load i32, i32* %15, align 4
  store i32 %362, i32* %7, align 4
  br label %369

363:                                              ; preds = %332, %329, %316, %297, %291, %282, %248, %240, %237, %222, %204
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %15, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %15, align 4
  br label %190

367:                                              ; preds = %190
  %368 = load i32, i32* @n_reloads, align 4
  store i32 %368, i32* %7, align 4
  br label %369

369:                                              ; preds = %367, %361, %183, %21
  %370 = load i32, i32* %7, align 4
  ret i32 %370
}

declare dso_local i64 @earlyclobber_operand_p(i64) #1

declare dso_local i64 @reg_class_subset_p(i32, i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @true_regnum(i64) #1

declare dso_local i64 @MATCHES(i64, i64) #1

declare dso_local i64 @SMALL_REGISTER_CLASS_P(i32) #1

declare dso_local i64 @MERGABLE_RELOADS(i32, i32, i32, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
