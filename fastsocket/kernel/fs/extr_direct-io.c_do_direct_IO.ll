; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_do_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_do_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32, i32 }
%struct.dio_submit = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.buffer_head*)* @do_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_direct_IO(%struct.dio* %0, %struct.dio_submit* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dio*, align 8
  %6 = alloca %struct.dio_submit*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.dio* %0, %struct.dio** %5, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %20 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %21 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = lshr i32 %23, %24
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %27 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %304, %3
  %30 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %31 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %34 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %307

37:                                               ; preds = %29
  %38 = load %struct.dio*, %struct.dio** %5, align 8
  %39 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %40 = call %struct.page* @dio_get_page(%struct.dio* %38, %struct.dio_submit* %39)
  store %struct.page* %40, %struct.page** %10, align 8
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = call i64 @IS_ERR(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i32 @PTR_ERR(%struct.page* %45)
  store i32 %46, i32* %12, align 4
  br label %308

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %303, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %304

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %13, align 4
  %56 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %57 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %138

60:                                               ; preds = %52
  %61 = load %struct.dio*, %struct.dio** %5, align 8
  %62 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = call i32 @get_more_blocks(%struct.dio* %61, %struct.dio_submit* %62, %struct.buffer_head* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.page*, %struct.page** %10, align 8
  %69 = call i32 @page_cache_release(%struct.page* %68)
  br label %308

70:                                               ; preds = %60
  %71 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %72 = call i32 @buffer_mapped(%struct.buffer_head* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %139

75:                                               ; preds = %70
  %76 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %80 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %78, %81
  %83 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %84 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %89 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %87, %90
  %92 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %93 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %95 = call i64 @buffer_new(%struct.buffer_head* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %75
  %98 = load %struct.dio*, %struct.dio** %5, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %100 = call i32 @clean_blockdev_aliases(%struct.dio* %98, %struct.buffer_head* %99)
  br label %101

101:                                              ; preds = %97, %75
  %102 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %103 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %139

107:                                              ; preds = %101
  %108 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %109 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 1, %110
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %17, align 8
  %114 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %115 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %17, align 8
  %118 = and i64 %116, %117
  store i64 %118, i64* %18, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %120 = call i64 @buffer_new(%struct.buffer_head* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %107
  %123 = load i64, i64* %18, align 8
  %124 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %125 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  br label %130

130:                                              ; preds = %122, %107
  %131 = load i64, i64* %18, align 8
  %132 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %133 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = sub i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 8
  br label %138

138:                                              ; preds = %130, %52
  br label %139

139:                                              ; preds = %138, %106, %74
  %140 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %141 = call i32 @buffer_mapped(%struct.buffer_head* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %188, label %143

143:                                              ; preds = %139
  %144 = load %struct.dio*, %struct.dio** %5, align 8
  %145 = getelementptr inbounds %struct.dio, %struct.dio* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @WRITE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load %struct.page*, %struct.page** %10, align 8
  %152 = call i32 @page_cache_release(%struct.page* %151)
  %153 = load i32, i32* @ENOTBLK, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %310

155:                                              ; preds = %143
  %156 = load %struct.dio*, %struct.dio** %5, align 8
  %157 = getelementptr inbounds %struct.dio, %struct.dio* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @i_size_read(i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = shl i32 1, %160
  %162 = call i64 @ALIGN(i32 %159, i32 %161)
  store i64 %162, i64* %19, align 8
  %163 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %164 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %19, align 8
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = ashr i64 %166, %168
  %170 = icmp uge i64 %165, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %155
  %172 = load %struct.page*, %struct.page** %10, align 8
  %173 = call i32 @page_cache_release(%struct.page* %172)
  br label %308

174:                                              ; preds = %155
  %175 = load %struct.page*, %struct.page** %10, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %8, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* %8, align 4
  %180 = shl i32 1, %179
  %181 = call i32 @zero_user(%struct.page* %175, i32 %178, i32 %180)
  %182 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %183 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %183, align 8
  %186 = load i32, i32* %11, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %285

188:                                              ; preds = %139
  %189 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %190 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %195 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  br label %199

199:                                              ; preds = %193, %188
  %200 = phi i1 [ false, %188 ], [ %198, %193 ]
  %201 = zext i1 %200 to i32
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.dio*, %struct.dio** %5, align 8
  %206 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %207 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %208 = call i32 @dio_zero_block(%struct.dio* %205, %struct.dio_submit* %206, i32 0, %struct.buffer_head* %207)
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %211 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* @PAGE_SIZE, align 4
  %214 = load i32, i32* %13, align 4
  %215 = sub i32 %213, %214
  %216 = load i32, i32* %8, align 4
  %217 = lshr i32 %215, %216
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp ugt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %221, %209
  %224 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %225 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %228 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = sub i64 %226, %229
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %16, align 4
  %234 = icmp ugt i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %223
  %236 = load i32, i32* %16, align 4
  store i32 %236, i32* %15, align 4
  br label %237

237:                                              ; preds = %235, %223
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %8, align 4
  %240 = shl i32 %238, %239
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %14, align 4
  %242 = icmp eq i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @BUG_ON(i32 %243)
  %245 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %246 = call i32 @buffer_boundary(%struct.buffer_head* %245)
  %247 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %248 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %247, i32 0, i32 7
  store i32 %246, i32* %248, align 4
  %249 = load %struct.dio*, %struct.dio** %5, align 8
  %250 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %251 = load %struct.page*, %struct.page** %10, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %255 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %259 = call i32 @submit_page_section(%struct.dio* %249, %struct.dio_submit* %250, %struct.page* %251, i32 %252, i32 %253, i64 %257, %struct.buffer_head* %258)
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %237
  %263 = load %struct.page*, %struct.page** %10, align 8
  %264 = call i32 @page_cache_release(%struct.page* %263)
  br label %308

265:                                              ; preds = %237
  %266 = load i32, i32* %15, align 4
  %267 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %268 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %15, align 4
  %272 = zext i32 %271 to i64
  %273 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %274 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, %272
  store i64 %276, i64* %274, align 8
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %11, align 4
  %279 = add i32 %278, %277
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %15, align 4
  %281 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %282 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = sub i32 %283, %280
  store i32 %284, i32* %282, align 8
  br label %285

285:                                              ; preds = %265, %174
  %286 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %287 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %290 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = icmp ugt i64 %288, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 @BUG_ON(i32 %293)
  %295 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %296 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %299 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %297, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %285
  br label %304

303:                                              ; preds = %285
  br label %48

304:                                              ; preds = %302, %48
  %305 = load %struct.page*, %struct.page** %10, align 8
  %306 = call i32 @page_cache_release(%struct.page* %305)
  store i32 0, i32* %11, align 4
  br label %29

307:                                              ; preds = %29
  br label %308

308:                                              ; preds = %307, %262, %171, %67, %44
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %4, align 4
  br label %310

310:                                              ; preds = %308, %150
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

declare dso_local %struct.page* @dio_get_page(%struct.dio*, %struct.dio_submit*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @get_more_blocks(%struct.dio*, %struct.dio_submit*, %struct.buffer_head*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clean_blockdev_aliases(%struct.dio*, %struct.buffer_head*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dio_zero_block(%struct.dio*, %struct.dio_submit*, i32, %struct.buffer_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_boundary(%struct.buffer_head*) #1

declare dso_local i32 @submit_page_section(%struct.dio*, %struct.dio_submit*, %struct.page*, i32, i32, i64, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
