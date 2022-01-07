; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_do_generic_file_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_do_generic_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file_ra_state, %struct.address_space* }
%struct.file_ra_state = type { i32 }
%struct.address_space = type { %struct.TYPE_7__*, %struct.inode* }
%struct.TYPE_7__ = type { i32 (%struct.file*, %struct.page*)*, i32 (%struct.page*, %struct.TYPE_8__*, i64)* }
%struct.page = type { i32* }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@AOP_TRUNCATED_PAGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32*, %struct.TYPE_8__*, i64 (%struct.TYPE_8__*, %struct.page*, i64, i64)*)* @do_generic_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_generic_file_read(%struct.file* %0, i32* %1, %struct.TYPE_8__* %2, i64 (%struct.TYPE_8__*, %struct.page*, i64, i64)* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64 (%struct.TYPE_8__*, %struct.page*, i64, i64)*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.file_ra_state*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64 (%struct.TYPE_8__*, %struct.page*, i64, i64)* %3, i64 (%struct.TYPE_8__*, %struct.page*, i64, i64)** %8, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.address_space*, %struct.address_space** %24, align 8
  store %struct.address_space* %25, %struct.address_space** %9, align 8
  %26 = load %struct.address_space*, %struct.address_space** %9, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %10, align 8
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  store %struct.file_ra_state* %30, %struct.file_ra_state** %11, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %12, align 8
  %36 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %37 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %14, align 8
  %42 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %43 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %13, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %266, %251, %4
  %67 = call i32 (...) @cond_resched()
  br label %68

68:                                               ; preds = %369, %321, %297, %66
  %69 = load %struct.address_space*, %struct.address_space** %9, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call %struct.page* @find_get_page(%struct.address_space* %69, i64 %70)
  store %struct.page* %71, %struct.page** %18, align 8
  %72 = load %struct.page*, %struct.page** %18, align 8
  %73 = icmp ne %struct.page* %72, null
  br i1 %73, label %93, label %74

74:                                               ; preds = %68
  %75 = load %struct.address_space*, %struct.address_space** %9, align 8
  %76 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = sub i64 %79, %80
  %82 = call i32 @page_cache_sync_readahead(%struct.address_space* %75, %struct.file_ra_state* %76, %struct.file* %77, i64 %78, i64 %81)
  %83 = load %struct.address_space*, %struct.address_space** %9, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call %struct.page* @find_get_page(%struct.address_space* %83, i64 %84)
  store %struct.page* %85, %struct.page** %18, align 8
  %86 = load %struct.page*, %struct.page** %18, align 8
  %87 = icmp eq %struct.page* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %344

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %68
  %94 = load %struct.page*, %struct.page** %18, align 8
  %95 = call i64 @PageReadahead(%struct.page* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.address_space*, %struct.address_space** %9, align 8
  %99 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %100 = load %struct.file*, %struct.file** %5, align 8
  %101 = load %struct.page*, %struct.page** %18, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %12, align 8
  %105 = sub i64 %103, %104
  %106 = call i32 @page_cache_async_readahead(%struct.address_space* %98, %struct.file_ra_state* %99, %struct.file* %100, %struct.page* %101, i64 %102, i64 %105)
  br label %107

107:                                              ; preds = %97, %93
  %108 = load %struct.page*, %struct.page** %18, align 8
  %109 = call i64 @PageUptodate(%struct.page* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %151, label %111

111:                                              ; preds = %107
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = load %struct.address_space*, %struct.address_space** %9, align 8
  %119 = getelementptr inbounds %struct.address_space, %struct.address_space* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32 (%struct.page*, %struct.TYPE_8__*, i64)*, i32 (%struct.page*, %struct.TYPE_8__*, i64)** %121, align 8
  %123 = icmp ne i32 (%struct.page*, %struct.TYPE_8__*, i64)* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %117, %111
  br label %253

125:                                              ; preds = %117
  %126 = load %struct.page*, %struct.page** %18, align 8
  %127 = call i32 @trylock_page(%struct.page* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %253

130:                                              ; preds = %125
  %131 = load %struct.page*, %struct.page** %18, align 8
  %132 = getelementptr inbounds %struct.page, %struct.page* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %261

136:                                              ; preds = %130
  %137 = load %struct.address_space*, %struct.address_space** %9, align 8
  %138 = getelementptr inbounds %struct.address_space, %struct.address_space* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32 (%struct.page*, %struct.TYPE_8__*, i64)*, i32 (%struct.page*, %struct.TYPE_8__*, i64)** %140, align 8
  %142 = load %struct.page*, %struct.page** %18, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = load i64, i64* %15, align 8
  %145 = call i32 %141(%struct.page* %142, %struct.TYPE_8__* %143, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %136
  br label %261

148:                                              ; preds = %136
  %149 = load %struct.page*, %struct.page** %18, align 8
  %150 = call i32 @unlock_page(%struct.page* %149)
  br label %151

151:                                              ; preds = %148, %107
  br label %152

152:                                              ; preds = %337, %275, %151
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = call i32 @i_size_read(%struct.inode* %153)
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %20, align 4
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %158 = ashr i32 %156, %157
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %19, align 8
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i64, i64* %12, align 8
  %164 = load i64, i64* %19, align 8
  %165 = icmp ugt i64 %163, %164
  br label %166

166:                                              ; preds = %162, %152
  %167 = phi i1 [ true, %152 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.page*, %struct.page** %18, align 8
  %173 = call i32 @page_cache_release(%struct.page* %172)
  br label %375

174:                                              ; preds = %166
  %175 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %21, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %19, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load i32, i32* %20, align 4
  %182 = sub nsw i32 %181, 1
  %183 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %21, align 8
  %188 = load i64, i64* %21, align 8
  %189 = load i64, i64* %15, align 8
  %190 = icmp ule i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = load %struct.page*, %struct.page** %18, align 8
  %193 = call i32 @page_cache_release(%struct.page* %192)
  br label %375

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %194, %174
  %196 = load i64, i64* %21, align 8
  %197 = load i64, i64* %15, align 8
  %198 = sub i64 %196, %197
  store i64 %198, i64* %21, align 8
  %199 = load %struct.address_space*, %struct.address_space** %9, align 8
  %200 = call i64 @mapping_writably_mapped(%struct.address_space* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load %struct.page*, %struct.page** %18, align 8
  %204 = call i32 @flush_dcache_page(%struct.page* %203)
  br label %205

205:                                              ; preds = %202, %195
  %206 = load i64, i64* %14, align 8
  %207 = load i64, i64* %12, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = load i64, i64* %15, align 8
  %211 = load i32, i32* %16, align 4
  %212 = zext i32 %211 to i64
  %213 = icmp ne i64 %210, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %209, %205
  %215 = load %struct.page*, %struct.page** %18, align 8
  %216 = call i32 @mark_page_accessed(%struct.page* %215)
  br label %217

217:                                              ; preds = %214, %209
  %218 = load i64, i64* %12, align 8
  store i64 %218, i64* %14, align 8
  %219 = load i64 (%struct.TYPE_8__*, %struct.page*, i64, i64)*, i64 (%struct.TYPE_8__*, %struct.page*, i64, i64)** %8, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %221 = load %struct.page*, %struct.page** %18, align 8
  %222 = load i64, i64* %15, align 8
  %223 = load i64, i64* %21, align 8
  %224 = call i64 %219(%struct.TYPE_8__* %220, %struct.page* %221, i64 %222, i64 %223)
  store i64 %224, i64* %22, align 8
  %225 = load i64, i64* %22, align 8
  %226 = load i64, i64* %15, align 8
  %227 = add i64 %226, %225
  store i64 %227, i64* %15, align 8
  %228 = load i64, i64* %15, align 8
  %229 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %230 = zext i32 %229 to i64
  %231 = lshr i64 %228, %230
  %232 = load i64, i64* %12, align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* %12, align 8
  %234 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %235 = xor i32 %234, -1
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* %15, align 8
  %238 = and i64 %237, %236
  store i64 %238, i64* %15, align 8
  %239 = load i64, i64* %15, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %16, align 4
  %241 = load %struct.page*, %struct.page** %18, align 8
  %242 = call i32 @page_cache_release(%struct.page* %241)
  %243 = load i64, i64* %22, align 8
  %244 = load i64, i64* %21, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %217
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %66

252:                                              ; preds = %246, %217
  br label %375

253:                                              ; preds = %129, %124
  %254 = load %struct.page*, %struct.page** %18, align 8
  %255 = call i32 @lock_page_killable(%struct.page* %254)
  store i32 %255, i32* %17, align 4
  %256 = load i32, i32* %17, align 4
  %257 = call i64 @unlikely(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  br label %338

260:                                              ; preds = %253
  br label %261

261:                                              ; preds = %260, %147, %135
  %262 = load %struct.page*, %struct.page** %18, align 8
  %263 = getelementptr inbounds %struct.page, %struct.page* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = load %struct.page*, %struct.page** %18, align 8
  %268 = call i32 @unlock_page(%struct.page* %267)
  %269 = load %struct.page*, %struct.page** %18, align 8
  %270 = call i32 @page_cache_release(%struct.page* %269)
  br label %66

271:                                              ; preds = %261
  %272 = load %struct.page*, %struct.page** %18, align 8
  %273 = call i64 @PageUptodate(%struct.page* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load %struct.page*, %struct.page** %18, align 8
  %277 = call i32 @unlock_page(%struct.page* %276)
  br label %152

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %374, %278
  %280 = load %struct.page*, %struct.page** %18, align 8
  %281 = call i32 @ClearPageError(%struct.page* %280)
  %282 = load %struct.address_space*, %struct.address_space** %9, align 8
  %283 = getelementptr inbounds %struct.address_space, %struct.address_space* %282, i32 0, i32 0
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %285, align 8
  %287 = load %struct.file*, %struct.file** %5, align 8
  %288 = load %struct.page*, %struct.page** %18, align 8
  %289 = call i32 %286(%struct.file* %287, %struct.page* %288)
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %17, align 4
  %291 = call i64 @unlikely(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %279
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load %struct.page*, %struct.page** %18, align 8
  %299 = call i32 @page_cache_release(%struct.page* %298)
  br label %68

300:                                              ; preds = %293
  br label %338

301:                                              ; preds = %279
  %302 = load %struct.page*, %struct.page** %18, align 8
  %303 = call i64 @PageUptodate(%struct.page* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %337, label %305

305:                                              ; preds = %301
  %306 = load %struct.page*, %struct.page** %18, align 8
  %307 = call i32 @lock_page_killable(%struct.page* %306)
  store i32 %307, i32* %17, align 4
  %308 = load i32, i32* %17, align 4
  %309 = call i64 @unlikely(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %338

312:                                              ; preds = %305
  %313 = load %struct.page*, %struct.page** %18, align 8
  %314 = call i64 @PageUptodate(%struct.page* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %334, label %316

316:                                              ; preds = %312
  %317 = load %struct.page*, %struct.page** %18, align 8
  %318 = getelementptr inbounds %struct.page, %struct.page* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = icmp eq i32* %319, null
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.page*, %struct.page** %18, align 8
  %323 = call i32 @unlock_page(%struct.page* %322)
  %324 = load %struct.page*, %struct.page** %18, align 8
  %325 = call i32 @page_cache_release(%struct.page* %324)
  br label %68

326:                                              ; preds = %316
  %327 = load %struct.page*, %struct.page** %18, align 8
  %328 = call i32 @unlock_page(%struct.page* %327)
  %329 = load %struct.file*, %struct.file** %5, align 8
  %330 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %331 = call i32 @shrink_readahead_size_eio(%struct.file* %329, %struct.file_ra_state* %330)
  %332 = load i32, i32* @EIO, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %17, align 4
  br label %338

334:                                              ; preds = %312
  %335 = load %struct.page*, %struct.page** %18, align 8
  %336 = call i32 @unlock_page(%struct.page* %335)
  br label %337

337:                                              ; preds = %334, %301
  br label %152

338:                                              ; preds = %326, %311, %300, %259
  %339 = load i32, i32* %17, align 4
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 4
  %342 = load %struct.page*, %struct.page** %18, align 8
  %343 = call i32 @page_cache_release(%struct.page* %342)
  br label %375

344:                                              ; preds = %91
  %345 = load %struct.address_space*, %struct.address_space** %9, align 8
  %346 = call %struct.page* @page_cache_alloc_cold(%struct.address_space* %345)
  store %struct.page* %346, %struct.page** %18, align 8
  %347 = load %struct.page*, %struct.page** %18, align 8
  %348 = icmp ne %struct.page* %347, null
  br i1 %348, label %354, label %349

349:                                              ; preds = %344
  %350 = load i32, i32* @ENOMEM, align 4
  %351 = sub nsw i32 0, %350
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 4
  br label %375

354:                                              ; preds = %344
  %355 = load %struct.page*, %struct.page** %18, align 8
  %356 = load %struct.address_space*, %struct.address_space** %9, align 8
  %357 = load i64, i64* %12, align 8
  %358 = load i32, i32* @GFP_KERNEL, align 4
  %359 = call i32 @add_to_page_cache_lru(%struct.page* %355, %struct.address_space* %356, i64 %357, i32 %358)
  store i32 %359, i32* %17, align 4
  %360 = load i32, i32* %17, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %374

362:                                              ; preds = %354
  %363 = load %struct.page*, %struct.page** %18, align 8
  %364 = call i32 @page_cache_release(%struct.page* %363)
  %365 = load i32, i32* %17, align 4
  %366 = load i32, i32* @EEXIST, align 4
  %367 = sub nsw i32 0, %366
  %368 = icmp eq i32 %365, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %362
  br label %68

370:                                              ; preds = %362
  %371 = load i32, i32* %17, align 4
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 4
  br label %375

374:                                              ; preds = %354
  br label %279

375:                                              ; preds = %370, %349, %338, %252, %191, %171
  %376 = load i64, i64* %14, align 8
  %377 = trunc i64 %376 to i32
  %378 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %379 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %381 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %382 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = shl i32 %383, %380
  store i32 %384, i32* %382, align 4
  %385 = load i32, i32* %16, align 4
  %386 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %387 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = or i32 %388, %385
  store i32 %389, i32* %387, align 4
  %390 = load i64, i64* %12, align 8
  %391 = trunc i64 %390 to i32
  %392 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %393 = shl i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = load i64, i64* %15, align 8
  %396 = add i64 %394, %395
  %397 = trunc i64 %396 to i32
  %398 = load i32*, i32** %6, align 8
  store i32 %397, i32* %398, align 4
  %399 = load %struct.file*, %struct.file** %5, align 8
  %400 = call i32 @file_accessed(%struct.file* %399)
  ret void
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i64) #1

declare dso_local i32 @page_cache_sync_readahead(%struct.address_space*, %struct.file_ra_state*, %struct.file*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @PageReadahead(%struct.page*) #1

declare dso_local i32 @page_cache_async_readahead(%struct.address_space*, %struct.file_ra_state*, %struct.file*, %struct.page*, i64, i64) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @mapping_writably_mapped(%struct.address_space*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @lock_page_killable(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @shrink_readahead_size_eio(%struct.file*, %struct.file_ra_state*) #1

declare dso_local %struct.page* @page_cache_alloc_cold(%struct.address_space*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i64, i32) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
