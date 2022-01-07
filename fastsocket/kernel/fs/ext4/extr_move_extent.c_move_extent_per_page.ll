; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_move_extent_per_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_move_extent_per_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.TYPE_4__*, %struct.address_space* }
%struct.TYPE_4__ = type { i64 }
%struct.address_space = type { %struct.address_space_operations* }
%struct.address_space_operations = type { i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i32 (%struct.file*, %struct.page*)* }
%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@KERNEL_DS = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i32, i32, i32, i32, i32*)* @move_extent_per_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_extent_per_page(%struct.file* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.address_space*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.address_space_operations*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %35 = load %struct.file*, %struct.file** %9, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %16, align 8
  %40 = load %struct.inode*, %struct.inode** %16, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  %42 = load %struct.address_space*, %struct.address_space** %41, align 8
  store %struct.address_space* %42, %struct.address_space** %17, align 8
  store %struct.page* null, %struct.page** %19, align 8
  %43 = load %struct.address_space*, %struct.address_space** %17, align 8
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %43, i32 0, i32 0
  %45 = load %struct.address_space_operations*, %struct.address_space_operations** %44, align 8
  store %struct.address_space_operations* %45, %struct.address_space_operations** %20, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %23, align 8
  %50 = load %struct.inode*, %struct.inode** %16, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %55 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %56 = load %struct.inode*, %struct.inode** %16, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %55, %58
  store i32 %59, i32* %34, align 4
  %60 = load %struct.inode*, %struct.inode** %16, align 8
  %61 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %60)
  %62 = mul nsw i32 %61, 2
  store i32 %62, i32* %31, align 4
  %63 = load %struct.inode*, %struct.inode** %16, align 8
  %64 = load i32, i32* %31, align 4
  %65 = call i32* @ext4_journal_start(%struct.inode* %63, i32 %64)
  store i32* %65, i32** %21, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %7
  %70 = load i32*, i32** %21, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  %72 = load i32*, i32** %15, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %8, align 4
  br label %303

73:                                               ; preds = %7
  %74 = call i32 (...) @get_fs()
  %75 = load i32, i32* @KERNEL_DS, align 4
  %76 = call i64 @segment_eq(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %80 = load i32, i32* %25, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %25, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %34, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load i32*, i32** %21, align 8
  %92 = load %struct.inode*, %struct.inode** %16, align 8
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @mext_replace_branches(i32* %91, %struct.inode* %92, %struct.inode* %93, i32 %94, i32 %95, i32* %96)
  store i32 %97, i32* %33, align 4
  br label %293

98:                                               ; preds = %82
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.inode*, %struct.inode** %16, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = zext i32 %103 to i64
  %105 = shl i64 %100, %104
  store i64 %105, i64* %23, align 8
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.inode*, %struct.inode** %16, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.inode*, %struct.inode** %16, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %113, %116
  %118 = icmp eq i32 %109, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %98
  %120 = load %struct.inode*, %struct.inode** %16, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %24, align 8
  %125 = sub i64 %124, 1
  %126 = and i64 %123, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %26, align 4
  %128 = load i32, i32* %26, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load i64, i64* %24, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %26, align 4
  br label %133

133:                                              ; preds = %130, %119
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load %struct.inode*, %struct.inode** %16, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %136, %139
  %141 = add i32 %134, %140
  store i32 %141, i32* %27, align 4
  br label %148

142:                                              ; preds = %98
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.inode*, %struct.inode** %16, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 %143, %146
  store i32 %147, i32* %27, align 4
  br label %148

148:                                              ; preds = %142, %133
  %149 = load i32, i32* %27, align 4
  store i32 %149, i32* %28, align 4
  %150 = load %struct.address_space_operations*, %struct.address_space_operations** %20, align 8
  %151 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %150, i32 0, i32 0
  %152 = load i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)** %151, align 8
  %153 = load %struct.file*, %struct.file** %9, align 8
  %154 = load %struct.address_space*, %struct.address_space** %17, align 8
  %155 = load i64, i64* %23, align 8
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %25, align 4
  %158 = call i32 %152(%struct.file* %153, %struct.address_space* %154, i64 %155, i32 %156, i32 %157, %struct.page** %19, i8** %29)
  %159 = load i32*, i32** %15, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32*, i32** %15, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  br label %275

167:                                              ; preds = %148
  %168 = load %struct.page*, %struct.page** %19, align 8
  %169 = call i32 @PageUptodate(%struct.page* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %167
  %172 = load %struct.address_space*, %struct.address_space** %17, align 8
  %173 = getelementptr inbounds %struct.address_space, %struct.address_space* %172, i32 0, i32 0
  %174 = load %struct.address_space_operations*, %struct.address_space_operations** %173, align 8
  %175 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %174, i32 0, i32 2
  %176 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %175, align 8
  %177 = load %struct.file*, %struct.file** %9, align 8
  %178 = load %struct.page*, %struct.page** %19, align 8
  %179 = call i32 %176(%struct.file* %177, %struct.page* %178)
  %180 = load %struct.page*, %struct.page** %19, align 8
  %181 = call i32 @lock_page(%struct.page* %180)
  br label %182

182:                                              ; preds = %171, %167
  %183 = load %struct.page*, %struct.page** %19, align 8
  %184 = call i32 @wait_on_page_writeback(%struct.page* %183)
  %185 = load %struct.page*, %struct.page** %19, align 8
  %186 = call i32 @try_to_release_page(%struct.page* %185, i32 0)
  %187 = load i32*, i32** %21, align 8
  %188 = load %struct.inode*, %struct.inode** %16, align 8
  %189 = load %struct.inode*, %struct.inode** %10, align 8
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @mext_replace_branches(i32* %187, %struct.inode* %188, %struct.inode* %189, i32 %190, i32 %191, i32* %32)
  store i32 %192, i32* %33, align 4
  %193 = load i32, i32* %32, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %182
  %196 = load i32, i32* %33, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i32, i32* %33, align 4
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.inode*, %struct.inode** %16, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = shl i32 %200, %203
  store i32 %204, i32* %28, align 4
  br label %206

205:                                              ; preds = %195
  br label %275

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %182
  %208 = load %struct.page*, %struct.page** %19, align 8
  %209 = call i32 @page_has_buffers(%struct.page* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = load %struct.page*, %struct.page** %19, align 8
  %213 = load %struct.inode*, %struct.inode** %16, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = shl i32 1, %215
  %217 = call i32 @create_empty_buffers(%struct.page* %212, i32 %216, i32 0)
  br label %218

218:                                              ; preds = %211, %207
  %219 = load %struct.page*, %struct.page** %19, align 8
  %220 = call %struct.buffer_head* @page_buffers(%struct.page* %219)
  store %struct.buffer_head* %220, %struct.buffer_head** %18, align 8
  store i32 0, i32* %30, align 4
  br label %221

221:                                              ; preds = %229, %218
  %222 = load i32, i32* %30, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %227 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %226, i32 0, i32 0
  %228 = load %struct.buffer_head*, %struct.buffer_head** %227, align 8
  store %struct.buffer_head* %228, %struct.buffer_head** %18, align 8
  br label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %30, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %30, align 4
  br label %221

232:                                              ; preds = %221
  store i32 0, i32* %30, align 4
  br label %233

233:                                              ; preds = %259, %232
  %234 = load i32, i32* %30, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %262

237:                                              ; preds = %233
  %238 = load %struct.inode*, %struct.inode** %16, align 8
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* %30, align 4
  %241 = add nsw i32 %239, %240
  %242 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %243 = call i32 @ext4_get_block(%struct.inode* %238, i32 %241, %struct.buffer_head* %242, i32 0)
  %244 = load i32*, i32** %15, align 8
  store i32 %243, i32* %244, align 4
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %237
  br label %275

249:                                              ; preds = %237
  %250 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %251 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %250, i32 0, i32 0
  %252 = load %struct.buffer_head*, %struct.buffer_head** %251, align 8
  %253 = icmp ne %struct.buffer_head* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %256 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %255, i32 0, i32 0
  %257 = load %struct.buffer_head*, %struct.buffer_head** %256, align 8
  store %struct.buffer_head* %257, %struct.buffer_head** %18, align 8
  br label %258

258:                                              ; preds = %254, %249
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %30, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %30, align 4
  br label %233

262:                                              ; preds = %233
  %263 = load %struct.address_space_operations*, %struct.address_space_operations** %20, align 8
  %264 = getelementptr inbounds %struct.address_space_operations, %struct.address_space_operations* %263, i32 0, i32 1
  %265 = load i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)** %264, align 8
  %266 = load %struct.file*, %struct.file** %9, align 8
  %267 = load %struct.address_space*, %struct.address_space** %17, align 8
  %268 = load i64, i64* %23, align 8
  %269 = load i32, i32* %27, align 4
  %270 = load i32, i32* %28, align 4
  %271 = load %struct.page*, %struct.page** %19, align 8
  %272 = load i8*, i8** %29, align 8
  %273 = call i32 %265(%struct.file* %266, %struct.address_space* %267, i64 %268, i32 %269, i32 %270, %struct.page* %271, i8* %272)
  %274 = load i32*, i32** %15, align 8
  store i32 %273, i32* %274, align 4
  store %struct.page* null, %struct.page** %19, align 8
  br label %275

275:                                              ; preds = %262, %248, %205, %166
  %276 = load %struct.page*, %struct.page** %19, align 8
  %277 = ptrtoint %struct.page* %276 to i32
  %278 = call i64 @unlikely(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %275
  %281 = load %struct.page*, %struct.page** %19, align 8
  %282 = call i64 @PageLocked(%struct.page* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %280
  %285 = load %struct.page*, %struct.page** %19, align 8
  %286 = call i32 @unlock_page(%struct.page* %285)
  br label %287

287:                                              ; preds = %284, %280
  %288 = load %struct.page*, %struct.page** %19, align 8
  %289 = call i32 @page_cache_release(%struct.page* %288)
  %290 = load i32*, i32** %21, align 8
  %291 = call i32 @ext4_journal_stop(i32* %290)
  br label %292

292:                                              ; preds = %287, %275
  br label %293

293:                                              ; preds = %292, %90
  %294 = load i32*, i32** %21, align 8
  %295 = call i32 @ext4_journal_stop(i32* %294)
  %296 = load i32, i32* %32, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load i32, i32* %32, align 4
  %300 = load i32*, i32** %15, align 8
  store i32 %299, i32* %300, align 4
  br label %301

301:                                              ; preds = %298, %293
  %302 = load i32, i32* %33, align 4
  store i32 %302, i32* %8, align 4
  br label %303

303:                                              ; preds = %301, %69
  %304 = load i32, i32* %8, align 4
  ret i32 %304
}

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @segment_eq(i32, i32) #1

declare dso_local i32 @get_fs(...) #1

declare dso_local i32 @mext_replace_branches(i32*, %struct.inode*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @ext4_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @PageLocked(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
