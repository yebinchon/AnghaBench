; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_init_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_init_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.ext4_group_info = type { i8*, i64 }
%struct.ext4_group_desc = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"init page %lu\0A\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXT4_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"read bitmap for group %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"put buddy for group %u in page %lu/%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"put bitmap for group %u in page %lu/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i8*)* @ext4_mb_init_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_init_cache(%struct.page* %0, i8* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head**, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.ext4_group_info*, align 8
  %20 = alloca %struct.ext4_group_desc*, align 8
  %21 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, i32, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %16, align 8
  %31 = load %struct.inode*, %struct.inode** %16, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %13, align 8
  %34 = load %struct.super_block*, %struct.super_block** %13, align 8
  %35 = call i32 @ext4_get_groups_count(%struct.super_block* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.inode*, %struct.inode** %16, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 1, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @GFP_NOFS, align 4
  %60 = call %struct.buffer_head** @kzalloc(i32 %58, i32 %59)
  store %struct.buffer_head** %60, %struct.buffer_head*** %15, align 8
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %62 = icmp eq %struct.buffer_head** %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %453

64:                                               ; preds = %51
  br label %66

65:                                               ; preds = %48
  store %struct.buffer_head** %14, %struct.buffer_head*** %15, align 8
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.page*, %struct.page** %3, align 8
  %68 = getelementptr inbounds %struct.page, %struct.page* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %267, %66
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %270

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %270

84:                                               ; preds = %77
  %85 = load %struct.super_block*, %struct.super_block** %13, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %85, i32 %88)
  store %struct.ext4_group_info* %89, %struct.ext4_group_info** %19, align 8
  %90 = load %struct.page*, %struct.page** %3, align 8
  %91 = call i64 @PageUptodate(%struct.page* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load %struct.ext4_group_info*, %struct.ext4_group_info** %19, align 8
  %95 = call i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %98, i64 %100
  store %struct.buffer_head* null, %struct.buffer_head** %101, align 8
  br label %267

102:                                              ; preds = %93, %84
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  %105 = load %struct.super_block*, %struct.super_block** %13, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %106, %107
  %109 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %105, i32 %108, i32* null)
  store %struct.ext4_group_desc* %109, %struct.ext4_group_desc** %20, align 8
  %110 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %20, align 8
  %111 = icmp eq %struct.ext4_group_desc* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %453

113:                                              ; preds = %102
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  %116 = load %struct.super_block*, %struct.super_block** %13, align 8
  %117 = load %struct.super_block*, %struct.super_block** %13, align 8
  %118 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %20, align 8
  %119 = call i32 @ext4_block_bitmap(%struct.super_block* %117, %struct.ext4_group_desc* %118)
  %120 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %116, i32 %119)
  %121 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %121, i64 %123
  store %struct.buffer_head* %120, %struct.buffer_head** %124, align 8
  %125 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %125, i64 %127
  %129 = load %struct.buffer_head*, %struct.buffer_head** %128, align 8
  %130 = icmp eq %struct.buffer_head* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %113
  br label %453

132:                                              ; preds = %113
  %133 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %133, i64 %135
  %137 = load %struct.buffer_head*, %struct.buffer_head** %136, align 8
  %138 = call i64 @bitmap_uptodate(%struct.buffer_head* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %267

141:                                              ; preds = %132
  %142 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %142, i64 %144
  %146 = load %struct.buffer_head*, %struct.buffer_head** %145, align 8
  %147 = call i32 @lock_buffer(%struct.buffer_head* %146)
  %148 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %148, i64 %150
  %152 = load %struct.buffer_head*, %struct.buffer_head** %151, align 8
  %153 = call i64 @bitmap_uptodate(%struct.buffer_head* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %141
  %156 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %156, i64 %158
  %160 = load %struct.buffer_head*, %struct.buffer_head** %159, align 8
  %161 = call i32 @unlock_buffer(%struct.buffer_head* %160)
  br label %267

162:                                              ; preds = %141
  %163 = load %struct.super_block*, %struct.super_block** %13, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @ext4_lock_group(%struct.super_block* %163, i32 %166)
  %168 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %20, align 8
  %169 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %172 = call i32 @cpu_to_le16(i32 %171)
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %210

175:                                              ; preds = %162
  %176 = load %struct.super_block*, %struct.super_block** %13, align 8
  %177 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %177, i64 %179
  %181 = load %struct.buffer_head*, %struct.buffer_head** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %182, %183
  %185 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %20, align 8
  %186 = call i32 @ext4_init_block_bitmap(%struct.super_block* %176, %struct.buffer_head* %181, i32 %184, %struct.ext4_group_desc* %185)
  %187 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %187, i64 %189
  %191 = load %struct.buffer_head*, %struct.buffer_head** %190, align 8
  %192 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %191)
  %193 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %193, i64 %195
  %197 = load %struct.buffer_head*, %struct.buffer_head** %196, align 8
  %198 = call i32 @set_buffer_uptodate(%struct.buffer_head* %197)
  %199 = load %struct.super_block*, %struct.super_block** %13, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %200, %201
  %203 = call i32 @ext4_unlock_group(%struct.super_block* %199, i32 %202)
  %204 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %204, i64 %206
  %208 = load %struct.buffer_head*, %struct.buffer_head** %207, align 8
  %209 = call i32 @unlock_buffer(%struct.buffer_head* %208)
  br label %267

210:                                              ; preds = %162
  %211 = load %struct.super_block*, %struct.super_block** %13, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %212, %213
  %215 = call i32 @ext4_unlock_group(%struct.super_block* %211, i32 %214)
  %216 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %216, i64 %218
  %220 = load %struct.buffer_head*, %struct.buffer_head** %219, align 8
  %221 = call i64 @buffer_uptodate(%struct.buffer_head* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %210
  %224 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %224, i64 %226
  %228 = load %struct.buffer_head*, %struct.buffer_head** %227, align 8
  %229 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %228)
  %230 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %230, i64 %232
  %234 = load %struct.buffer_head*, %struct.buffer_head** %233, align 8
  %235 = call i32 @unlock_buffer(%struct.buffer_head* %234)
  br label %267

236:                                              ; preds = %210
  %237 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %237, i64 %239
  %241 = load %struct.buffer_head*, %struct.buffer_head** %240, align 8
  %242 = call i32 @get_bh(%struct.buffer_head* %241)
  %243 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %243, i64 %245
  %247 = load %struct.buffer_head*, %struct.buffer_head** %246, align 8
  %248 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %247)
  %249 = load i32, i32* @end_buffer_read_sync, align 4
  %250 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %250, i64 %252
  %254 = load %struct.buffer_head*, %struct.buffer_head** %253, align 8
  %255 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %254, i32 0, i32 1
  store i32 %249, i32* %255, align 8
  %256 = load i32, i32* @READ, align 4
  %257 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %257, i64 %259
  %261 = load %struct.buffer_head*, %struct.buffer_head** %260, align 8
  %262 = call i32 @submit_bh(i32 %256, %struct.buffer_head* %261)
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %263, %264
  %266 = call i32 (i32, i8*, i32, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %236, %223, %175, %155, %140, %97
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %10, align 4
  br label %73

270:                                              ; preds = %83, %73
  store i32 0, i32* %10, align 4
  br label %271

271:                                              ; preds = %290, %270
  %272 = load i32, i32* %10, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %293

275:                                              ; preds = %271
  %276 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %276, i64 %278
  %280 = load %struct.buffer_head*, %struct.buffer_head** %279, align 8
  %281 = icmp ne %struct.buffer_head* %280, null
  br i1 %281, label %282, label %289

282:                                              ; preds = %275
  %283 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %283, i64 %285
  %287 = load %struct.buffer_head*, %struct.buffer_head** %286, align 8
  %288 = call i32 @wait_on_buffer(%struct.buffer_head* %287)
  br label %289

289:                                              ; preds = %282, %275
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %10, align 4
  br label %271

293:                                              ; preds = %271
  %294 = load i32, i32* @EIO, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %296

296:                                              ; preds = %317, %293
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %8, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %320

300:                                              ; preds = %296
  %301 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %301, i64 %303
  %305 = load %struct.buffer_head*, %struct.buffer_head** %304, align 8
  %306 = icmp ne %struct.buffer_head* %305, null
  br i1 %306, label %307, label %316

307:                                              ; preds = %300
  %308 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %309 = load i32, i32* %10, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %308, i64 %310
  %312 = load %struct.buffer_head*, %struct.buffer_head** %311, align 8
  %313 = call i64 @buffer_uptodate(%struct.buffer_head* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %307
  br label %453

316:                                              ; preds = %307, %300
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %10, align 4
  br label %296

320:                                              ; preds = %296
  store i32 0, i32* %9, align 4
  %321 = load %struct.page*, %struct.page** %3, align 8
  %322 = getelementptr inbounds %struct.page, %struct.page* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %7, align 4
  %325 = mul nsw i32 %323, %324
  store i32 %325, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %326

326:                                              ; preds = %447, %320
  %327 = load i32, i32* %10, align 4
  %328 = load i32, i32* %7, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %450

330:                                              ; preds = %326
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %10, align 4
  %333 = add nsw i32 %331, %332
  %334 = ashr i32 %333, 1
  store i32 %334, i32* %21, align 4
  %335 = load i32, i32* %21, align 4
  %336 = load i32, i32* %5, align 4
  %337 = icmp sge i32 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %330
  br label %450

339:                                              ; preds = %330
  %340 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %341 = load i32, i32* %21, align 4
  %342 = load i32, i32* %11, align 4
  %343 = sub nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %340, i64 %344
  %346 = load %struct.buffer_head*, %struct.buffer_head** %345, align 8
  %347 = icmp ne %struct.buffer_head* %346, null
  br i1 %347, label %349, label %348

348:                                              ; preds = %339
  br label %447

349:                                              ; preds = %339
  %350 = load %struct.page*, %struct.page** %3, align 8
  %351 = call i8* @page_address(%struct.page* %350)
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* %6, align 4
  %354 = mul nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %351, i64 %355
  store i8* %356, i8** %17, align 8
  %357 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* %11, align 4
  %360 = sub nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %357, i64 %361
  %363 = load %struct.buffer_head*, %struct.buffer_head** %362, align 8
  %364 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  store i8* %365, i8** %18, align 8
  %366 = load i32, i32* %12, align 4
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %366, %367
  %369 = and i32 %368, 1
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %414

371:                                              ; preds = %349
  %372 = load i8*, i8** %4, align 8
  %373 = icmp eq i8* %372, null
  %374 = zext i1 %373 to i32
  %375 = call i32 @BUG_ON(i32 %374)
  %376 = load i32, i32* %21, align 4
  %377 = load %struct.page*, %struct.page** %3, align 8
  %378 = getelementptr inbounds %struct.page, %struct.page* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* %10, align 4
  %381 = load i32, i32* %6, align 4
  %382 = mul nsw i32 %380, %381
  %383 = call i32 (i32, i8*, i32, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %376, i32 %379, i32 %382)
  %384 = load %struct.super_block*, %struct.super_block** %13, align 8
  %385 = load i32, i32* %21, align 4
  %386 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %384, i32 %385)
  store %struct.ext4_group_info* %386, %struct.ext4_group_info** %19, align 8
  %387 = load %struct.ext4_group_info*, %struct.ext4_group_info** %19, align 8
  %388 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %387, i32 0, i32 1
  store i64 0, i64* %388, align 8
  %389 = load %struct.ext4_group_info*, %struct.ext4_group_info** %19, align 8
  %390 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %389, i32 0, i32 0
  %391 = load i8*, i8** %390, align 8
  %392 = load %struct.super_block*, %struct.super_block** %13, align 8
  %393 = getelementptr inbounds %struct.super_block, %struct.super_block* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, 2
  %396 = sext i32 %395 to i64
  %397 = mul i64 1, %396
  %398 = trunc i64 %397 to i32
  %399 = call i32 @memset(i8* %391, i32 0, i32 %398)
  %400 = load %struct.super_block*, %struct.super_block** %13, align 8
  %401 = load i32, i32* %21, align 4
  %402 = call i32 @ext4_lock_group(%struct.super_block* %400, i32 %401)
  %403 = load i8*, i8** %17, align 8
  %404 = load i32, i32* %6, align 4
  %405 = call i32 @memset(i8* %403, i32 255, i32 %404)
  %406 = load %struct.super_block*, %struct.super_block** %13, align 8
  %407 = load i8*, i8** %17, align 8
  %408 = load i8*, i8** %4, align 8
  %409 = load i32, i32* %21, align 4
  %410 = call i32 @ext4_mb_generate_buddy(%struct.super_block* %406, i8* %407, i8* %408, i32 %409)
  %411 = load %struct.super_block*, %struct.super_block** %13, align 8
  %412 = load i32, i32* %21, align 4
  %413 = call i32 @ext4_unlock_group(%struct.super_block* %411, i32 %412)
  store i8* null, i8** %4, align 8
  br label %446

414:                                              ; preds = %349
  %415 = load i8*, i8** %4, align 8
  %416 = icmp ne i8* %415, null
  %417 = zext i1 %416 to i32
  %418 = call i32 @BUG_ON(i32 %417)
  %419 = load i32, i32* %21, align 4
  %420 = load %struct.page*, %struct.page** %3, align 8
  %421 = getelementptr inbounds %struct.page, %struct.page* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %10, align 4
  %424 = load i32, i32* %6, align 4
  %425 = mul nsw i32 %423, %424
  %426 = call i32 (i32, i8*, i32, ...) @mb_debug(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %419, i32 %422, i32 %425)
  %427 = load %struct.super_block*, %struct.super_block** %13, align 8
  %428 = load i32, i32* %21, align 4
  %429 = call i32 @ext4_lock_group(%struct.super_block* %427, i32 %428)
  %430 = load i8*, i8** %17, align 8
  %431 = load i8*, i8** %18, align 8
  %432 = load i32, i32* %6, align 4
  %433 = call i32 @memcpy(i8* %430, i8* %431, i32 %432)
  %434 = load %struct.super_block*, %struct.super_block** %13, align 8
  %435 = load i8*, i8** %17, align 8
  %436 = load i32, i32* %21, align 4
  %437 = call i32 @ext4_mb_generate_from_pa(%struct.super_block* %434, i8* %435, i32 %436)
  %438 = load %struct.super_block*, %struct.super_block** %13, align 8
  %439 = load i8*, i8** %17, align 8
  %440 = load i32, i32* %21, align 4
  %441 = call i32 @ext4_mb_generate_from_freelist(%struct.super_block* %438, i8* %439, i32 %440)
  %442 = load %struct.super_block*, %struct.super_block** %13, align 8
  %443 = load i32, i32* %21, align 4
  %444 = call i32 @ext4_unlock_group(%struct.super_block* %442, i32 %443)
  %445 = load i8*, i8** %17, align 8
  store i8* %445, i8** %4, align 8
  br label %446

446:                                              ; preds = %414, %371
  br label %447

447:                                              ; preds = %446, %348
  %448 = load i32, i32* %10, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %10, align 4
  br label %326

450:                                              ; preds = %338, %326
  %451 = load %struct.page*, %struct.page** %3, align 8
  %452 = call i32 @SetPageUptodate(%struct.page* %451)
  br label %453

453:                                              ; preds = %450, %315, %131, %112, %63
  %454 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %455 = icmp ne %struct.buffer_head** %454, null
  br i1 %455, label %456, label %478

456:                                              ; preds = %453
  store i32 0, i32* %10, align 4
  br label %457

457:                                              ; preds = %468, %456
  %458 = load i32, i32* %10, align 4
  %459 = load i32, i32* %8, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %471

461:                                              ; preds = %457
  %462 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %463 = load i32, i32* %10, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %462, i64 %464
  %466 = load %struct.buffer_head*, %struct.buffer_head** %465, align 8
  %467 = call i32 @brelse(%struct.buffer_head* %466)
  br label %468

468:                                              ; preds = %461
  %469 = load i32, i32* %10, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %10, align 4
  br label %457

471:                                              ; preds = %457
  %472 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %473 = icmp ne %struct.buffer_head** %472, %14
  br i1 %473, label %474, label %477

474:                                              ; preds = %471
  %475 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %476 = call i32 @kfree(%struct.buffer_head** %475)
  br label %477

477:                                              ; preds = %474, %471
  br label %478

478:                                              ; preds = %477, %453
  %479 = load i32, i32* %9, align 4
  ret i32 %479
}

declare dso_local i32 @mb_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local %struct.buffer_head** @kzalloc(i32, i32) #1

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @bitmap_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_init_block_bitmap(%struct.super_block*, %struct.buffer_head*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @set_bitmap_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ext4_mb_generate_buddy(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ext4_mb_generate_from_pa(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @ext4_mb_generate_from_freelist(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
