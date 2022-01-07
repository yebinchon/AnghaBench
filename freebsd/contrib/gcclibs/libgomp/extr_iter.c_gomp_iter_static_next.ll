; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_iter.c_gomp_iter_static_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_iter.c_gomp_iter_static_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i64, i64, i64, i32 }
%struct.gomp_team = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gomp_iter_static_next(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.gomp_thread*, align 8
  %7 = alloca %struct.gomp_team*, align 8
  %8 = alloca %struct.gomp_work_share*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %24 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %24, %struct.gomp_thread** %6, align 8
  %25 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %26 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load %struct.gomp_team*, %struct.gomp_team** %27, align 8
  store %struct.gomp_team* %28, %struct.gomp_team** %7, align 8
  %29 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %30 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.gomp_work_share*, %struct.gomp_work_share** %31, align 8
  store %struct.gomp_work_share* %32, %struct.gomp_work_share** %8, align 8
  %33 = load %struct.gomp_team*, %struct.gomp_team** %7, align 8
  %34 = icmp ne %struct.gomp_team* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.gomp_team*, %struct.gomp_team** %7, align 8
  %37 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 1, %39 ]
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %9, align 8
  %43 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %44 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %274

49:                                               ; preds = %40
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %54 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %4, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %58 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %5, align 8
  store i64 %59, i64* %60, align 8
  %61 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %62 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %65 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %68 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %274

72:                                               ; preds = %49
  %73 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %74 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %178

77:                                               ; preds = %72
  %78 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %79 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %274

84:                                               ; preds = %77
  %85 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %86 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %89 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 -1, i32 1
  %94 = add nsw i32 %87, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %15, align 8
  %96 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %97 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %100 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = load i64, i64* %15, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %106 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = sdiv i64 %104, %108
  store i64 %109, i64* %10, align 8
  %110 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %111 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %9, align 8
  %116 = udiv i64 %114, %115
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %9, align 8
  %119 = mul i64 %117, %118
  %120 = load i64, i64* %10, align 8
  %121 = icmp ne i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %12, align 8
  %128 = mul i64 %126, %127
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %129, %130
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp ugt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %84
  %136 = load i64, i64* %10, align 8
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %135, %84
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = icmp uge i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %143 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  store i32 1, i32* %3, align 4
  br label %274

145:                                              ; preds = %137
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %148 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %146, %150
  %152 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %153 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %151, %154
  store i64 %155, i64* %15, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %158 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %156, %160
  %162 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %163 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  store i64 %165, i64* %16, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load i64*, i64** %4, align 8
  store i64 %166, i64* %167, align 8
  %168 = load i64, i64* %16, align 8
  %169 = load i64*, i64** %5, align 8
  store i64 %168, i64* %169, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* %10, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 -1, i32 1
  %175 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %176 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  store i32 0, i32* %3, align 4
  br label %274

178:                                              ; preds = %72
  %179 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %180 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %183 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 -1, i32 1
  %188 = add nsw i32 %181, %187
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %22, align 8
  %190 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %191 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %194 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = load i64, i64* %22, align 8
  %198 = add nsw i64 %196, %197
  %199 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %200 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = sdiv i64 %198, %202
  store i64 %203, i64* %17, align 8
  %204 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %205 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %20, align 8
  %208 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %209 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %21, align 8
  %211 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %212 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %9, align 8
  %217 = mul i64 %215, %216
  %218 = load i64, i64* %20, align 8
  %219 = add i64 %217, %218
  %220 = load i64, i64* %21, align 8
  %221 = mul i64 %219, %220
  store i64 %221, i64* %18, align 8
  %222 = load i64, i64* %18, align 8
  %223 = load i64, i64* %21, align 8
  %224 = add i64 %222, %223
  store i64 %224, i64* %19, align 8
  %225 = load i64, i64* %18, align 8
  %226 = load i64, i64* %17, align 8
  %227 = icmp uge i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %178
  store i32 1, i32* %3, align 4
  br label %274

229:                                              ; preds = %178
  %230 = load i64, i64* %19, align 8
  %231 = load i64, i64* %17, align 8
  %232 = icmp ugt i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i64, i64* %17, align 8
  store i64 %234, i64* %19, align 8
  br label %235

235:                                              ; preds = %233, %229
  %236 = load i64, i64* %18, align 8
  %237 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %238 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = mul nsw i64 %236, %240
  %242 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %243 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %241, %244
  store i64 %245, i64* %22, align 8
  %246 = load i64, i64* %19, align 8
  %247 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %248 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %246, %250
  %252 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %253 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %251, %254
  store i64 %255, i64* %23, align 8
  %256 = load i64, i64* %22, align 8
  %257 = load i64*, i64** %4, align 8
  store i64 %256, i64* %257, align 8
  %258 = load i64, i64* %23, align 8
  %259 = load i64*, i64** %5, align 8
  store i64 %258, i64* %259, align 8
  %260 = load i64, i64* %19, align 8
  %261 = load i64, i64* %17, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %235
  %264 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %265 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  store i32 -1, i32* %266, align 8
  br label %273

267:                                              ; preds = %235
  %268 = load %struct.gomp_thread*, %struct.gomp_thread** %6, align 8
  %269 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %267, %263
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %273, %228, %145, %141, %83, %52, %48
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
