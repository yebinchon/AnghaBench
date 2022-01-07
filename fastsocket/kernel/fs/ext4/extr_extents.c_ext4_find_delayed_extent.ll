; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_find_delayed_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_find_delayed_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }
%struct.ext4_ext_cache = type { i32, i32, i64 }
%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i8 0, align 1
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXT_INIT_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_ext_cache*)* @ext4_find_delayed_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_find_delayed_extent(%struct.inode* %0, %struct.ext4_ext_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_ext_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_ext_cache* %1, %struct.ext4_ext_cache** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %10, align 1
  store i32 0, i32* %11, align 4
  store %struct.page** null, %struct.page*** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.page** @kmalloc(i32 %29, i32 %30)
  store %struct.page** %31, %struct.page*** %15, align 8
  %32 = load %struct.page**, %struct.page*** %15, align 8
  %33 = icmp eq %struct.page** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %338

37:                                               ; preds = %2
  %38 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %5, align 8
  %39 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = trunc i32 %40 to i8
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %42, %44
  %46 = load i8, i8* @PAGE_SHIFT, align 1
  %47 = zext i8 %46 to i32
  %48 = ashr i32 %45, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %306, %37
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %12, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.page**, %struct.page*** %15, align 8
  %57 = call i32 @find_get_pages_tag(i32 %53, i32* %13, i32 %54, i32 %55, %struct.page** %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %148, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %268, %147, %135, %112, %104, %65
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.page**, %struct.page*** %15, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 %74
  %76 = load %struct.page*, %struct.page** %75, align 8
  %77 = call i32 @page_cache_release(%struct.page* %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %67

81:                                               ; preds = %67
  %82 = load %struct.page**, %struct.page*** %15, align 8
  %83 = call i32 @kfree(%struct.page** %82)
  %84 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %84, i32* %3, align 4
  br label %338

85:                                               ; preds = %62
  %86 = load %struct.page**, %struct.page*** %15, align 8
  %87 = getelementptr inbounds %struct.page*, %struct.page** %86, i64 0
  %88 = load %struct.page*, %struct.page** %87, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i8
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @PAGE_SHIFT, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %92, %94
  %96 = load i8, i8* %10, align 1
  %97 = zext i8 %96 to i32
  %98 = ashr i32 %95, %97
  store i32 %98, i32* %11, align 4
  %99 = load %struct.page**, %struct.page*** %15, align 8
  %100 = getelementptr inbounds %struct.page*, %struct.page** %99, i64 0
  %101 = load %struct.page*, %struct.page** %100, align 8
  %102 = call i32 @page_has_buffers(%struct.page* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %85
  br label %66

105:                                              ; preds = %85
  %106 = load %struct.page**, %struct.page*** %15, align 8
  %107 = getelementptr inbounds %struct.page*, %struct.page** %106, i64 0
  %108 = load %struct.page*, %struct.page** %107, align 8
  %109 = call %struct.buffer_head* @page_buffers(%struct.page* %108)
  store %struct.buffer_head* %109, %struct.buffer_head** %17, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %111 = icmp ne %struct.buffer_head* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %66

113:                                              ; preds = %105
  %114 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %114, %struct.buffer_head** %16, align 8
  br label %115

115:                                              ; preds = %143, %113
  %116 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %117 = call i64 @buffer_mapped(%struct.buffer_head* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %5, align 8
  %122 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %120, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %5, align 8
  %128 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %5, align 8
  %131 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %129, %132
  %134 = icmp sgt i32 %126, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %66

136:                                              ; preds = %125
  br label %167

137:                                              ; preds = %119, %115
  %138 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 0
  %140 = load %struct.buffer_head*, %struct.buffer_head** %139, align 8
  store %struct.buffer_head* %140, %struct.buffer_head** %16, align 8
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %137
  %144 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %146 = icmp ne %struct.buffer_head* %144, %145
  br i1 %146, label %115, label %147

147:                                              ; preds = %143
  br label %66

148:                                              ; preds = %49
  %149 = load i32, i32* %7, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load %struct.page**, %struct.page*** %15, align 8
  %153 = getelementptr inbounds %struct.page*, %struct.page** %152, i64 0
  %154 = load %struct.page*, %struct.page** %153, align 8
  %155 = getelementptr inbounds %struct.page, %struct.page* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %151
  %160 = load %struct.page**, %struct.page*** %15, align 8
  %161 = getelementptr inbounds %struct.page*, %struct.page** %160, i64 0
  %162 = load %struct.page*, %struct.page** %161, align 8
  %163 = call %struct.buffer_head* @page_buffers(%struct.page* %162)
  store %struct.buffer_head* %163, %struct.buffer_head** %17, align 8
  br label %164

164:                                              ; preds = %159, %151, %148
  %165 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %165, %struct.buffer_head** %16, align 8
  br label %166

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166, %136
  %168 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %169 = icmp ne %struct.buffer_head* %168, null
  br i1 %169, label %170, label %263

170:                                              ; preds = %167
  %171 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %172 = call i64 @buffer_delay(%struct.buffer_head* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %263

174:                                              ; preds = %170
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %179, %174
  br label %185

185:                                              ; preds = %196, %184
  %186 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %187 = call i64 @buffer_delay(%struct.buffer_head* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  br label %271

190:                                              ; preds = %185
  %191 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %192 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %191, i32 0, i32 0
  %193 = load %struct.buffer_head*, %struct.buffer_head** %192, align 8
  store %struct.buffer_head* %193, %struct.buffer_head** %16, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %190
  %197 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %198 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %199 = icmp ne %struct.buffer_head* %197, %198
  br i1 %199, label %185, label %200

200:                                              ; preds = %196
  store i32 1, i32* %14, align 4
  br label %201

201:                                              ; preds = %259, %200
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %262

205:                                              ; preds = %201
  %206 = load %struct.page**, %struct.page*** %15, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.page*, %struct.page** %206, i64 %208
  %210 = load %struct.page*, %struct.page** %209, align 8
  %211 = call i32 @page_has_buffers(%struct.page* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %205
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  br label %262

214:                                              ; preds = %205
  %215 = load %struct.page**, %struct.page*** %15, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.page*, %struct.page** %215, i64 %217
  %219 = load %struct.page*, %struct.page** %218, align 8
  %220 = call %struct.buffer_head* @page_buffers(%struct.page* %219)
  store %struct.buffer_head* %220, %struct.buffer_head** %17, align 8
  %221 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %222 = icmp ne %struct.buffer_head* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %214
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  br label %262

224:                                              ; preds = %214
  %225 = load %struct.page**, %struct.page*** %15, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.page*, %struct.page** %225, i64 %227
  %229 = load %struct.page*, %struct.page** %228, align 8
  %230 = getelementptr inbounds %struct.page, %struct.page* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.page**, %struct.page*** %15, align 8
  %233 = getelementptr inbounds %struct.page*, %struct.page** %232, i64 0
  %234 = load %struct.page*, %struct.page** %233, align 8
  %235 = getelementptr inbounds %struct.page, %struct.page* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %236, %237
  %239 = icmp ne i32 %231, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %224
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  br label %262

241:                                              ; preds = %224
  %242 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* %242, %struct.buffer_head** %16, align 8
  br label %243

243:                                              ; preds = %254, %241
  %244 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %245 = call i64 @buffer_delay(%struct.buffer_head* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  br label %271

248:                                              ; preds = %243
  %249 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %250 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %249, i32 0, i32 0
  %251 = load %struct.buffer_head*, %struct.buffer_head** %250, align 8
  store %struct.buffer_head* %251, %struct.buffer_head** %16, align 8
  %252 = load i32, i32* %11, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %11, align 4
  br label %254

254:                                              ; preds = %248
  %255 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %256 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %257 = icmp ne %struct.buffer_head* %255, %256
  br i1 %257, label %243, label %258

258:                                              ; preds = %254
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %201

262:                                              ; preds = %240, %223, %213, %201
  br label %270

263:                                              ; preds = %170, %167
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %263
  br label %66

269:                                              ; preds = %263
  br label %270

270:                                              ; preds = %269, %262
  br label %271

271:                                              ; preds = %270, %247, %189
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %8, align 4
  %274 = sub nsw i32 %272, %273
  %275 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  %276 = call i32 @min(i32 %274, i32 %275)
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %18, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %307

280:                                              ; preds = %271
  %281 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %282 = icmp ne %struct.buffer_head* %281, null
  br i1 %282, label %283, label %307

283:                                              ; preds = %280
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  %286 = icmp ult i32 %284, %285
  br i1 %286, label %287, label %307

287:                                              ; preds = %283
  %288 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %289 = call i64 @buffer_delay(%struct.buffer_head* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %307

291:                                              ; preds = %287
  store i32 0, i32* %14, align 4
  br label %292

292:                                              ; preds = %303, %291
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* %7, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %292
  %297 = load %struct.page**, %struct.page*** %15, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.page*, %struct.page** %297, i64 %299
  %301 = load %struct.page*, %struct.page** %300, align 8
  %302 = call i32 @page_cache_release(%struct.page* %301)
  br label %303

303:                                              ; preds = %296
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %14, align 4
  br label %292

306:                                              ; preds = %292
  br label %49

307:                                              ; preds = %287, %283, %280, %271
  store i32 0, i32* %14, align 4
  br label %308

308:                                              ; preds = %319, %307
  %309 = load i32, i32* %14, align 4
  %310 = load i32, i32* %7, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  %313 = load %struct.page**, %struct.page*** %15, align 8
  %314 = load i32, i32* %14, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.page*, %struct.page** %313, i64 %315
  %317 = load %struct.page*, %struct.page** %316, align 8
  %318 = call i32 @page_cache_release(%struct.page* %317)
  br label %319

319:                                              ; preds = %312
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %14, align 4
  br label %308

322:                                              ; preds = %308
  %323 = load %struct.page**, %struct.page*** %15, align 8
  %324 = call i32 @kfree(%struct.page** %323)
  %325 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %5, align 8
  %326 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %322
  %330 = load i32, i32* %8, align 4
  %331 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %5, align 8
  %332 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 8
  %333 = load i32, i32* %9, align 4
  %334 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %5, align 8
  %335 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %329, %322
  %337 = load i32, i32* %8, align 4
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %336, %81, %34
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local i32 @find_get_pages_tag(i32, i32*, i32, i32, %struct.page**) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
