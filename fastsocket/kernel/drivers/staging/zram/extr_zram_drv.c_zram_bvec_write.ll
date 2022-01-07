; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_bvec_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_bvec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, %struct.page* }
%struct.page = type { i32 }
%struct.bio_vec = type { i32, i64, %struct.page* }
%struct.zobj_header = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error allocating temp memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ZRAM_ZERO = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@LZO_E_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Compression failed! err=%d\0A\00", align 1
@max_zpage_size = common dso_local global i64 0, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Error allocating memory for incompressible page: %u\0A\00", align 1
@ZRAM_UNCOMPRESSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Error allocating memory for compressed page: %u, size=%zu\0A\00", align 1
@KM_USER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, %struct.bio_vec*, i64, i32)* @zram_bvec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_bvec_write(%struct.zram* %0, %struct.bio_vec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zram*, align 8
  %7 = alloca %struct.bio_vec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.zobj_header*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.zram* %0, %struct.zram** %6, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %19, align 8
  %20 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %20, i32 0, i32 2
  %22 = load %struct.page*, %struct.page** %21, align 8
  store %struct.page* %22, %struct.page** %14, align 8
  %23 = load %struct.zram*, %struct.zram** %6, align 8
  %24 = getelementptr inbounds %struct.zram, %struct.zram* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %18, align 8
  %26 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %27 = call i64 @is_partial_io(%struct.bio_vec* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i32 %30, i32 %31)
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %275

39:                                               ; preds = %29
  %40 = load %struct.zram*, %struct.zram** %6, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @zram_read_before_write(%struct.zram* %40, i8* %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %19, align 8
  %48 = call i32 @kfree(i8* %47)
  br label %275

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.zram*, %struct.zram** %6, align 8
  %52 = getelementptr inbounds %struct.zram, %struct.zram* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %struct.page*, %struct.page** %56, align 8
  %58 = icmp ne %struct.page* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %50
  %60 = load %struct.zram*, %struct.zram** %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @ZRAM_ZERO, align 4
  %63 = call i32 @zram_test_flag(%struct.zram* %60, i64 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %50
  %66 = load %struct.zram*, %struct.zram** %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @zram_free_page(%struct.zram* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.page*, %struct.page** %14, align 8
  %71 = load i32, i32* @KM_USER0, align 4
  %72 = call i8* @kmap_atomic(%struct.page* %70, i32 %71)
  store i8* %72, i8** %16, align 8
  %73 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %74 = call i64 @is_partial_io(%struct.bio_vec* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load i8*, i8** %19, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8*, i8** %16, align 8
  %82 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %83 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %88 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcpy(i8* %80, i8* %86, i64 %89)
  br label %93

91:                                               ; preds = %69
  %92 = load i8*, i8** %16, align 8
  store i8* %92, i8** %19, align 8
  br label %93

93:                                               ; preds = %91, %76
  %94 = load i8*, i8** %19, align 8
  %95 = call i64 @page_zero_filled(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load i8*, i8** %16, align 8
  %99 = load i32, i32* @KM_USER0, align 4
  %100 = call i32 @kunmap_atomic(i8* %98, i32 %99)
  %101 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %102 = call i64 @is_partial_io(%struct.bio_vec* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i8*, i8** %19, align 8
  %106 = call i32 @kfree(i8* %105)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load %struct.zram*, %struct.zram** %6, align 8
  %109 = getelementptr inbounds %struct.zram, %struct.zram* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  %111 = call i32 @zram_stat_inc(i32* %110)
  %112 = load %struct.zram*, %struct.zram** %6, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* @ZRAM_ZERO, align 4
  %115 = call i32 @zram_set_flag(%struct.zram* %112, i64 %113, i32 %114)
  store i32 0, i32* %10, align 4
  br label %275

116:                                              ; preds = %93
  %117 = load i8*, i8** %19, align 8
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = load i8*, i8** %18, align 8
  %120 = load %struct.zram*, %struct.zram** %6, align 8
  %121 = getelementptr inbounds %struct.zram, %struct.zram* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @lzo1x_1_compress(i8* %117, i32 %118, i8* %119, i64* %12, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i8*, i8** %16, align 8
  %125 = load i32, i32* @KM_USER0, align 4
  %126 = call i32 @kunmap_atomic(i8* %124, i32 %125)
  %127 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %128 = call i64 @is_partial_io(%struct.bio_vec* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load i8*, i8** %19, align 8
  %132 = call i32 @kfree(i8* %131)
  br label %133

133:                                              ; preds = %130, %116
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @LZO_E_OK, align 4
  %136 = icmp ne i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %275

143:                                              ; preds = %133
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @max_zpage_size, align 8
  %146 = icmp ugt i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %187

150:                                              ; preds = %143
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %12, align 8
  %153 = load i32, i32* @GFP_NOIO, align 4
  %154 = load i32, i32* @__GFP_HIGHMEM, align 4
  %155 = or i32 %153, %154
  %156 = call %struct.page* @alloc_page(i32 %155)
  store %struct.page* %156, %struct.page** %15, align 8
  %157 = load %struct.page*, %struct.page** %15, align 8
  %158 = icmp ne %struct.page* %157, null
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i64 @unlikely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %150
  %164 = load i64, i64* %8, align 8
  %165 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %164)
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %10, align 4
  br label %275

168:                                              ; preds = %150
  store i64 0, i64* %11, align 8
  %169 = load %struct.zram*, %struct.zram** %6, align 8
  %170 = load i64, i64* %8, align 8
  %171 = load i32, i32* @ZRAM_UNCOMPRESSED, align 4
  %172 = call i32 @zram_set_flag(%struct.zram* %169, i64 %170, i32 %171)
  %173 = load %struct.zram*, %struct.zram** %6, align 8
  %174 = getelementptr inbounds %struct.zram, %struct.zram* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 4
  %176 = call i32 @zram_stat_inc(i32* %175)
  %177 = load %struct.page*, %struct.page** %15, align 8
  %178 = load %struct.zram*, %struct.zram** %6, align 8
  %179 = getelementptr inbounds %struct.zram, %struct.zram* %178, i32 0, i32 2
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  store %struct.page* %177, %struct.page** %183, align 8
  %184 = load %struct.page*, %struct.page** %14, align 8
  %185 = load i32, i32* @KM_USER0, align 4
  %186 = call i8* @kmap_atomic(%struct.page* %184, i32 %185)
  store i8* %186, i8** %18, align 8
  br label %211

187:                                              ; preds = %143
  %188 = load %struct.zram*, %struct.zram** %6, align 8
  %189 = getelementptr inbounds %struct.zram, %struct.zram* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %12, align 8
  %192 = add i64 %191, 8
  %193 = load %struct.zram*, %struct.zram** %6, align 8
  %194 = getelementptr inbounds %struct.zram, %struct.zram* %193, i32 0, i32 2
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32, i32* @GFP_NOIO, align 4
  %200 = load i32, i32* @__GFP_HIGHMEM, align 4
  %201 = or i32 %199, %200
  %202 = call i64 @xv_malloc(i32 %190, i64 %192, %struct.page** %198, i64* %11, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %187
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* %12, align 8
  %207 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %205, i64 %206)
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %10, align 4
  br label %275

210:                                              ; preds = %187
  br label %211

211:                                              ; preds = %210, %168
  %212 = load i64, i64* %11, align 8
  %213 = load %struct.zram*, %struct.zram** %6, align 8
  %214 = getelementptr inbounds %struct.zram, %struct.zram* %213, i32 0, i32 2
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = load i64, i64* %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i64 %212, i64* %218, align 8
  %219 = load %struct.zram*, %struct.zram** %6, align 8
  %220 = getelementptr inbounds %struct.zram, %struct.zram* %219, i32 0, i32 2
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load %struct.page*, %struct.page** %224, align 8
  %226 = load i32, i32* @KM_USER1, align 4
  %227 = call i8* @kmap_atomic(%struct.page* %225, i32 %226)
  %228 = load %struct.zram*, %struct.zram** %6, align 8
  %229 = getelementptr inbounds %struct.zram, %struct.zram* %228, i32 0, i32 2
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = load i64, i64* %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i8, i8* %227, i64 %234
  store i8* %235, i8** %17, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = load i8*, i8** %18, align 8
  %238 = load i64, i64* %12, align 8
  %239 = call i32 @memcpy(i8* %236, i8* %237, i64 %238)
  %240 = load i8*, i8** %17, align 8
  %241 = load i32, i32* @KM_USER1, align 4
  %242 = call i32 @kunmap_atomic(i8* %240, i32 %241)
  %243 = load %struct.zram*, %struct.zram** %6, align 8
  %244 = load i64, i64* %8, align 8
  %245 = load i32, i32* @ZRAM_UNCOMPRESSED, align 4
  %246 = call i32 @zram_test_flag(%struct.zram* %243, i64 %244, i32 %245)
  %247 = call i64 @unlikely(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %211
  %250 = load i8*, i8** %18, align 8
  %251 = load i32, i32* @KM_USER0, align 4
  %252 = call i32 @kunmap_atomic(i8* %250, i32 %251)
  br label %253

253:                                              ; preds = %249, %211
  %254 = load %struct.zram*, %struct.zram** %6, align 8
  %255 = load %struct.zram*, %struct.zram** %6, align 8
  %256 = getelementptr inbounds %struct.zram, %struct.zram* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 3
  %258 = load i64, i64* %12, align 8
  %259 = call i32 @zram_stat64_add(%struct.zram* %254, i32* %257, i64 %258)
  %260 = load %struct.zram*, %struct.zram** %6, align 8
  %261 = getelementptr inbounds %struct.zram, %struct.zram* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = call i32 @zram_stat_inc(i32* %262)
  %264 = load i64, i64* %12, align 8
  %265 = load i32, i32* @PAGE_SIZE, align 4
  %266 = sdiv i32 %265, 2
  %267 = sext i32 %266 to i64
  %268 = icmp ule i64 %264, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %253
  %270 = load %struct.zram*, %struct.zram** %6, align 8
  %271 = getelementptr inbounds %struct.zram, %struct.zram* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  %273 = call i32 @zram_stat_inc(i32* %272)
  br label %274

274:                                              ; preds = %269, %253
  store i32 0, i32* %5, align 4
  br label %286

275:                                              ; preds = %204, %163, %140, %107, %46, %35
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load %struct.zram*, %struct.zram** %6, align 8
  %280 = load %struct.zram*, %struct.zram** %6, align 8
  %281 = getelementptr inbounds %struct.zram, %struct.zram* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = call i32 @zram_stat64_inc(%struct.zram* %279, i32* %282)
  br label %284

284:                                              ; preds = %278, %275
  %285 = load i32, i32* %10, align 4
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %284, %274
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local i64 @is_partial_io(%struct.bio_vec*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @zram_read_before_write(%struct.zram*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @zram_test_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @zram_free_page(%struct.zram*, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @page_zero_filled(i8*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @zram_stat_inc(i32*) #1

declare dso_local i32 @zram_set_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @lzo1x_1_compress(i8*, i32, i8*, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @xv_malloc(i32, i64, %struct.page**, i64*, i32) #1

declare dso_local i32 @zram_stat64_add(%struct.zram*, i32*, i64) #1

declare dso_local i32 @zram_stat64_inc(%struct.zram*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
