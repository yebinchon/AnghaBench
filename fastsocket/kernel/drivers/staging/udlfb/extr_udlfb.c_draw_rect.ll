; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_draw_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_draw_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i8*, i8*, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BUF_HIGH_WATER_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, i32, i32, i32, i32, i8, i8, i8)* @draw_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @draw_rect(%struct.dlfb_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlfb_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8 %5, i8* %15, align 1
  store i8 %6, i8* %16, align 1
  store i8 %7, i8* %17, align 1
  %25 = load i8, i8* %15, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 248
  %28 = load i8, i8* %16, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 5
  %31 = or i32 %27, %30
  %32 = and i32 %31, 255
  %33 = shl i32 %32, 8
  %34 = load i8, i8* %16, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 28
  %37 = shl i32 %36, 3
  %38 = load i8, i8* %17, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 3
  %41 = or i32 %37, %40
  %42 = and i32 %41, 255
  %43 = add nsw i32 %33, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %22, align 2
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %50 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %49, i32 0, i32 5
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %8
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %290

59:                                               ; preds = %8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %64 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %63, i32 0, i32 5
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %62, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %290

73:                                               ; preds = %59
  %74 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %75 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %74, i32 0, i32 4
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %78 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %81 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 2
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %79, %88
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 %90, 2
  %92 = add nsw i32 %89, %91
  store i32 %92, i32* %20, align 4
  %93 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %94 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %24, align 8
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %266, %73
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %99, %100
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %269

103:                                              ; preds = %97
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %141, %103
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %106, 2
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %104
  %110 = load i16, i16* %22, align 2
  %111 = zext i16 %110 to i32
  %112 = ashr i32 %111, 8
  %113 = trunc i32 %112 to i8
  %114 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %115 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %20, align 4
  %118 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %119 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %116, i64 %124
  store i8 %113, i8* %125, align 1
  %126 = load i16, i16* %22, align 2
  %127 = trunc i16 %126 to i8
  %128 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %129 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %20, align 4
  %132 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %133 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %131, %134
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %135, %136
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %130, i64 %139
  store i8 %127, i8* %140, align 1
  br label %141

141:                                              ; preds = %109
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %19, align 4
  br label %104

144:                                              ; preds = %104
  %145 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %146 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %24, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %144
  %156 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %157 = load i8*, i8** %24, align 8
  %158 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %159 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = ptrtoint i8* %157 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %156, i32 %164)
  store i32 %165, i32* %21, align 4
  %166 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %167 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  store i8* %168, i8** %24, align 8
  br label %169

169:                                              ; preds = %155, %144
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %23, align 4
  br label %171

171:                                              ; preds = %242, %169
  %172 = load i32, i32* %23, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %253

174:                                              ; preds = %171
  %175 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %176 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = load i8*, i8** %24, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %174
  %186 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %187 = load i8*, i8** %24, align 8
  %188 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %189 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = ptrtoint i8* %187 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %186, i32 %194)
  store i32 %195, i32* %21, align 4
  %196 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %197 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %24, align 8
  br label %199

199:                                              ; preds = %185, %174
  %200 = load i8*, i8** %24, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %24, align 8
  store i8 -81, i8* %200, align 1
  %202 = load i8*, i8** %24, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %24, align 8
  store i8 105, i8* %202, align 1
  %204 = load i32, i32* %20, align 4
  %205 = ashr i32 %204, 16
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %24, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %24, align 8
  store i8 %206, i8* %207, align 1
  %209 = load i32, i32* %20, align 4
  %210 = ashr i32 %209, 8
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %24, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %24, align 8
  store i8 %211, i8* %212, align 1
  %214 = load i32, i32* %20, align 4
  %215 = trunc i32 %214 to i8
  %216 = load i8*, i8** %24, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %24, align 8
  store i8 %215, i8* %216, align 1
  %218 = load i32, i32* %23, align 4
  %219 = icmp sgt i32 %218, 255
  br i1 %219, label %220, label %229

220:                                              ; preds = %199
  %221 = load i8*, i8** %24, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %24, align 8
  store i8 -1, i8* %221, align 1
  %223 = load i8*, i8** %24, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %24, align 8
  store i8 -1, i8* %223, align 1
  %225 = load i32, i32* %23, align 4
  %226 = sub nsw i32 %225, 255
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %20, align 4
  %228 = add nsw i32 %227, 510
  store i32 %228, i32* %20, align 4
  br label %242

229:                                              ; preds = %199
  %230 = load i32, i32* %23, align 4
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %24, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %24, align 8
  store i8 %231, i8* %232, align 1
  %234 = load i32, i32* %23, align 4
  %235 = trunc i32 %234 to i8
  %236 = load i8*, i8** %24, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %24, align 8
  store i8 %235, i8* %236, align 1
  %238 = load i32, i32* %23, align 4
  %239 = mul nsw i32 %238, 2
  %240 = load i32, i32* %20, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %242

242:                                              ; preds = %229, %220
  %243 = load i16, i16* %22, align 2
  %244 = zext i16 %243 to i32
  %245 = ashr i32 %244, 8
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %24, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %24, align 8
  store i8 %246, i8* %247, align 1
  %249 = load i16, i16* %22, align 2
  %250 = trunc i16 %249 to i8
  %251 = load i8*, i8** %24, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %24, align 8
  store i8 %250, i8* %251, align 1
  br label %171

253:                                              ; preds = %171
  %254 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %255 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %254, i32 0, i32 5
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %259, 2
  %261 = load i32, i32* %13, align 4
  %262 = mul nsw i32 %261, 2
  %263 = sub nsw i32 %260, %262
  %264 = load i32, i32* %20, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %20, align 4
  br label %266

266:                                              ; preds = %253
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %18, align 4
  br label %97

269:                                              ; preds = %97
  %270 = load i8*, i8** %24, align 8
  %271 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %272 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ugt i8* %270, %273
  br i1 %274, label %275, label %286

275:                                              ; preds = %269
  %276 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %277 = load i8*, i8** %24, align 8
  %278 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %279 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = ptrtoint i8* %277 to i64
  %282 = ptrtoint i8* %280 to i64
  %283 = sub i64 %281, %282
  %284 = trunc i64 %283 to i32
  %285 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %276, i32 %284)
  store i32 %285, i32* %21, align 4
  br label %286

286:                                              ; preds = %275, %269
  %287 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %288 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %287, i32 0, i32 4
  %289 = call i32 @mutex_unlock(i32* %288)
  store i32 1, i32* %9, align 4
  br label %290

290:                                              ; preds = %286, %70, %56
  %291 = load i32, i32* %9, align 4
  ret i32 %291
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dlfb_bulk_msg(%struct.dlfb_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
