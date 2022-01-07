; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c___bio_map_user_iov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c___bio_map_user_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.block_device* }
%struct.request_queue = type { i32 }
%struct.block_device = type { i32 }
%struct.sg_iovec = type { i64, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@BIO_RW = common dso_local global i32 0, align 4
@BIO_USER_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.request_queue*, %struct.block_device*, %struct.sg_iovec*, i32, i32, i32)* @__bio_map_user_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @__bio_map_user_iov(%struct.request_queue* %0, %struct.block_device* %1, %struct.sg_iovec* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca %struct.sg_iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.page**, align 8
  %18 = alloca %struct.bio*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %8, align 8
  store %struct.block_device* %1, %struct.block_device** %9, align 8
  store %struct.sg_iovec* %2, %struct.sg_iovec** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %86, %6
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %33
  %38 = load %struct.sg_iovec*, %struct.sg_iovec** %10, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %38, i64 %40
  %42 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %22, align 8
  %44 = load %struct.sg_iovec*, %struct.sg_iovec** %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %44, i64 %46
  %48 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %23, align 8
  %50 = load i64, i64* %22, align 8
  %51 = load i64, i64* %23, align 8
  %52 = add i64 %50, %51
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = add i64 %52, %53
  %55 = sub i64 %54, 1
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = lshr i64 %55, %56
  store i64 %57, i64* %24, align 8
  %58 = load i64, i64* %22, align 8
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  store i64 %60, i64* %25, align 8
  %61 = load i64, i64* %24, align 8
  %62 = load i64, i64* %25, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %37
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.bio* @ERR_PTR(i32 %66)
  store %struct.bio* %67, %struct.bio** %7, align 8
  br label %287

68:                                               ; preds = %37
  %69 = load i64, i64* %24, align 8
  %70 = load i64, i64* %25, align 8
  %71 = sub i64 %69, %70
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  %76 = load i64, i64* %22, align 8
  %77 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %78 = call i64 @queue_dma_alignment(%struct.request_queue* %77)
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  %84 = call %struct.bio* @ERR_PTR(i32 %83)
  store %struct.bio* %84, %struct.bio** %7, align 8
  br label %287

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %33

89:                                               ; preds = %33
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.bio* @ERR_PTR(i32 %94)
  store %struct.bio* %95, %struct.bio** %7, align 8
  br label %287

96:                                               ; preds = %89
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call %struct.bio* @bio_kmalloc(i32 %97, i32 %98)
  store %struct.bio* %99, %struct.bio** %18, align 8
  %100 = load %struct.bio*, %struct.bio** %18, align 8
  %101 = icmp ne %struct.bio* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  %105 = call %struct.bio* @ERR_PTR(i32 %104)
  store %struct.bio* %105, %struct.bio** %7, align 8
  br label %287

106:                                              ; preds = %96
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call %struct.page** @kcalloc(i32 %109, i32 8, i32 %110)
  store %struct.page** %111, %struct.page*** %17, align 8
  %112 = load %struct.page**, %struct.page*** %17, align 8
  %113 = icmp ne %struct.page** %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  br label %280

115:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %230, %115
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %233

120:                                              ; preds = %116
  %121 = load %struct.sg_iovec*, %struct.sg_iovec** %10, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %121, i64 %123
  %125 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %26, align 8
  %127 = load %struct.sg_iovec*, %struct.sg_iovec** %10, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %127, i64 %129
  %131 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %27, align 8
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* %27, align 8
  %135 = add i64 %133, %134
  %136 = load i64, i64* @PAGE_SIZE, align 8
  %137 = add i64 %135, %136
  %138 = sub i64 %137, 1
  %139 = load i64, i64* @PAGE_SHIFT, align 8
  %140 = lshr i64 %138, %139
  store i64 %140, i64* %28, align 8
  %141 = load i64, i64* %26, align 8
  %142 = load i64, i64* @PAGE_SHIFT, align 8
  %143 = lshr i64 %141, %142
  store i64 %143, i64* %29, align 8
  %144 = load i64, i64* %28, align 8
  %145 = load i64, i64* %29, align 8
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %30, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %30, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %31, align 4
  %151 = load i64, i64* %26, align 8
  %152 = load i32, i32* %30, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.page**, %struct.page*** %17, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.page*, %struct.page** %154, i64 %156
  %158 = call i32 @get_user_pages_fast(i64 %151, i32 %152, i32 %153, %struct.page** %157)
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %30, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %120
  %163 = load i32, i32* @EFAULT, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %20, align 4
  br label %256

165:                                              ; preds = %120
  %166 = load i64, i64* %26, align 8
  %167 = load i64, i64* @PAGE_MASK, align 8
  %168 = xor i64 %167, -1
  %169 = and i64 %166, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %19, align 4
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %212, %165
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %31, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %215

176:                                              ; preds = %172
  %177 = load i64, i64* @PAGE_SIZE, align 8
  %178 = load i32, i32* %21, align 4
  %179 = sext i32 %178 to i64
  %180 = sub i64 %177, %179
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %32, align 4
  %182 = load i64, i64* %27, align 8
  %183 = icmp ule i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %215

185:                                              ; preds = %176
  %186 = load i32, i32* %32, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %27, align 8
  %189 = icmp ugt i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i64, i64* %27, align 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %32, align 4
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %195 = load %struct.bio*, %struct.bio** %18, align 8
  %196 = load %struct.page**, %struct.page*** %17, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.page*, %struct.page** %196, i64 %198
  %200 = load %struct.page*, %struct.page** %199, align 8
  %201 = load i32, i32* %32, align 4
  %202 = load i32, i32* %21, align 4
  %203 = call i32 @bio_add_pc_page(%struct.request_queue* %194, %struct.bio* %195, %struct.page* %200, i32 %201, i32 %202)
  %204 = load i32, i32* %32, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %193
  br label %215

207:                                              ; preds = %193
  %208 = load i32, i32* %32, align 4
  %209 = zext i32 %208 to i64
  %210 = load i64, i64* %27, align 8
  %211 = sub i64 %210, %209
  store i64 %211, i64* %27, align 8
  store i32 0, i32* %21, align 4
  br label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %172

215:                                              ; preds = %206, %184, %172
  %216 = load i32, i32* %15, align 4
  store i32 %216, i32* %19, align 4
  br label %217

217:                                              ; preds = %221, %215
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %31, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %217
  %222 = load %struct.page**, %struct.page*** %17, align 8
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds %struct.page*, %struct.page** %222, i64 %225
  %227 = load %struct.page*, %struct.page** %226, align 8
  %228 = call i32 @page_cache_release(%struct.page* %227)
  br label %217

229:                                              ; preds = %217
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %14, align 4
  br label %116

233:                                              ; preds = %116
  %234 = load %struct.page**, %struct.page*** %17, align 8
  %235 = call i32 @kfree(%struct.page** %234)
  %236 = load i32, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* @BIO_RW, align 4
  %240 = shl i32 1, %239
  %241 = load %struct.bio*, %struct.bio** %18, align 8
  %242 = getelementptr inbounds %struct.bio, %struct.bio* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %238, %233
  %246 = load %struct.block_device*, %struct.block_device** %9, align 8
  %247 = load %struct.bio*, %struct.bio** %18, align 8
  %248 = getelementptr inbounds %struct.bio, %struct.bio* %247, i32 0, i32 2
  store %struct.block_device* %246, %struct.block_device** %248, align 8
  %249 = load i32, i32* @BIO_USER_MAPPED, align 4
  %250 = shl i32 1, %249
  %251 = load %struct.bio*, %struct.bio** %18, align 8
  %252 = getelementptr inbounds %struct.bio, %struct.bio* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %255, %struct.bio** %7, align 8
  br label %287

256:                                              ; preds = %162
  store i32 0, i32* %14, align 4
  br label %257

257:                                              ; preds = %276, %256
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %279

261:                                              ; preds = %257
  %262 = load %struct.page**, %struct.page*** %17, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.page*, %struct.page** %262, i64 %264
  %266 = load %struct.page*, %struct.page** %265, align 8
  %267 = icmp ne %struct.page* %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %261
  br label %279

269:                                              ; preds = %261
  %270 = load %struct.page**, %struct.page*** %17, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.page*, %struct.page** %270, i64 %272
  %274 = load %struct.page*, %struct.page** %273, align 8
  %275 = call i32 @page_cache_release(%struct.page* %274)
  br label %276

276:                                              ; preds = %269
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %14, align 4
  br label %257

279:                                              ; preds = %268, %257
  br label %280

280:                                              ; preds = %279, %114
  %281 = load %struct.page**, %struct.page*** %17, align 8
  %282 = call i32 @kfree(%struct.page** %281)
  %283 = load %struct.bio*, %struct.bio** %18, align 8
  %284 = call i32 @bio_put(%struct.bio* %283)
  %285 = load i32, i32* %20, align 4
  %286 = call %struct.bio* @ERR_PTR(i32 %285)
  store %struct.bio* %286, %struct.bio** %7, align 8
  br label %287

287:                                              ; preds = %280, %245, %102, %92, %81, %64
  %288 = load %struct.bio*, %struct.bio** %7, align 8
  ret %struct.bio* %288
}

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local i64 @queue_dma_alignment(%struct.request_queue*) #1

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local %struct.page** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @bio_add_pc_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
