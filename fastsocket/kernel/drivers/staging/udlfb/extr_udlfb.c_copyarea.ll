; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i8*, i8*, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BUF_HIGH_WATER_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, i32, i32, i32, i32, i32, i32)* @copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyarea(%struct.dlfb_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlfb_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %26 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %24, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %287

35:                                               ; preds = %7
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %40 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %287

49:                                               ; preds = %35
  %50 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %51 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %50, i32 0, i32 3
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %54 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %57 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %55, %64
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %16, align 4
  %69 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %70 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 2
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %78, 2
  %80 = add nsw i32 %77, %79
  store i32 %80, i32* %17, align 4
  %81 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %82 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %21, align 8
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %263, %49
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %266

91:                                               ; preds = %85
  %92 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %93 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %99 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %97, %101
  %103 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %104 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 2
  %111 = call i32 @memcpy(i64 %102, i64 %108, i32 %110)
  %112 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %113 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %21, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %91
  %123 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %124 = load i8*, i8** %21, align 8
  %125 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %126 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = ptrtoint i8* %124 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %123, i32 %131)
  store i32 %132, i32* %20, align 4
  %133 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %134 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %21, align 8
  br label %136

136:                                              ; preds = %122, %91
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %237, %136
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %238

141:                                              ; preds = %138
  %142 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %143 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %21, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %141
  %153 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %154 = load i8*, i8** %21, align 8
  %155 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %156 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %154 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %153, i32 %161)
  store i32 %162, i32* %20, align 4
  %163 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %164 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %21, align 8
  br label %166

166:                                              ; preds = %152, %141
  %167 = load i8*, i8** %21, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %21, align 8
  store i8 -81, i8* %167, align 1
  %169 = load i8*, i8** %21, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %21, align 8
  store i8 106, i8* %169, align 1
  %171 = load i32, i32* %16, align 4
  %172 = ashr i32 %171, 16
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %21, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %21, align 8
  store i8 %173, i8* %174, align 1
  %176 = load i32, i32* %16, align 4
  %177 = ashr i32 %176, 8
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %21, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %21, align 8
  store i8 %178, i8* %179, align 1
  %181 = load i32, i32* %16, align 4
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %21, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %21, align 8
  store i8 %182, i8* %183, align 1
  %185 = load i32, i32* %18, align 4
  %186 = icmp sgt i32 %185, 255
  br i1 %186, label %187, label %210

187:                                              ; preds = %166
  %188 = load i8*, i8** %21, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %21, align 8
  store i8 -1, i8* %188, align 1
  %190 = load i32, i32* %17, align 4
  %191 = ashr i32 %190, 16
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %21, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %21, align 8
  store i8 %192, i8* %193, align 1
  %195 = load i32, i32* %17, align 4
  %196 = ashr i32 %195, 8
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %21, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %21, align 8
  store i8 %197, i8* %198, align 1
  %200 = load i32, i32* %17, align 4
  %201 = trunc i32 %200 to i8
  %202 = load i8*, i8** %21, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %21, align 8
  store i8 %201, i8* %202, align 1
  %204 = load i32, i32* %18, align 4
  %205 = sub nsw i32 %204, 255
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %206, 510
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 510
  store i32 %209, i32* %17, align 4
  br label %237

210:                                              ; preds = %166
  %211 = load i32, i32* %18, align 4
  %212 = trunc i32 %211 to i8
  %213 = load i8*, i8** %21, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %21, align 8
  store i8 %212, i8* %213, align 1
  %215 = load i32, i32* %17, align 4
  %216 = ashr i32 %215, 16
  %217 = trunc i32 %216 to i8
  %218 = load i8*, i8** %21, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %21, align 8
  store i8 %217, i8* %218, align 1
  %220 = load i32, i32* %17, align 4
  %221 = ashr i32 %220, 8
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %21, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %21, align 8
  store i8 %222, i8* %223, align 1
  %225 = load i32, i32* %17, align 4
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %21, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %21, align 8
  store i8 %226, i8* %227, align 1
  %229 = load i32, i32* %18, align 4
  %230 = mul nsw i32 %229, 2
  %231 = load i32, i32* %16, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %18, align 4
  %234 = mul nsw i32 %233, 2
  %235 = load i32, i32* %17, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %237

237:                                              ; preds = %210, %187
  br label %138

238:                                              ; preds = %138
  %239 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %240 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %239, i32 0, i32 4
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %244, 2
  %246 = load i32, i32* %14, align 4
  %247 = mul nsw i32 %246, 2
  %248 = sub nsw i32 %245, %247
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %16, align 4
  %251 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %252 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %251, i32 0, i32 4
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %256, 2
  %258 = load i32, i32* %14, align 4
  %259 = mul nsw i32 %258, 2
  %260 = sub nsw i32 %257, %259
  %261 = load i32, i32* %17, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %17, align 4
  br label %263

263:                                              ; preds = %238
  %264 = load i32, i32* %19, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %19, align 4
  br label %85

266:                                              ; preds = %85
  %267 = load i8*, i8** %21, align 8
  %268 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %269 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ugt i8* %267, %270
  br i1 %271, label %272, label %283

272:                                              ; preds = %266
  %273 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %274 = load i8*, i8** %21, align 8
  %275 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %276 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = ptrtoint i8* %274 to i64
  %279 = ptrtoint i8* %277 to i64
  %280 = sub i64 %278, %279
  %281 = trunc i64 %280 to i32
  %282 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %273, i32 %281)
  store i32 %282, i32* %20, align 4
  br label %283

283:                                              ; preds = %272, %266
  %284 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  %285 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %284, i32 0, i32 3
  %286 = call i32 @mutex_unlock(i32* %285)
  store i32 1, i32* %8, align 4
  br label %287

287:                                              ; preds = %283, %46, %32
  %288 = load i32, i32* %8, align 4
  ret i32 %288
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @dlfb_bulk_msg(%struct.dlfb_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
