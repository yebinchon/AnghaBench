; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_punch_hole.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_punch_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i64 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_punch_hole(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 5
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 4
  %25 = load %struct.address_space*, %struct.address_space** %24, align 8
  store %struct.address_space* %25, %struct.address_space** %11, align 8
  store i32 0, i32* %19, align 4
  %26 = load %struct.address_space*, %struct.address_space** %11, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %3
  %31 = load %struct.address_space*, %struct.address_space** %11, align 8
  %32 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %33 = call i64 @mapping_tagged(%struct.address_space* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.address_space*, %struct.address_space** %11, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @filemap_write_and_wait_range(%struct.address_space* %36, i32 %37, i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %19, align 4
  store i32 %46, i32* %4, align 4
  br label %308

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %30, %3
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i64 @IS_APPEND(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i64 @IS_IMMUTABLE(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %48
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %19, align 4
  br label %303

62:                                               ; preds = %55
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call i64 @IS_SWAPFILE(%struct.inode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @ETXTBSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %19, align 4
  br label %303

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %303

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %92, %94
  %96 = sub nsw i32 %89, %95
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %84, %76
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %102 = add nsw i32 %100, %101
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %110 = ashr i32 %108, %109
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %113 = shl i32 %111, %112
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %116 = shl i32 %114, %115
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %99
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %17, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @truncate_pagecache_range(%struct.inode* %121, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %120, %99
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = call i32 @flush_aio_dio_completed_IO(%struct.inode* %127)
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %303

132:                                              ; preds = %126
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %133)
  store i32 %134, i32* %18, align 4
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = load i32, i32* %18, align 4
  %137 = call i32* @ext4_journal_start(%struct.inode* %135, i32 %136)
  store i32* %137, i32** %12, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = call i64 @IS_ERR(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @PTR_ERR(i32* %142)
  store i32 %143, i32* %19, align 4
  br label %303

144:                                              ; preds = %132
  %145 = load i32*, i32** %12, align 8
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = call i32 @ext4_orphan_add(i32* %145, %struct.inode* %146)
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %288

151:                                              ; preds = %144
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load i32*, i32** %12, align 8
  %157 = load %struct.address_space*, %struct.address_space** %11, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @ext4_discard_partial_page_buffers(i32* %156, %struct.address_space* %157, i32 %158, i32 %159, i32 0)
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %288

164:                                              ; preds = %155
  br label %200

165:                                              ; preds = %151
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %6, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load i32*, i32** %12, align 8
  %173 = load %struct.address_space*, %struct.address_space** %11, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @ext4_discard_partial_page_buffers(i32* %172, %struct.address_space* %173, i32 %174, i32 %175, i32 0)
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %19, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %288

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %165
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %17, align 4
  %186 = sub nsw i32 %184, %185
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %181
  %190 = load i32*, i32** %12, align 8
  %191 = load %struct.address_space*, %struct.address_space** %11, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @ext4_discard_partial_page_buffers(i32* %190, %struct.address_space* %191, i32 %192, i32 %193, i32 0)
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  br label %288

198:                                              ; preds = %189
  br label %199

199:                                              ; preds = %198, %181
  br label %200

200:                                              ; preds = %199, %164
  %201 = load %struct.inode*, %struct.inode** %5, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %205 = ashr i32 %203, %204
  %206 = load i32, i32* %14, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %239

208:                                              ; preds = %200
  %209 = load %struct.inode*, %struct.inode** %5, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %213 = srem i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %239

215:                                              ; preds = %208
  %216 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %217 = load %struct.inode*, %struct.inode** %5, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %221 = sub nsw i32 %220, 1
  %222 = and i32 %219, %221
  %223 = sub nsw i32 %216, %222
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %15, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %215
  %227 = load i32*, i32** %12, align 8
  %228 = load %struct.address_space*, %struct.address_space** %11, align 8
  %229 = load %struct.inode*, %struct.inode** %5, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @ext4_discard_partial_page_buffers(i32* %227, %struct.address_space* %228, i32 %231, i32 %232, i32 0)
  store i32 %233, i32* %19, align 4
  %234 = load i32, i32* %19, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  br label %288

237:                                              ; preds = %226
  br label %238

238:                                              ; preds = %237, %215
  br label %239

239:                                              ; preds = %238, %208, %200
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.super_block*, %struct.super_block** %8, align 8
  %242 = getelementptr inbounds %struct.super_block, %struct.super_block* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %240, %243
  %245 = sub nsw i32 %244, 1
  %246 = load %struct.super_block*, %struct.super_block** %8, align 8
  %247 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %246)
  %248 = ashr i32 %245, %247
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %249, %250
  %252 = load %struct.super_block*, %struct.super_block** %8, align 8
  %253 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %252)
  %254 = ashr i32 %251, %253
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %239
  br label %288

259:                                              ; preds = %239
  %260 = load %struct.inode*, %struct.inode** %5, align 8
  %261 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %260)
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = call i32 @down_write(i32* %262)
  %264 = load %struct.inode*, %struct.inode** %5, align 8
  %265 = call i32 @ext4_ext_invalidate_cache(%struct.inode* %264)
  %266 = load %struct.inode*, %struct.inode** %5, align 8
  %267 = call i32 @ext4_discard_preallocations(%struct.inode* %266)
  %268 = load %struct.inode*, %struct.inode** %5, align 8
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %10, align 4
  %271 = sub nsw i32 %270, 1
  %272 = call i32 @ext4_ext_remove_space(%struct.inode* %268, i32 %269, i32 %271)
  store i32 %272, i32* %19, align 4
  %273 = load %struct.inode*, %struct.inode** %5, align 8
  %274 = call i32 @ext4_ext_invalidate_cache(%struct.inode* %273)
  %275 = load %struct.inode*, %struct.inode** %5, align 8
  %276 = call i32 @ext4_discard_preallocations(%struct.inode* %275)
  %277 = load %struct.inode*, %struct.inode** %5, align 8
  %278 = call i64 @IS_SYNC(%struct.inode* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %259
  %281 = load i32*, i32** %12, align 8
  %282 = call i32 @ext4_handle_sync(i32* %281)
  br label %283

283:                                              ; preds = %280, %259
  %284 = load %struct.inode*, %struct.inode** %5, align 8
  %285 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %284)
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = call i32 @up_write(i32* %286)
  br label %288

288:                                              ; preds = %283, %258, %236, %197, %179, %163, %150
  %289 = load i32*, i32** %12, align 8
  %290 = load %struct.inode*, %struct.inode** %5, align 8
  %291 = call i32 @ext4_orphan_del(i32* %289, %struct.inode* %290)
  %292 = load %struct.inode*, %struct.inode** %5, align 8
  %293 = call i32 @ext4_current_time(%struct.inode* %292)
  %294 = load %struct.inode*, %struct.inode** %5, align 8
  %295 = getelementptr inbounds %struct.inode, %struct.inode* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load %struct.inode*, %struct.inode** %5, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 3
  store i32 %293, i32* %297, align 4
  %298 = load i32*, i32** %12, align 8
  %299 = load %struct.inode*, %struct.inode** %5, align 8
  %300 = call i32 @ext4_mark_inode_dirty(i32* %298, %struct.inode* %299)
  %301 = load i32*, i32** %12, align 8
  %302 = call i32 @ext4_journal_stop(i32* %301)
  br label %303

303:                                              ; preds = %288, %141, %131, %75, %66, %59
  %304 = load %struct.inode*, %struct.inode** %5, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 1
  %306 = call i32 @mutex_unlock(i32* %305)
  %307 = load i32, i32* %19, align 4
  store i32 %307, i32* %4, align 4
  br label %308

308:                                              ; preds = %303, %45
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local i64 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @flush_aio_dio_completed_IO(%struct.inode*) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_discard_partial_page_buffers(i32*, %struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_ext_invalidate_cache(%struct.inode*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_ext_remove_space(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
