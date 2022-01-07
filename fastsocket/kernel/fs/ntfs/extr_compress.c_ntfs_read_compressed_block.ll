; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_compress.c_ntfs_read_compressed_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_compress.c_ntfs_read_compressed_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i32*, i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i64, %struct.TYPE_13__, i32, %struct.TYPE_12__, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i64, i8, %struct.super_block* }
%struct.super_block = type { i64, i8 }
%struct.buffer_head = type { i64, i32*, i32, %struct.address_space* }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Entering, page->index = 0x%lx, cb_size = 0x%x, nr_pages = %i.\00", align 1
@AT_DATA = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate internal buffers.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Compressed read outside i_size - truncated?\00", align 1
@LCN_RL_NOT_MAPPED = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Reading vcn = 0x%llx, lcn = 0x%llx.\00", align 1
@LCN_HOLE = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"block = 0x%x.\00", align 1
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [81 x i8] c"Buffer is unlocked but not uptodate! Unplugging the disk queue and rescheduling.\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Buffer is now uptodate. Good.\00", align 1
@ntfs_cb_lock = common dso_local global i32 0, align 4
@ntfs_compression_buffer = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Successfully read the compression block.\00", align 1
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Found sparse compression block.\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Found uncompressed compression block.\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Found compressed compression block.\00", align 1
@.str.11 = private unnamed_addr constant [93 x i8] c"ntfs_decompress() failed in inode 0x%lx with error code %i. Skipping this compression block.\00", align 1
@.str.12 = private unnamed_addr constant [96 x i8] c"Still have pages left! Terminating them with extreme prejudice.  Inode 0x%lx, page index 0x%lx.\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed. Returning error code %s.\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"EOVERFLOW\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"EIO\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"unkown error\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"IO error while reading compressed data.\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"ntfs_map_runlist() failed. Cannot read compression block.\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"ntfs_rl_vcn_to_lcn() failed. Cannot read compression block.\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"getblk() failed. Cannot read compression block.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_read_compressed_block(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.buffer_head**, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8, align 1
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.page**, align 8
  %42 = alloca i8, align 1
  %43 = alloca i32, align 4
  %44 = alloca %struct.buffer_head*, align 8
  %45 = alloca %struct.buffer_head*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32*, align 8
  %49 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %50 = load %struct.page*, %struct.page** %3, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 3
  %52 = load %struct.address_space*, %struct.address_space** %51, align 8
  store %struct.address_space* %52, %struct.address_space** %6, align 8
  %53 = load %struct.address_space*, %struct.address_space** %6, align 8
  %54 = getelementptr inbounds %struct.address_space, %struct.address_space* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_16__* @NTFS_I(i32 %55)
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %7, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %8, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load %struct.super_block*, %struct.super_block** %61, align 8
  store %struct.super_block* %62, %struct.super_block** %9, align 8
  %63 = load %struct.super_block*, %struct.super_block** %9, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  %66 = load %struct.super_block*, %struct.super_block** %9, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 8
  store i8 %68, i8* %13, align 1
  %69 = load %struct.page*, %struct.page** %3, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %19, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %20, align 8
  %77 = load i64, i64* %20, align 8
  %78 = sub i64 %77, 1
  store i64 %78, i64* %21, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = load i64, i64* %21, align 8
  %83 = xor i64 %82, -1
  %84 = and i64 %81, %83
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = lshr i64 %84, %87
  store i64 %88, i64* %24, align 8
  %89 = load i64, i64* %19, align 8
  %90 = add i64 %89, 1
  %91 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %92 = shl i64 %90, %91
  %93 = load i64, i64* %20, align 8
  %94 = add i64 %92, %93
  %95 = sub i64 %94, 1
  %96 = load i64, i64* %21, align 8
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = lshr i64 %98, %101
  store i64 %102, i64* %25, align 8
  %103 = load i64, i64* %25, align 8
  %104 = load i64, i64* %24, align 8
  %105 = sub i64 %103, %104
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = shl i64 %105, %108
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = lshr i64 %109, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %26, align 4
  %117 = load i64, i64* %25, align 8
  %118 = load i64, i64* %24, align 8
  %119 = sub i64 %117, %118
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = shl i64 %119, %122
  %124 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %125 = lshr i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %27, align 4
  store i32 0, i32* %40, align 4
  store i8 0, i8* %42, align 1
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %20, align 8
  %129 = load i32, i32* %27, align 4
  %130 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %127, i64 %128, i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AT_DATA, align 8
  %135 = icmp ne i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @BUG_ON(i32 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @BUG_ON(i32 %140)
  %142 = load i32, i32* %27, align 4
  %143 = zext i32 %142 to i64
  %144 = mul i64 %143, 8
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* @GFP_NOFS, align 4
  %147 = call %struct.page** @kmalloc(i32 %145, i32 %146)
  store %struct.page** %147, %struct.page*** %41, align 8
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* %12, align 8
  %150 = udiv i64 %148, %149
  %151 = mul i64 %150, 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %38, align 4
  %153 = load i32, i32* %38, align 4
  %154 = load i32, i32* @GFP_NOFS, align 4
  %155 = call %struct.page** @kmalloc(i32 %153, i32 %154)
  %156 = bitcast %struct.page** %155 to %struct.buffer_head**
  store %struct.buffer_head** %156, %struct.buffer_head*** %17, align 8
  %157 = load %struct.page**, %struct.page*** %41, align 8
  %158 = icmp ne %struct.page** %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %1
  %160 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %161 = icmp ne %struct.buffer_head** %160, null
  %162 = xor i1 %161, true
  br label %163

163:                                              ; preds = %159, %1
  %164 = phi i1 [ true, %1 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %163
  %169 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %170 = bitcast %struct.buffer_head** %169 to %struct.page**
  %171 = call i32 @kfree(%struct.page** %170)
  %172 = load %struct.page**, %struct.page*** %41, align 8
  %173 = call i32 @kfree(%struct.page** %172)
  %174 = load %struct.page*, %struct.page** %3, align 8
  %175 = call i32 @unlock_page(%struct.page* %174)
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load %struct.super_block*, %struct.super_block** %177, align 8
  %179 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %1137

182:                                              ; preds = %163
  %183 = load i64, i64* %24, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = shl i64 %183, %186
  %188 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %189 = lshr i64 %187, %188
  store i64 %189, i64* %18, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %18, align 8
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %28, align 4
  %194 = load %struct.page*, %struct.page** %3, align 8
  %195 = load %struct.page**, %struct.page*** %41, align 8
  %196 = load i32, i32* %28, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.page*, %struct.page** %195, i64 %197
  store %struct.page* %194, %struct.page** %198, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 6
  %201 = load i64, i64* %11, align 8
  %202 = call i32 @read_lock_irqsave(i32* %200, i64 %201)
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %204 = call i32 @VFS_I(%struct.TYPE_16__* %203)
  %205 = call i32 @i_size_read(i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %5, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 6
  %211 = load i64, i64* %11, align 8
  %212 = call i32 @read_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %215 = add nsw i32 %213, %214
  %216 = sub nsw i32 %215, 1
  %217 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %218 = trunc i64 %217 to i32
  %219 = ashr i32 %216, %218
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* %18, align 8
  %222 = sub i64 %220, %221
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %29, align 4
  %224 = load i32, i32* %28, align 4
  %225 = load i32, i32* %29, align 4
  %226 = icmp uge i32 %224, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %182
  %228 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %229 = bitcast %struct.buffer_head** %228 to %struct.page**
  %230 = call i32 @kfree(%struct.page** %229)
  %231 = load %struct.page**, %struct.page*** %41, align 8
  %232 = call i32 @kfree(%struct.page** %231)
  %233 = load %struct.page*, %struct.page** %3, align 8
  %234 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %235 = call i32 @zero_user(%struct.page* %233, i32 0, i32 %234)
  %236 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %237 = load %struct.page*, %struct.page** %3, align 8
  %238 = call i32 @SetPageUptodate(%struct.page* %237)
  %239 = load %struct.page*, %struct.page** %3, align 8
  %240 = call i32 @unlock_page(%struct.page* %239)
  store i32 0, i32* %2, align 4
  br label %1137

241:                                              ; preds = %182
  %242 = load i32, i32* %27, align 4
  %243 = load i32, i32* %29, align 4
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i32, i32* %27, align 4
  store i32 %246, i32* %29, align 4
  br label %247

247:                                              ; preds = %245, %241
  store i32 0, i32* %32, align 4
  br label %248

248:                                              ; preds = %299, %247
  %249 = load i32, i32* %32, align 4
  %250 = load i32, i32* %29, align 4
  %251 = icmp ult i32 %249, %250
  br i1 %251, label %252, label %304

252:                                              ; preds = %248
  %253 = load i32, i32* %32, align 4
  %254 = load i32, i32* %28, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = load %struct.address_space*, %struct.address_space** %6, align 8
  %258 = load i64, i64* %18, align 8
  %259 = call %struct.page* @grab_cache_page_nowait(%struct.address_space* %257, i64 %258)
  %260 = load %struct.page**, %struct.page*** %41, align 8
  %261 = load i32, i32* %32, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.page*, %struct.page** %260, i64 %262
  store %struct.page* %259, %struct.page** %263, align 8
  br label %264

264:                                              ; preds = %256, %252
  %265 = load %struct.page**, %struct.page*** %41, align 8
  %266 = load i32, i32* %32, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.page*, %struct.page** %265, i64 %267
  %269 = load %struct.page*, %struct.page** %268, align 8
  store %struct.page* %269, %struct.page** %3, align 8
  %270 = load %struct.page*, %struct.page** %3, align 8
  %271 = icmp ne %struct.page* %270, null
  br i1 %271, label %272, label %298

272:                                              ; preds = %264
  %273 = load %struct.page*, %struct.page** %3, align 8
  %274 = call i32 @PageDirty(%struct.page* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %289, label %276

276:                                              ; preds = %272
  %277 = load %struct.page*, %struct.page** %3, align 8
  %278 = call i32 @PageUptodate(%struct.page* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load %struct.page*, %struct.page** %3, align 8
  %282 = call i64 @PageError(%struct.page* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %280, %276
  %285 = load %struct.page*, %struct.page** %3, align 8
  %286 = call i32 @ClearPageError(%struct.page* %285)
  %287 = load %struct.page*, %struct.page** %3, align 8
  %288 = call i32 @kmap(%struct.page* %287)
  br label %299

289:                                              ; preds = %280, %272
  %290 = load %struct.page*, %struct.page** %3, align 8
  %291 = call i32 @unlock_page(%struct.page* %290)
  %292 = load %struct.page*, %struct.page** %3, align 8
  %293 = call i32 @page_cache_release(%struct.page* %292)
  %294 = load %struct.page**, %struct.page*** %41, align 8
  %295 = load i32, i32* %32, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.page*, %struct.page** %294, i64 %296
  store %struct.page* null, %struct.page** %297, align 8
  br label %298

298:                                              ; preds = %289, %264
  br label %299

299:                                              ; preds = %298, %284
  %300 = load i32, i32* %32, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %32, align 4
  %302 = load i64, i64* %18, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %18, align 8
  br label %248

304:                                              ; preds = %248
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  store i32 %309, i32* %33, align 4
  br label %310

310:                                              ; preds = %973, %304
  %311 = load i32, i32* %26, align 4
  %312 = add i32 %311, -1
  store i32 %312, i32* %26, align 4
  store i32 0, i32* %39, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %313 = load i64, i64* %24, align 8
  store i64 %313, i64* %22, align 8
  %314 = load i32, i32* %33, align 4
  %315 = zext i32 %314 to i64
  %316 = load i64, i64* %24, align 8
  %317 = add i64 %316, %315
  store i64 %317, i64* %24, align 8
  br label %318

318:                                              ; preds = %448, %310
  %319 = load i64, i64* %22, align 8
  %320 = load i64, i64* %24, align 8
  %321 = icmp ult i64 %319, %320
  br i1 %321, label %322, label %451

322:                                              ; preds = %318
  store i32 0, i32* %43, align 4
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %324 = icmp ne %struct.TYPE_14__* %323, null
  br i1 %324, label %335, label %325

325:                                              ; preds = %322
  br label %326

326:                                              ; preds = %400, %325
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 0
  %330 = call i32 @down_read(i32* %329)
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %333, align 8
  store %struct.TYPE_14__* %334, %struct.TYPE_14__** %10, align 8
  br label %335

335:                                              ; preds = %326, %322
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %337 = icmp ne %struct.TYPE_14__* %336, null
  %338 = zext i1 %337 to i32
  %339 = trunc i32 %338 to i8
  %340 = call i64 @likely(i8 zeroext %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %364

342:                                              ; preds = %335
  br label %343

343:                                              ; preds = %357, %342
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i64 1
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* %22, align 8
  %354 = icmp ule i64 %352, %353
  br label %355

355:                                              ; preds = %348, %343
  %356 = phi i1 [ false, %343 ], [ %354, %348 ]
  br i1 %356, label %357, label %360

357:                                              ; preds = %355
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 1
  store %struct.TYPE_14__* %359, %struct.TYPE_14__** %10, align 8
  br label %343

360:                                              ; preds = %355
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %362 = load i64, i64* %22, align 8
  %363 = call zeroext i8 @ntfs_rl_vcn_to_lcn(%struct.TYPE_14__* %361, i64 %362)
  store i8 %363, i8* %23, align 1
  br label %366

364:                                              ; preds = %335
  %365 = load i8, i8* @LCN_RL_NOT_MAPPED, align 1
  store i8 %365, i8* %23, align 1
  br label %366

366:                                              ; preds = %364, %360
  %367 = load i64, i64* %22, align 8
  %368 = load i8, i8* %23, align 1
  %369 = zext i8 %368 to i64
  %370 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %367, i64 %369)
  %371 = load i8, i8* %23, align 1
  %372 = zext i8 %371 to i32
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %402

374:                                              ; preds = %366
  %375 = load i8, i8* %23, align 1
  %376 = zext i8 %375 to i32
  %377 = load i8, i8* @LCN_HOLE, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %376, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %374
  br label %451

381:                                              ; preds = %374
  %382 = load i32, i32* %43, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %390, label %384

384:                                              ; preds = %381
  %385 = load i8, i8* %23, align 1
  %386 = zext i8 %385 to i32
  %387 = load i8, i8* @LCN_RL_NOT_MAPPED, align 1
  %388 = zext i8 %387 to i32
  %389 = icmp ne i32 %386, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %384, %381
  br label %1079

391:                                              ; preds = %384
  store i32 1, i32* %43, align 4
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 0
  %395 = call i32 @up_read(i32* %394)
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %397 = load i64, i64* %22, align 8
  %398 = call i32 @ntfs_map_runlist(%struct.TYPE_16__* %396, i64 %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %401, label %400

400:                                              ; preds = %391
  br label %326

401:                                              ; preds = %391
  br label %1074

402:                                              ; preds = %366
  %403 = load i8, i8* %23, align 1
  %404 = zext i8 %403 to i32
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = trunc i64 %407 to i32
  %409 = shl i32 %404, %408
  %410 = load i8, i8* %13, align 1
  %411 = zext i8 %410 to i32
  %412 = ashr i32 %409, %411
  store i32 %412, i32* %35, align 4
  %413 = load i32, i32* %35, align 4
  %414 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 1
  %416 = load i8, i8* %415, align 8
  %417 = zext i8 %416 to i32
  %418 = load i8, i8* %13, align 1
  %419 = zext i8 %418 to i32
  %420 = ashr i32 %417, %419
  %421 = add nsw i32 %413, %420
  store i32 %421, i32* %36, align 4
  br label %422

422:                                              ; preds = %442, %402
  %423 = load i32, i32* %35, align 4
  %424 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %423)
  %425 = load %struct.super_block*, %struct.super_block** %9, align 8
  %426 = load i32, i32* %35, align 4
  %427 = call %struct.page* @sb_getblk(%struct.super_block* %425, i32 %426)
  %428 = bitcast %struct.page* %427 to %struct.buffer_head*
  %429 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %430 = load i32, i32* %39, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %429, i64 %431
  store %struct.buffer_head* %428, %struct.buffer_head** %432, align 8
  %433 = icmp ne %struct.buffer_head* %428, null
  %434 = xor i1 %433, true
  %435 = zext i1 %434 to i32
  %436 = call i64 @unlikely(i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %422
  br label %1088

439:                                              ; preds = %422
  %440 = load i32, i32* %39, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %39, align 4
  br label %442

442:                                              ; preds = %439
  %443 = load i32, i32* %35, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %35, align 4
  %445 = load i32, i32* %36, align 4
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %422, label %447

447:                                              ; preds = %442
  br label %448

448:                                              ; preds = %447
  %449 = load i64, i64* %22, align 8
  %450 = add i64 %449, 1
  store i64 %450, i64* %22, align 8
  br label %318

451:                                              ; preds = %380, %318
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %453 = icmp ne %struct.TYPE_14__* %452, null
  br i1 %453, label %454, label %459

454:                                              ; preds = %451
  %455 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 0
  %458 = call i32 @up_read(i32* %457)
  br label %459

459:                                              ; preds = %454, %451
  store i32 0, i32* %32, align 4
  br label %460

460:                                              ; preds = %496, %459
  %461 = load i32, i32* %32, align 4
  %462 = load i32, i32* %39, align 4
  %463 = icmp ult i32 %461, %462
  br i1 %463, label %464, label %499

464:                                              ; preds = %460
  %465 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %466 = load i32, i32* %32, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %465, i64 %467
  %469 = load %struct.buffer_head*, %struct.buffer_head** %468, align 8
  store %struct.buffer_head* %469, %struct.buffer_head** %44, align 8
  %470 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %471 = bitcast %struct.buffer_head* %470 to %struct.page*
  %472 = call i32 @trylock_buffer(%struct.page* %471)
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %475, label %474

474:                                              ; preds = %464
  br label %496

475:                                              ; preds = %464
  %476 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %477 = bitcast %struct.buffer_head* %476 to %struct.page*
  %478 = call i32 @buffer_uptodate(%struct.page* %477)
  %479 = call i64 @unlikely(i32 %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %475
  %482 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %483 = bitcast %struct.buffer_head* %482 to %struct.page*
  %484 = call i32 @unlock_buffer(%struct.page* %483)
  br label %496

485:                                              ; preds = %475
  %486 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %487 = bitcast %struct.buffer_head* %486 to %struct.page*
  %488 = call i32 @get_bh(%struct.page* %487)
  %489 = load i32, i32* @end_buffer_read_sync, align 4
  %490 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %491 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 8
  %492 = load i32, i32* @READ, align 4
  %493 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %494 = bitcast %struct.buffer_head* %493 to %struct.page*
  %495 = call i32 @submit_bh(i32 %492, %struct.page* %494)
  br label %496

496:                                              ; preds = %485, %481, %474
  %497 = load i32, i32* %32, align 4
  %498 = add i32 %497, 1
  store i32 %498, i32* %32, align 4
  br label %460

499:                                              ; preds = %460
  store i32 0, i32* %32, align 4
  br label %500

500:                                              ; preds = %557, %499
  %501 = load i32, i32* %32, align 4
  %502 = load i32, i32* %39, align 4
  %503 = icmp ult i32 %501, %502
  br i1 %503, label %504, label %560

504:                                              ; preds = %500
  %505 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %506 = load i32, i32* %32, align 4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %505, i64 %507
  %509 = load %struct.buffer_head*, %struct.buffer_head** %508, align 8
  store %struct.buffer_head* %509, %struct.buffer_head** %45, align 8
  %510 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %511 = bitcast %struct.buffer_head* %510 to %struct.page*
  %512 = call i32 @buffer_uptodate(%struct.page* %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %504
  br label %557

515:                                              ; preds = %504
  %516 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %517 = bitcast %struct.buffer_head* %516 to %struct.page*
  %518 = call i32 @wait_on_buffer(%struct.page* %517)
  %519 = call i32 (...) @barrier()
  %520 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %521 = bitcast %struct.buffer_head* %520 to %struct.page*
  %522 = call i32 @buffer_uptodate(%struct.page* %521)
  %523 = icmp ne i32 %522, 0
  %524 = xor i1 %523, true
  %525 = zext i1 %524 to i32
  %526 = call i64 @unlikely(i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %556

528:                                              ; preds = %515
  %529 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %530 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %529, i32 0, i32 2
  %531 = load %struct.super_block*, %struct.super_block** %530, align 8
  %532 = call i32 @ntfs_warning(%struct.super_block* %531, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  %533 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %534 = bitcast %struct.buffer_head* %533 to %struct.page*
  %535 = call i32 @get_bh(%struct.page* %534)
  %536 = load %struct.address_space*, %struct.address_space** %6, align 8
  %537 = call i32 @blk_run_address_space(%struct.address_space* %536)
  %538 = call i32 (...) @schedule()
  %539 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %540 = bitcast %struct.buffer_head* %539 to %struct.page*
  %541 = call i32 @put_bh(%struct.page* %540)
  %542 = load %struct.buffer_head*, %struct.buffer_head** %45, align 8
  %543 = bitcast %struct.buffer_head* %542 to %struct.page*
  %544 = call i32 @buffer_uptodate(%struct.page* %543)
  %545 = icmp ne i32 %544, 0
  %546 = xor i1 %545, true
  %547 = zext i1 %546 to i32
  %548 = call i64 @unlikely(i32 %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %551

550:                                              ; preds = %528
  br label %1053

551:                                              ; preds = %528
  %552 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %553 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %552, i32 0, i32 2
  %554 = load %struct.super_block*, %struct.super_block** %553, align 8
  %555 = call i32 @ntfs_warning(%struct.super_block* %554, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %556

556:                                              ; preds = %551, %515
  br label %557

557:                                              ; preds = %556, %514
  %558 = load i32, i32* %32, align 4
  %559 = add i32 %558, 1
  store i32 %559, i32* %32, align 4
  br label %500

560:                                              ; preds = %500
  %561 = call i32 @spin_lock(i32* @ntfs_cb_lock)
  %562 = load i32*, i32** @ntfs_compression_buffer, align 8
  store i32* %562, i32** %14, align 8
  %563 = load i32*, i32** %14, align 8
  %564 = icmp ne i32* %563, null
  %565 = xor i1 %564, true
  %566 = zext i1 %565 to i32
  %567 = call i32 @BUG_ON(i32 %566)
  %568 = load i32*, i32** %14, align 8
  store i32* %568, i32** %15, align 8
  %569 = load i32*, i32** %14, align 8
  %570 = load i64, i64* %20, align 8
  %571 = getelementptr inbounds i32, i32* %569, i64 %570
  store i32* %571, i32** %16, align 8
  store i32 0, i32* %32, align 4
  br label %572

572:                                              ; preds = %591, %560
  %573 = load i32, i32* %32, align 4
  %574 = load i32, i32* %39, align 4
  %575 = icmp ult i32 %573, %574
  br i1 %575, label %576, label %594

576:                                              ; preds = %572
  %577 = load i32*, i32** %15, align 8
  %578 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %579 = load i32, i32* %32, align 4
  %580 = zext i32 %579 to i64
  %581 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %578, i64 %580
  %582 = load %struct.buffer_head*, %struct.buffer_head** %581, align 8
  %583 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %582, i32 0, i32 1
  %584 = load i32*, i32** %583, align 8
  %585 = load i64, i64* %12, align 8
  %586 = trunc i64 %585 to i32
  %587 = call i32 @memcpy(i32* %577, i32* %584, i32 %586)
  %588 = load i64, i64* %12, align 8
  %589 = load i32*, i32** %15, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 %588
  store i32* %590, i32** %15, align 8
  br label %591

591:                                              ; preds = %576
  %592 = load i32, i32* %32, align 4
  %593 = add i32 %592, 1
  store i32 %593, i32* %32, align 4
  br label %572

594:                                              ; preds = %572
  %595 = load i32*, i32** %15, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 2
  %597 = load i32*, i32** %14, align 8
  %598 = load i64, i64* %20, align 8
  %599 = getelementptr inbounds i32, i32* %597, i64 %598
  %600 = icmp ule i32* %596, %599
  br i1 %600, label %601, label %604

601:                                              ; preds = %594
  %602 = load i32*, i32** %15, align 8
  %603 = bitcast i32* %602 to i64*
  store i64 0, i64* %603, align 8
  br label %604

604:                                              ; preds = %601, %594
  %605 = load i32*, i32** %14, align 8
  store i32* %605, i32** %15, align 8
  %606 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %607 = load i32, i32* %30, align 4
  %608 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %609 = trunc i64 %608 to i32
  %610 = shl i32 %607, %609
  %611 = load i32, i32* %31, align 4
  %612 = add i32 %610, %611
  %613 = zext i32 %612 to i64
  %614 = load i64, i64* %20, align 8
  %615 = add i64 %613, %614
  %616 = trunc i64 %615 to i32
  store i32 %616, i32* %37, align 4
  %617 = load i32, i32* %37, align 4
  %618 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %619 = xor i32 %618, -1
  %620 = and i32 %617, %619
  store i32 %620, i32* %34, align 4
  %621 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %622 = load i32, i32* %37, align 4
  %623 = trunc i64 %621 to i32
  %624 = ashr i32 %622, %623
  store i32 %624, i32* %37, align 4
  %625 = load i32, i32* %37, align 4
  %626 = load i32, i32* %29, align 4
  %627 = icmp ugt i32 %625, %626
  br i1 %627, label %628, label %630

628:                                              ; preds = %604
  %629 = load i32, i32* %29, align 4
  store i32 %629, i32* %37, align 4
  br label %630

630:                                              ; preds = %628, %604
  %631 = load i64, i64* %22, align 8
  %632 = load i64, i64* %24, align 8
  %633 = load i32, i32* %33, align 4
  %634 = zext i32 %633 to i64
  %635 = sub i64 %632, %634
  %636 = icmp eq i64 %631, %635
  br i1 %636, label %637, label %744

637:                                              ; preds = %630
  %638 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %639 = call i32 @spin_unlock(i32* @ntfs_cb_lock)
  %640 = load i32, i32* %34, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %645

642:                                              ; preds = %637
  %643 = load i32, i32* %37, align 4
  %644 = add nsw i32 %643, -1
  store i32 %644, i32* %37, align 4
  br label %645

645:                                              ; preds = %642, %637
  br label %646

646:                                              ; preds = %713, %645
  %647 = load i32, i32* %30, align 4
  %648 = load i32, i32* %37, align 4
  %649 = icmp ult i32 %647, %648
  br i1 %649, label %650, label %716

650:                                              ; preds = %646
  %651 = load %struct.page**, %struct.page*** %41, align 8
  %652 = load i32, i32* %30, align 4
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds %struct.page*, %struct.page** %651, i64 %653
  %655 = load %struct.page*, %struct.page** %654, align 8
  store %struct.page* %655, %struct.page** %3, align 8
  %656 = load %struct.page*, %struct.page** %3, align 8
  %657 = icmp ne %struct.page* %656, null
  br i1 %657, label %658, label %701

658:                                              ; preds = %650
  %659 = load i32, i32* %31, align 4
  %660 = icmp ne i32 %659, 0
  %661 = xor i1 %660, true
  %662 = zext i1 %661 to i32
  %663 = trunc i32 %662 to i8
  %664 = call i64 @likely(i8 zeroext %663)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %658
  %667 = load %struct.page*, %struct.page** %3, align 8
  %668 = call i32* @page_address(%struct.page* %667)
  %669 = call i32 @clear_page(i32* %668)
  br label %680

670:                                              ; preds = %658
  %671 = load %struct.page*, %struct.page** %3, align 8
  %672 = call i32* @page_address(%struct.page* %671)
  %673 = load i32, i32* %31, align 4
  %674 = zext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %672, i64 %674
  %676 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %677 = load i32, i32* %31, align 4
  %678 = sub i32 %676, %677
  %679 = call i32 @memset(i32* %675, i32 0, i32 %678)
  br label %680

680:                                              ; preds = %670, %666
  %681 = load %struct.page*, %struct.page** %3, align 8
  %682 = call i32 @flush_dcache_page(%struct.page* %681)
  %683 = load %struct.page*, %struct.page** %3, align 8
  %684 = call i32 @kunmap(%struct.page* %683)
  %685 = load %struct.page*, %struct.page** %3, align 8
  %686 = call i32 @SetPageUptodate(%struct.page* %685)
  %687 = load %struct.page*, %struct.page** %3, align 8
  %688 = call i32 @unlock_page(%struct.page* %687)
  %689 = load i32, i32* %30, align 4
  %690 = load i32, i32* %28, align 4
  %691 = icmp eq i32 %689, %690
  br i1 %691, label %692, label %693

692:                                              ; preds = %680
  store i8 1, i8* %42, align 1
  br label %696

693:                                              ; preds = %680
  %694 = load %struct.page*, %struct.page** %3, align 8
  %695 = call i32 @page_cache_release(%struct.page* %694)
  br label %696

696:                                              ; preds = %693, %692
  %697 = load %struct.page**, %struct.page*** %41, align 8
  %698 = load i32, i32* %30, align 4
  %699 = zext i32 %698 to i64
  %700 = getelementptr inbounds %struct.page*, %struct.page** %697, i64 %699
  store %struct.page* null, %struct.page** %700, align 8
  br label %701

701:                                              ; preds = %696, %650
  %702 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %703 = load i32, i32* %31, align 4
  %704 = sub i32 %702, %703
  %705 = load i32*, i32** %15, align 8
  %706 = zext i32 %704 to i64
  %707 = getelementptr inbounds i32, i32* %705, i64 %706
  store i32* %707, i32** %15, align 8
  store i32 0, i32* %31, align 4
  %708 = load i32*, i32** %15, align 8
  %709 = load i32*, i32** %16, align 8
  %710 = icmp uge i32* %708, %709
  br i1 %710, label %711, label %712

711:                                              ; preds = %701
  br label %716

712:                                              ; preds = %701
  br label %713

713:                                              ; preds = %712
  %714 = load i32, i32* %30, align 4
  %715 = add i32 %714, 1
  store i32 %715, i32* %30, align 4
  br label %646

716:                                              ; preds = %711, %646
  %717 = load i32, i32* %34, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %743

719:                                              ; preds = %716
  %720 = load i32*, i32** %15, align 8
  %721 = load i32*, i32** %16, align 8
  %722 = icmp ult i32* %720, %721
  br i1 %722, label %723, label %743

723:                                              ; preds = %719
  %724 = load %struct.page**, %struct.page*** %41, align 8
  %725 = load i32, i32* %30, align 4
  %726 = zext i32 %725 to i64
  %727 = getelementptr inbounds %struct.page*, %struct.page** %724, i64 %726
  %728 = load %struct.page*, %struct.page** %727, align 8
  store %struct.page* %728, %struct.page** %3, align 8
  %729 = load %struct.page*, %struct.page** %3, align 8
  %730 = icmp ne %struct.page* %729, null
  br i1 %730, label %731, label %741

731:                                              ; preds = %723
  %732 = load %struct.page*, %struct.page** %3, align 8
  %733 = call i32* @page_address(%struct.page* %732)
  %734 = load i32, i32* %31, align 4
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %733, i64 %735
  %737 = load i32, i32* %34, align 4
  %738 = load i32, i32* %31, align 4
  %739 = sub i32 %737, %738
  %740 = call i32 @memset(i32* %736, i32 0, i32 %739)
  br label %741

741:                                              ; preds = %731, %723
  %742 = load i32, i32* %34, align 4
  store i32 %742, i32* %31, align 4
  br label %743

743:                                              ; preds = %741, %719, %716
  br label %954

744:                                              ; preds = %630
  %745 = load i64, i64* %22, align 8
  %746 = load i64, i64* %24, align 8
  %747 = icmp eq i64 %745, %746
  br i1 %747, label %748, label %886

748:                                              ; preds = %744
  %749 = load i32, i32* %30, align 4
  store i32 %749, i32* %46, align 4
  %750 = load i32, i32* %31, align 4
  store i32 %750, i32* %47, align 4
  %751 = load i32*, i32** %15, align 8
  store i32* %751, i32** %48, align 8
  %752 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %753 = load i32, i32* %34, align 4
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %758

755:                                              ; preds = %748
  %756 = load i32, i32* %37, align 4
  %757 = add nsw i32 %756, -1
  store i32 %757, i32* %37, align 4
  br label %758

758:                                              ; preds = %755, %748
  br label %759

759:                                              ; preds = %794, %758
  %760 = load i32, i32* %30, align 4
  %761 = load i32, i32* %37, align 4
  %762 = icmp ult i32 %760, %761
  br i1 %762, label %763, label %797

763:                                              ; preds = %759
  %764 = load %struct.page**, %struct.page*** %41, align 8
  %765 = load i32, i32* %30, align 4
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds %struct.page*, %struct.page** %764, i64 %766
  %768 = load %struct.page*, %struct.page** %767, align 8
  store %struct.page* %768, %struct.page** %3, align 8
  %769 = load %struct.page*, %struct.page** %3, align 8
  %770 = icmp ne %struct.page* %769, null
  br i1 %770, label %771, label %782

771:                                              ; preds = %763
  %772 = load %struct.page*, %struct.page** %3, align 8
  %773 = call i32* @page_address(%struct.page* %772)
  %774 = load i32, i32* %31, align 4
  %775 = zext i32 %774 to i64
  %776 = getelementptr inbounds i32, i32* %773, i64 %775
  %777 = load i32*, i32** %15, align 8
  %778 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %779 = load i32, i32* %31, align 4
  %780 = sub i32 %778, %779
  %781 = call i32 @memcpy(i32* %776, i32* %777, i32 %780)
  br label %782

782:                                              ; preds = %771, %763
  %783 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %784 = load i32, i32* %31, align 4
  %785 = sub i32 %783, %784
  %786 = load i32*, i32** %15, align 8
  %787 = zext i32 %785 to i64
  %788 = getelementptr inbounds i32, i32* %786, i64 %787
  store i32* %788, i32** %15, align 8
  store i32 0, i32* %31, align 4
  %789 = load i32*, i32** %15, align 8
  %790 = load i32*, i32** %16, align 8
  %791 = icmp uge i32* %789, %790
  br i1 %791, label %792, label %793

792:                                              ; preds = %782
  br label %797

793:                                              ; preds = %782
  br label %794

794:                                              ; preds = %793
  %795 = load i32, i32* %30, align 4
  %796 = add i32 %795, 1
  store i32 %796, i32* %30, align 4
  br label %759

797:                                              ; preds = %792, %759
  %798 = load i32, i32* %34, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %831

800:                                              ; preds = %797
  %801 = load i32*, i32** %15, align 8
  %802 = load i32*, i32** %16, align 8
  %803 = icmp ult i32* %801, %802
  br i1 %803, label %804, label %831

804:                                              ; preds = %800
  %805 = load %struct.page**, %struct.page*** %41, align 8
  %806 = load i32, i32* %30, align 4
  %807 = zext i32 %806 to i64
  %808 = getelementptr inbounds %struct.page*, %struct.page** %805, i64 %807
  %809 = load %struct.page*, %struct.page** %808, align 8
  store %struct.page* %809, %struct.page** %3, align 8
  %810 = load %struct.page*, %struct.page** %3, align 8
  %811 = icmp ne %struct.page* %810, null
  br i1 %811, label %812, label %823

812:                                              ; preds = %804
  %813 = load %struct.page*, %struct.page** %3, align 8
  %814 = call i32* @page_address(%struct.page* %813)
  %815 = load i32, i32* %31, align 4
  %816 = zext i32 %815 to i64
  %817 = getelementptr inbounds i32, i32* %814, i64 %816
  %818 = load i32*, i32** %15, align 8
  %819 = load i32, i32* %34, align 4
  %820 = load i32, i32* %31, align 4
  %821 = sub i32 %819, %820
  %822 = call i32 @memcpy(i32* %817, i32* %818, i32 %821)
  br label %823

823:                                              ; preds = %812, %804
  %824 = load i32, i32* %34, align 4
  %825 = load i32, i32* %31, align 4
  %826 = sub i32 %824, %825
  %827 = load i32*, i32** %15, align 8
  %828 = zext i32 %826 to i64
  %829 = getelementptr inbounds i32, i32* %827, i64 %828
  store i32* %829, i32** %15, align 8
  %830 = load i32, i32* %34, align 4
  store i32 %830, i32* %31, align 4
  br label %831

831:                                              ; preds = %823, %800, %797
  %832 = call i32 @spin_unlock(i32* @ntfs_cb_lock)
  br label %833

833:                                              ; preds = %882, %831
  %834 = load i32, i32* %46, align 4
  %835 = load i32, i32* %37, align 4
  %836 = icmp ult i32 %834, %835
  br i1 %836, label %837, label %885

837:                                              ; preds = %833
  %838 = load %struct.page**, %struct.page*** %41, align 8
  %839 = load i32, i32* %46, align 4
  %840 = zext i32 %839 to i64
  %841 = getelementptr inbounds %struct.page*, %struct.page** %838, i64 %840
  %842 = load %struct.page*, %struct.page** %841, align 8
  store %struct.page* %842, %struct.page** %3, align 8
  %843 = load %struct.page*, %struct.page** %3, align 8
  %844 = icmp ne %struct.page* %843, null
  br i1 %844, label %845, label %870

845:                                              ; preds = %837
  %846 = load %struct.page*, %struct.page** %3, align 8
  %847 = load i32, i32* %4, align 4
  %848 = load i64, i64* %5, align 8
  %849 = call i32 @handle_bounds_compressed_page(%struct.page* %846, i32 %847, i64 %848)
  %850 = load %struct.page*, %struct.page** %3, align 8
  %851 = call i32 @flush_dcache_page(%struct.page* %850)
  %852 = load %struct.page*, %struct.page** %3, align 8
  %853 = call i32 @kunmap(%struct.page* %852)
  %854 = load %struct.page*, %struct.page** %3, align 8
  %855 = call i32 @SetPageUptodate(%struct.page* %854)
  %856 = load %struct.page*, %struct.page** %3, align 8
  %857 = call i32 @unlock_page(%struct.page* %856)
  %858 = load i32, i32* %46, align 4
  %859 = load i32, i32* %28, align 4
  %860 = icmp eq i32 %858, %859
  br i1 %860, label %861, label %862

861:                                              ; preds = %845
  store i8 1, i8* %42, align 1
  br label %865

862:                                              ; preds = %845
  %863 = load %struct.page*, %struct.page** %3, align 8
  %864 = call i32 @page_cache_release(%struct.page* %863)
  br label %865

865:                                              ; preds = %862, %861
  %866 = load %struct.page**, %struct.page*** %41, align 8
  %867 = load i32, i32* %46, align 4
  %868 = zext i32 %867 to i64
  %869 = getelementptr inbounds %struct.page*, %struct.page** %866, i64 %868
  store %struct.page* null, %struct.page** %869, align 8
  br label %870

870:                                              ; preds = %865, %837
  %871 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %872 = load i32, i32* %47, align 4
  %873 = sub i32 %871, %872
  %874 = load i32*, i32** %48, align 8
  %875 = zext i32 %873 to i64
  %876 = getelementptr inbounds i32, i32* %874, i64 %875
  store i32* %876, i32** %48, align 8
  store i32 0, i32* %47, align 4
  %877 = load i32*, i32** %48, align 8
  %878 = load i32*, i32** %16, align 8
  %879 = icmp uge i32* %877, %878
  br i1 %879, label %880, label %881

880:                                              ; preds = %870
  br label %885

881:                                              ; preds = %870
  br label %882

882:                                              ; preds = %881
  %883 = load i32, i32* %46, align 4
  %884 = add i32 %883, 1
  store i32 %884, i32* %46, align 4
  br label %833

885:                                              ; preds = %880, %833
  br label %953

886:                                              ; preds = %744
  %887 = load i32, i32* %30, align 4
  store i32 %887, i32* %49, align 4
  %888 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %889 = load %struct.page**, %struct.page*** %41, align 8
  %890 = load i32, i32* %37, align 4
  %891 = load i32, i32* %34, align 4
  %892 = load i32, i32* %28, align 4
  %893 = load i32*, i32** %15, align 8
  %894 = load i64, i64* %20, align 8
  %895 = load i32*, i32** %15, align 8
  %896 = load i32*, i32** %14, align 8
  %897 = ptrtoint i32* %895 to i64
  %898 = ptrtoint i32* %896 to i64
  %899 = sub i64 %897, %898
  %900 = sdiv exact i64 %899, 4
  %901 = sub i64 %894, %900
  %902 = load i32, i32* %4, align 4
  %903 = load i64, i64* %5, align 8
  %904 = call i32 @ntfs_decompress(%struct.page** %889, i32* %30, i32* %31, i32 %890, i32 %891, i32 %892, i8* %42, i32* %893, i64 %901, i32 %902, i64 %903)
  store i32 %904, i32* %40, align 4
  %905 = load i32, i32* %40, align 4
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %907, label %952

907:                                              ; preds = %886
  %908 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %909 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %908, i32 0, i32 2
  %910 = load %struct.super_block*, %struct.super_block** %909, align 8
  %911 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %912 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %911, i32 0, i32 4
  %913 = load i32, i32* %912, align 8
  %914 = load i32, i32* %40, align 4
  %915 = sub nsw i32 0, %914
  %916 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %910, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.11, i64 0, i64 0), i32 %913, i32 %915)
  br label %917

917:                                              ; preds = %948, %907
  %918 = load i32, i32* %49, align 4
  %919 = load i32, i32* %30, align 4
  %920 = icmp ult i32 %918, %919
  br i1 %920, label %921, label %951

921:                                              ; preds = %917
  %922 = load %struct.page**, %struct.page*** %41, align 8
  %923 = load i32, i32* %49, align 4
  %924 = zext i32 %923 to i64
  %925 = getelementptr inbounds %struct.page*, %struct.page** %922, i64 %924
  %926 = load %struct.page*, %struct.page** %925, align 8
  store %struct.page* %926, %struct.page** %3, align 8
  %927 = load %struct.page*, %struct.page** %3, align 8
  %928 = icmp ne %struct.page* %927, null
  br i1 %928, label %929, label %947

929:                                              ; preds = %921
  %930 = load %struct.page*, %struct.page** %3, align 8
  %931 = call i32 @flush_dcache_page(%struct.page* %930)
  %932 = load %struct.page*, %struct.page** %3, align 8
  %933 = call i32 @kunmap(%struct.page* %932)
  %934 = load %struct.page*, %struct.page** %3, align 8
  %935 = call i32 @unlock_page(%struct.page* %934)
  %936 = load i32, i32* %49, align 4
  %937 = load i32, i32* %28, align 4
  %938 = icmp ne i32 %936, %937
  br i1 %938, label %939, label %942

939:                                              ; preds = %929
  %940 = load %struct.page*, %struct.page** %3, align 8
  %941 = call i32 @page_cache_release(%struct.page* %940)
  br label %942

942:                                              ; preds = %939, %929
  %943 = load %struct.page**, %struct.page*** %41, align 8
  %944 = load i32, i32* %49, align 4
  %945 = zext i32 %944 to i64
  %946 = getelementptr inbounds %struct.page*, %struct.page** %943, i64 %945
  store %struct.page* null, %struct.page** %946, align 8
  br label %947

947:                                              ; preds = %942, %921
  br label %948

948:                                              ; preds = %947
  %949 = load i32, i32* %49, align 4
  %950 = add i32 %949, 1
  store i32 %950, i32* %49, align 4
  br label %917

951:                                              ; preds = %917
  br label %952

952:                                              ; preds = %951, %886
  br label %953

953:                                              ; preds = %952, %885
  br label %954

954:                                              ; preds = %953, %743
  store i32 0, i32* %32, align 4
  br label %955

955:                                              ; preds = %967, %954
  %956 = load i32, i32* %32, align 4
  %957 = load i32, i32* %39, align 4
  %958 = icmp ult i32 %956, %957
  br i1 %958, label %959, label %970

959:                                              ; preds = %955
  %960 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %961 = load i32, i32* %32, align 4
  %962 = zext i32 %961 to i64
  %963 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %960, i64 %962
  %964 = load %struct.buffer_head*, %struct.buffer_head** %963, align 8
  %965 = bitcast %struct.buffer_head* %964 to %struct.page*
  %966 = call i32 @brelse(%struct.page* %965)
  br label %967

967:                                              ; preds = %959
  %968 = load i32, i32* %32, align 4
  %969 = add i32 %968, 1
  store i32 %969, i32* %32, align 4
  br label %955

970:                                              ; preds = %955
  %971 = load i32, i32* %26, align 4
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %973, label %974

973:                                              ; preds = %970
  br label %310

974:                                              ; preds = %970
  %975 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %976 = bitcast %struct.buffer_head** %975 to %struct.page**
  %977 = call i32 @kfree(%struct.page** %976)
  store i32 0, i32* %30, align 4
  br label %978

978:                                              ; preds = %1019, %974
  %979 = load i32, i32* %30, align 4
  %980 = load i32, i32* %29, align 4
  %981 = icmp ult i32 %979, %980
  br i1 %981, label %982, label %1022

982:                                              ; preds = %978
  %983 = load %struct.page**, %struct.page*** %41, align 8
  %984 = load i32, i32* %30, align 4
  %985 = zext i32 %984 to i64
  %986 = getelementptr inbounds %struct.page*, %struct.page** %983, i64 %985
  %987 = load %struct.page*, %struct.page** %986, align 8
  store %struct.page* %987, %struct.page** %3, align 8
  %988 = load %struct.page*, %struct.page** %3, align 8
  %989 = icmp ne %struct.page* %988, null
  br i1 %989, label %990, label %1018

990:                                              ; preds = %982
  %991 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %992 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %991, i32 0, i32 2
  %993 = load %struct.super_block*, %struct.super_block** %992, align 8
  %994 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %995 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %994, i32 0, i32 4
  %996 = load i32, i32* %995, align 8
  %997 = load %struct.page*, %struct.page** %3, align 8
  %998 = getelementptr inbounds %struct.page, %struct.page* %997, i32 0, i32 0
  %999 = load i64, i64* %998, align 8
  %1000 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %993, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.12, i64 0, i64 0), i32 %996, i64 %999)
  %1001 = load %struct.page*, %struct.page** %3, align 8
  %1002 = call i32 @flush_dcache_page(%struct.page* %1001)
  %1003 = load %struct.page*, %struct.page** %3, align 8
  %1004 = call i32 @kunmap(%struct.page* %1003)
  %1005 = load %struct.page*, %struct.page** %3, align 8
  %1006 = call i32 @unlock_page(%struct.page* %1005)
  %1007 = load i32, i32* %30, align 4
  %1008 = load i32, i32* %28, align 4
  %1009 = icmp ne i32 %1007, %1008
  br i1 %1009, label %1010, label %1013

1010:                                             ; preds = %990
  %1011 = load %struct.page*, %struct.page** %3, align 8
  %1012 = call i32 @page_cache_release(%struct.page* %1011)
  br label %1013

1013:                                             ; preds = %1010, %990
  %1014 = load %struct.page**, %struct.page*** %41, align 8
  %1015 = load i32, i32* %30, align 4
  %1016 = zext i32 %1015 to i64
  %1017 = getelementptr inbounds %struct.page*, %struct.page** %1014, i64 %1016
  store %struct.page* null, %struct.page** %1017, align 8
  br label %1018

1018:                                             ; preds = %1013, %982
  br label %1019

1019:                                             ; preds = %1018
  %1020 = load i32, i32* %30, align 4
  %1021 = add i32 %1020, 1
  store i32 %1021, i32* %30, align 4
  br label %978

1022:                                             ; preds = %978
  %1023 = load %struct.page**, %struct.page*** %41, align 8
  %1024 = call i32 @kfree(%struct.page** %1023)
  %1025 = load i8, i8* %42, align 1
  %1026 = call i64 @likely(i8 zeroext %1025)
  %1027 = icmp ne i64 %1026, 0
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1022
  store i32 0, i32* %2, align 4
  br label %1137

1029:                                             ; preds = %1022
  %1030 = load i32, i32* %40, align 4
  %1031 = load i32, i32* @EOVERFLOW, align 4
  %1032 = sub nsw i32 0, %1031
  %1033 = icmp eq i32 %1030, %1032
  br i1 %1033, label %1034, label %1035

1034:                                             ; preds = %1029
  br label %1041

1035:                                             ; preds = %1029
  %1036 = load i32, i32* %40, align 4
  %1037 = icmp ne i32 %1036, 0
  %1038 = xor i1 %1037, true
  %1039 = zext i1 %1038 to i64
  %1040 = select i1 %1038, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)
  br label %1041

1041:                                             ; preds = %1035, %1034
  %1042 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), %1034 ], [ %1040, %1035 ]
  %1043 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %1042)
  %1044 = load i32, i32* %40, align 4
  %1045 = icmp slt i32 %1044, 0
  br i1 %1045, label %1046, label %1048

1046:                                             ; preds = %1041
  %1047 = load i32, i32* %40, align 4
  br label %1051

1048:                                             ; preds = %1041
  %1049 = load i32, i32* @EIO, align 4
  %1050 = sub nsw i32 0, %1049
  br label %1051

1051:                                             ; preds = %1048, %1046
  %1052 = phi i32 [ %1047, %1046 ], [ %1050, %1048 ]
  store i32 %1052, i32* %2, align 4
  br label %1137

1053:                                             ; preds = %550
  %1054 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %1055 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1054, i32 0, i32 2
  %1056 = load %struct.super_block*, %struct.super_block** %1055, align 8
  %1057 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %1056, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %32, align 4
  br label %1058

1058:                                             ; preds = %1070, %1053
  %1059 = load i32, i32* %32, align 4
  %1060 = load i32, i32* %39, align 4
  %1061 = icmp ult i32 %1059, %1060
  br i1 %1061, label %1062, label %1073

1062:                                             ; preds = %1058
  %1063 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %1064 = load i32, i32* %32, align 4
  %1065 = zext i32 %1064 to i64
  %1066 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %1063, i64 %1065
  %1067 = load %struct.buffer_head*, %struct.buffer_head** %1066, align 8
  %1068 = bitcast %struct.buffer_head* %1067 to %struct.page*
  %1069 = call i32 @brelse(%struct.page* %1068)
  br label %1070

1070:                                             ; preds = %1062
  %1071 = load i32, i32* %32, align 4
  %1072 = add i32 %1071, 1
  store i32 %1072, i32* %32, align 4
  br label %1058

1073:                                             ; preds = %1058
  br label %1097

1074:                                             ; preds = %401
  %1075 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %1076 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1075, i32 0, i32 2
  %1077 = load %struct.super_block*, %struct.super_block** %1076, align 8
  %1078 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %1077, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0))
  br label %1097

1079:                                             ; preds = %390
  %1080 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %1081 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1080, i32 0, i32 3
  %1082 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1081, i32 0, i32 0
  %1083 = call i32 @up_read(i32* %1082)
  %1084 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %1085 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1084, i32 0, i32 2
  %1086 = load %struct.super_block*, %struct.super_block** %1085, align 8
  %1087 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %1086, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0))
  br label %1097

1088:                                             ; preds = %438
  %1089 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %1090 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1089, i32 0, i32 3
  %1091 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1090, i32 0, i32 0
  %1092 = call i32 @up_read(i32* %1091)
  %1093 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %1094 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1093, i32 0, i32 2
  %1095 = load %struct.super_block*, %struct.super_block** %1094, align 8
  %1096 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %1095, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  br label %1097

1097:                                             ; preds = %1088, %1079, %1074, %1073
  %1098 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %1099 = bitcast %struct.buffer_head** %1098 to %struct.page**
  %1100 = call i32 @kfree(%struct.page** %1099)
  %1101 = load i32, i32* %30, align 4
  store i32 %1101, i32* %32, align 4
  br label %1102

1102:                                             ; preds = %1129, %1097
  %1103 = load i32, i32* %32, align 4
  %1104 = load i32, i32* %29, align 4
  %1105 = icmp ult i32 %1103, %1104
  br i1 %1105, label %1106, label %1132

1106:                                             ; preds = %1102
  %1107 = load %struct.page**, %struct.page*** %41, align 8
  %1108 = load i32, i32* %32, align 4
  %1109 = zext i32 %1108 to i64
  %1110 = getelementptr inbounds %struct.page*, %struct.page** %1107, i64 %1109
  %1111 = load %struct.page*, %struct.page** %1110, align 8
  store %struct.page* %1111, %struct.page** %3, align 8
  %1112 = load %struct.page*, %struct.page** %3, align 8
  %1113 = icmp ne %struct.page* %1112, null
  br i1 %1113, label %1114, label %1128

1114:                                             ; preds = %1106
  %1115 = load %struct.page*, %struct.page** %3, align 8
  %1116 = call i32 @flush_dcache_page(%struct.page* %1115)
  %1117 = load %struct.page*, %struct.page** %3, align 8
  %1118 = call i32 @kunmap(%struct.page* %1117)
  %1119 = load %struct.page*, %struct.page** %3, align 8
  %1120 = call i32 @unlock_page(%struct.page* %1119)
  %1121 = load i32, i32* %32, align 4
  %1122 = load i32, i32* %28, align 4
  %1123 = icmp ne i32 %1121, %1122
  br i1 %1123, label %1124, label %1127

1124:                                             ; preds = %1114
  %1125 = load %struct.page*, %struct.page** %3, align 8
  %1126 = call i32 @page_cache_release(%struct.page* %1125)
  br label %1127

1127:                                             ; preds = %1124, %1114
  br label %1128

1128:                                             ; preds = %1127, %1106
  br label %1129

1129:                                             ; preds = %1128
  %1130 = load i32, i32* %32, align 4
  %1131 = add i32 %1130, 1
  store i32 %1131, i32* %32, align 4
  br label %1102

1132:                                             ; preds = %1102
  %1133 = load %struct.page**, %struct.page*** %41, align 8
  %1134 = call i32 @kfree(%struct.page** %1133)
  %1135 = load i32, i32* @EIO, align 4
  %1136 = sub nsw i32 0, %1135
  store i32 %1136, i32* %2, align 4
  br label %1137

1137:                                             ; preds = %1132, %1051, %1028, %227, %168
  %1138 = load i32, i32* %2, align 4
  ret i32 %1138
}

declare dso_local %struct.TYPE_16__* @NTFS_I(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @VFS_I(%struct.TYPE_16__*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local %struct.page* @grab_cache_page_nowait(%struct.address_space*, i64) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @likely(i8 zeroext) #1

declare dso_local zeroext i8 @ntfs_rl_vcn_to_lcn(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ntfs_map_runlist(%struct.TYPE_16__*, i64) #1

declare dso_local %struct.page* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @trylock_buffer(%struct.page*) #1

declare dso_local i32 @buffer_uptodate(%struct.page*) #1

declare dso_local i32 @unlock_buffer(%struct.page*) #1

declare dso_local i32 @get_bh(%struct.page*) #1

declare dso_local i32 @submit_bh(i32, %struct.page*) #1

declare dso_local i32 @wait_on_buffer(%struct.page*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @ntfs_warning(%struct.super_block*, i8*) #1

declare dso_local i32 @blk_run_address_space(%struct.address_space*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @put_bh(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_page(i32*) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @handle_bounds_compressed_page(%struct.page*, i32, i64) #1

declare dso_local i32 @ntfs_decompress(%struct.page**, i32*, i32*, i32, i32, i32, i8*, i32*, i64, i32, i64) #1

declare dso_local i32 @brelse(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
