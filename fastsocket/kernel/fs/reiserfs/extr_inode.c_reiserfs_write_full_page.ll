; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_full_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_full_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.page = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32, i64 }
%struct.writeback_control = type { i64, i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }
%struct.reiserfs_transaction_handle = type { i64 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@BH_Dirty = common dso_local global i32 0, align 4
@BH_Uptodate = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @reiserfs_write_full_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_write_full_page(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.reiserfs_transaction_handle, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %6, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @PageChecked(%struct.page* %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %17, align 8
  %37 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %38 = load %struct.super_block*, %struct.super_block** %17, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %18, align 4
  %42 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %16, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PF_MEMALLOC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %53, %struct.page* %54)
  %56 = load %struct.page*, %struct.page** %4, align 8
  %57 = call i32 @unlock_page(%struct.page* %56)
  store i32 0, i32* %3, align 4
  br label %404

58:                                               ; preds = %45, %2
  %59 = load %struct.page*, %struct.page** %4, align 8
  %60 = call i32 @page_has_buffers(%struct.page* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load %struct.page*, %struct.page** %4, align 8
  %64 = load %struct.super_block*, %struct.super_block** %17, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BH_Dirty, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* @BH_Uptodate, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = call i32 @create_empty_buffers(%struct.page* %63, i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %62, %58
  %74 = load %struct.page*, %struct.page** %4, align 8
  %75 = call %struct.buffer_head* @page_buffers(%struct.page* %74)
  store %struct.buffer_head* %75, %struct.buffer_head** %11, align 8
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %73
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = and i64 %84, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %19, align 4
  %90 = load %struct.page*, %struct.page** %4, align 8
  %91 = getelementptr inbounds %struct.page, %struct.page* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  %95 = icmp uge i64 %92, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96, %81
  %100 = load %struct.page*, %struct.page** %4, align 8
  %101 = call i32 @unlock_page(%struct.page* %100)
  store i32 0, i32* %3, align 4
  br label %404

102:                                              ; preds = %96
  %103 = load %struct.page*, %struct.page** %4, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %106 = call i32 @zero_user_segment(%struct.page* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %73
  %108 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %108, %struct.buffer_head** %12, align 8
  %109 = load %struct.page*, %struct.page** %4, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %113 = load %struct.super_block*, %struct.super_block** %17, align 8
  %114 = getelementptr inbounds %struct.super_block, %struct.super_block* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %112, %115
  %117 = shl i64 %111, %116
  store i64 %117, i64* %9, align 8
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = call i32 @i_size_read(%struct.inode* %118)
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = ashr i32 %120, %123
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %10, align 8
  br label %126

126:                                              ; preds = %170, %107
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = icmp ugt i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %132 = call i32 @clear_buffer_dirty(%struct.buffer_head* %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %134 = call i32 @set_buffer_uptodate(%struct.buffer_head* %133)
  br label %164

135:                                              ; preds = %126
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %140 = call i64 @buffer_dirty(%struct.buffer_head* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %138, %135
  %143 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %144 = call i64 @buffer_mapped(%struct.buffer_head* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %148 = call i64 @buffer_mapped(%struct.buffer_head* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %146
  %151 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %152 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150, %142
  %156 = load %struct.inode*, %struct.inode** %6, align 8
  %157 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @map_block_for_writepage(%struct.inode* %156, %struct.buffer_head* %157, i64 %158)
  store i32 %159, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %335

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %150, %146, %138
  br label %164

164:                                              ; preds = %163, %130
  %165 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %166 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %165, i32 0, i32 1
  %167 = load %struct.buffer_head*, %struct.buffer_head** %166, align 8
  store %struct.buffer_head* %167, %struct.buffer_head** %12, align 8
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %170

170:                                              ; preds = %164
  %171 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %172 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %173 = icmp ne %struct.buffer_head* %171, %172
  br i1 %173, label %126, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %174
  %178 = load %struct.page*, %struct.page** %4, align 8
  %179 = call i32 @ClearPageChecked(%struct.page* %178)
  %180 = load %struct.super_block*, %struct.super_block** %17, align 8
  %181 = call i32 @reiserfs_write_lock(%struct.super_block* %180)
  %182 = load %struct.super_block*, %struct.super_block** %17, align 8
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 1
  %185 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %16, %struct.super_block* %182, i32 %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %177
  %189 = load %struct.super_block*, %struct.super_block** %17, align 8
  %190 = call i32 @reiserfs_write_unlock(%struct.super_block* %189)
  br label %335

191:                                              ; preds = %177
  %192 = load %struct.inode*, %struct.inode** %6, align 8
  %193 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %192)
  br label %194

194:                                              ; preds = %191, %174
  br label %195

195:                                              ; preds = %256, %194
  %196 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %197 = call i32 @get_bh(%struct.buffer_head* %196)
  %198 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %199 = call i64 @buffer_mapped(%struct.buffer_head* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  br label %256

202:                                              ; preds = %195
  %203 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %204 = call i64 @buffer_mapped(%struct.buffer_head* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %208 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %256

212:                                              ; preds = %206, %202
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.super_block*, %struct.super_block** %17, align 8
  %217 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %218 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %216, %struct.buffer_head* %217, i32 1)
  %219 = load %struct.super_block*, %struct.super_block** %17, align 8
  %220 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %221 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %16, %struct.super_block* %219, %struct.buffer_head* %220)
  br label %256

222:                                              ; preds = %212
  %223 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %224 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @WB_SYNC_NONE, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %230 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228, %222
  %234 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %235 = call i32 @lock_buffer(%struct.buffer_head* %234)
  br label %245

236:                                              ; preds = %228
  %237 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %238 = call i32 @trylock_buffer(%struct.buffer_head* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %242 = load %struct.page*, %struct.page** %4, align 8
  %243 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %241, %struct.page* %242)
  br label %256

244:                                              ; preds = %236
  br label %245

245:                                              ; preds = %244, %233
  %246 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %247 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %251 = call i32 @mark_buffer_async_write(%struct.buffer_head* %250)
  br label %255

252:                                              ; preds = %245
  %253 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %254 = call i32 @unlock_buffer(%struct.buffer_head* %253)
  br label %255

255:                                              ; preds = %252, %249
  br label %256

256:                                              ; preds = %255, %240, %215, %211, %201
  %257 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %258 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %257, i32 0, i32 1
  %259 = load %struct.buffer_head*, %struct.buffer_head** %258, align 8
  store %struct.buffer_head* %259, %struct.buffer_head** %12, align 8
  %260 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %261 = icmp ne %struct.buffer_head* %259, %260
  br i1 %261, label %195, label %262

262:                                              ; preds = %256
  %263 = load i32, i32* %15, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %262
  %266 = load %struct.super_block*, %struct.super_block** %17, align 8
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, 1
  %269 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %16, %struct.super_block* %266, i32 %268)
  store i32 %269, i32* %8, align 4
  %270 = load %struct.super_block*, %struct.super_block** %17, align 8
  %271 = call i32 @reiserfs_write_unlock(%struct.super_block* %270)
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %265
  br label %335

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %275, %262
  %277 = load %struct.page*, %struct.page** %4, align 8
  %278 = call i32 @PageWriteback(%struct.page* %277)
  %279 = call i32 @BUG_ON(i32 %278)
  %280 = load %struct.page*, %struct.page** %4, align 8
  %281 = call i32 @set_page_writeback(%struct.page* %280)
  %282 = load %struct.page*, %struct.page** %4, align 8
  %283 = call i32 @unlock_page(%struct.page* %282)
  br label %284

284:                                              ; preds = %301, %276
  %285 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %286 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %285, i32 0, i32 1
  %287 = load %struct.buffer_head*, %struct.buffer_head** %286, align 8
  store %struct.buffer_head* %287, %struct.buffer_head** %20, align 8
  %288 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %289 = call i64 @buffer_async_write(%struct.buffer_head* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = load i32, i32* @WRITE, align 4
  %293 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %294 = call i32 @submit_bh(i32 %292, %struct.buffer_head* %293)
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  br label %297

297:                                              ; preds = %291, %284
  %298 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %299 = call i32 @put_bh(%struct.buffer_head* %298)
  %300 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  store %struct.buffer_head* %300, %struct.buffer_head** %12, align 8
  br label %301

301:                                              ; preds = %297
  %302 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %303 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %304 = icmp ne %struct.buffer_head* %302, %303
  br i1 %304, label %284, label %305

305:                                              ; preds = %301
  store i32 0, i32* %8, align 4
  br label %306

306:                                              ; preds = %403, %305
  %307 = load i32, i32* %14, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %333

309:                                              ; preds = %306
  %310 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %310, %struct.buffer_head** %12, align 8
  br label %311

311:                                              ; preds = %320, %309
  %312 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %313 = call i32 @buffer_uptodate(%struct.buffer_head* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %311
  store i32 1, i32* %13, align 4
  br label %324

316:                                              ; preds = %311
  %317 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %318 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %317, i32 0, i32 1
  %319 = load %struct.buffer_head*, %struct.buffer_head** %318, align 8
  store %struct.buffer_head* %319, %struct.buffer_head** %12, align 8
  br label %320

320:                                              ; preds = %316
  %321 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %322 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %323 = icmp ne %struct.buffer_head* %321, %322
  br i1 %323, label %311, label %324

324:                                              ; preds = %320, %315
  %325 = load i32, i32* %13, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = load %struct.page*, %struct.page** %4, align 8
  %329 = call i32 @SetPageUptodate(%struct.page* %328)
  br label %330

330:                                              ; preds = %327, %324
  %331 = load %struct.page*, %struct.page** %4, align 8
  %332 = call i32 @end_page_writeback(%struct.page* %331)
  br label %333

333:                                              ; preds = %330, %306
  %334 = load i32, i32* %8, align 4
  store i32 %334, i32* %3, align 4
  br label %404

335:                                              ; preds = %274, %188, %161
  %336 = load %struct.page*, %struct.page** %4, align 8
  %337 = call i32 @ClearPageUptodate(%struct.page* %336)
  %338 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %338, %struct.buffer_head** %12, align 8
  br label %339

339:                                              ; preds = %366, %335
  %340 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %341 = call i32 @get_bh(%struct.buffer_head* %340)
  %342 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %343 = call i64 @buffer_mapped(%struct.buffer_head* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %359

345:                                              ; preds = %339
  %346 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %347 = call i64 @buffer_dirty(%struct.buffer_head* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %359

349:                                              ; preds = %345
  %350 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %351 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %349
  %355 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %356 = call i32 @lock_buffer(%struct.buffer_head* %355)
  %357 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %358 = call i32 @mark_buffer_async_write(%struct.buffer_head* %357)
  br label %362

359:                                              ; preds = %349, %345, %339
  %360 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %361 = call i32 @clear_buffer_dirty(%struct.buffer_head* %360)
  br label %362

362:                                              ; preds = %359, %354
  %363 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %364 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %363, i32 0, i32 1
  %365 = load %struct.buffer_head*, %struct.buffer_head** %364, align 8
  store %struct.buffer_head* %365, %struct.buffer_head** %12, align 8
  br label %366

366:                                              ; preds = %362
  %367 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %368 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %369 = icmp ne %struct.buffer_head* %367, %368
  br i1 %369, label %339, label %370

370:                                              ; preds = %366
  %371 = load %struct.page*, %struct.page** %4, align 8
  %372 = call i32 @SetPageError(%struct.page* %371)
  %373 = load %struct.page*, %struct.page** %4, align 8
  %374 = call i32 @PageWriteback(%struct.page* %373)
  %375 = call i32 @BUG_ON(i32 %374)
  %376 = load %struct.page*, %struct.page** %4, align 8
  %377 = call i32 @set_page_writeback(%struct.page* %376)
  %378 = load %struct.page*, %struct.page** %4, align 8
  %379 = call i32 @unlock_page(%struct.page* %378)
  br label %380

380:                                              ; preds = %399, %370
  %381 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %382 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %381, i32 0, i32 1
  %383 = load %struct.buffer_head*, %struct.buffer_head** %382, align 8
  store %struct.buffer_head* %383, %struct.buffer_head** %21, align 8
  %384 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %385 = call i64 @buffer_async_write(%struct.buffer_head* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %380
  %388 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %389 = call i32 @clear_buffer_dirty(%struct.buffer_head* %388)
  %390 = load i32, i32* @WRITE, align 4
  %391 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %392 = call i32 @submit_bh(i32 %390, %struct.buffer_head* %391)
  %393 = load i32, i32* %14, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %14, align 4
  br label %395

395:                                              ; preds = %387, %380
  %396 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %397 = call i32 @put_bh(%struct.buffer_head* %396)
  %398 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %398, %struct.buffer_head** %12, align 8
  br label %399

399:                                              ; preds = %395
  %400 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %401 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %402 = icmp ne %struct.buffer_head* %400, %401
  br i1 %402, label %380, label %403

403:                                              ; preds = %399
  br label %306

404:                                              ; preds = %333, %99, %52
  %405 = load i32, i32* %3, align 4
  ret i32 %405
}

declare dso_local i32 @PageChecked(%struct.page*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @map_block_for_writepage(%struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i64 @buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
