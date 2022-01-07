; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_bnode.c_hfsplus_bnode_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64 }
%struct.page = type { i32 }

@DBG_BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"movebytes: %u,%u,%u\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_move(%struct.hfs_bnode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @DBG_BNODE_MOD, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dprint(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %363

24:                                               ; preds = %4
  %25 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %26 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %33 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %209

42:                                               ; preds = %24
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %48 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %47, i32 0, i32 0
  %49 = load %struct.page**, %struct.page*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.page*, %struct.page** %49, i64 %53
  store %struct.page** %54, %struct.page*** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %65 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %64, i32 0, i32 0
  %66 = load %struct.page**, %struct.page*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.page*, %struct.page** %66, i64 %70
  store %struct.page** %71, %struct.page*** %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %138

80:                                               ; preds = %42
  br label %81

81:                                               ; preds = %85, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %81
  %86 = load %struct.page**, %struct.page*** %10, align 8
  %87 = load %struct.page*, %struct.page** %86, align 8
  %88 = call i8* @kmap(%struct.page* %87)
  %89 = load %struct.page**, %struct.page*** %9, align 8
  %90 = load %struct.page*, %struct.page** %89, align 8
  %91 = call i8* @kmap(%struct.page* %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @memmove(i8* %88, i8* %91, i32 %92)
  %94 = load %struct.page**, %struct.page*** %9, align 8
  %95 = load %struct.page*, %struct.page** %94, align 8
  %96 = call i32 @kunmap(%struct.page* %95)
  %97 = load %struct.page**, %struct.page*** %10, align 8
  %98 = load %struct.page*, %struct.page** %97, align 8
  %99 = call i32 @set_page_dirty(%struct.page* %98)
  %100 = load %struct.page**, %struct.page*** %10, align 8
  %101 = load %struct.page*, %struct.page** %100, align 8
  %102 = call i32 @kunmap(%struct.page* %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %106, i32* %7, align 4
  %107 = load %struct.page**, %struct.page*** %9, align 8
  %108 = getelementptr inbounds %struct.page*, %struct.page** %107, i32 -1
  store %struct.page** %108, %struct.page*** %9, align 8
  %109 = load %struct.page**, %struct.page*** %10, align 8
  %110 = getelementptr inbounds %struct.page*, %struct.page** %109, i32 -1
  store %struct.page** %110, %struct.page*** %10, align 8
  br label %81

111:                                              ; preds = %81
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.page**, %struct.page*** %10, align 8
  %116 = load %struct.page*, %struct.page** %115, align 8
  %117 = call i8* @kmap(%struct.page* %116)
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, i8* %117, i64 %119
  %121 = load %struct.page**, %struct.page*** %9, align 8
  %122 = load %struct.page*, %struct.page** %121, align 8
  %123 = call i8* @kmap(%struct.page* %122)
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr i8, i8* %123, i64 %125
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @memmove(i8* %120, i8* %126, i32 %127)
  %129 = load %struct.page**, %struct.page*** %9, align 8
  %130 = load %struct.page*, %struct.page** %129, align 8
  %131 = call i32 @kunmap(%struct.page* %130)
  %132 = load %struct.page**, %struct.page*** %10, align 8
  %133 = load %struct.page*, %struct.page** %132, align 8
  %134 = call i32 @set_page_dirty(%struct.page* %133)
  %135 = load %struct.page**, %struct.page*** %10, align 8
  %136 = load %struct.page*, %struct.page** %135, align 8
  %137 = call i32 @kunmap(%struct.page* %136)
  br label %208

138:                                              ; preds = %42
  br label %139

139:                                              ; preds = %202, %138
  %140 = load %struct.page**, %struct.page*** %9, align 8
  %141 = load %struct.page*, %struct.page** %140, align 8
  %142 = call i8* @kmap(%struct.page* %141)
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr i8, i8* %142, i64 %144
  store i8* %145, i8** %12, align 8
  %146 = load %struct.page**, %struct.page*** %10, align 8
  %147 = load %struct.page*, %struct.page** %146, align 8
  %148 = call i8* @kmap(%struct.page* %147)
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr i8, i8* %148, i64 %150
  store i8* %151, i8** %13, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %139
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %6, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %6, align 4
  br label %167

161:                                              ; preds = %139
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %161, %155
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @min(i32 %168, i32 %169)
  store i32 %170, i32* %11, align 4
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 0, %173
  %175 = getelementptr i8, i8* %171, i64 %174
  %176 = load i8*, i8** %12, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = sub i64 0, %178
  %180 = getelementptr i8, i8* %176, i64 %179
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @memmove(i8* %175, i8* %180, i32 %181)
  %183 = load %struct.page**, %struct.page*** %9, align 8
  %184 = load %struct.page*, %struct.page** %183, align 8
  %185 = call i32 @kunmap(%struct.page* %184)
  %186 = load %struct.page**, %struct.page*** %10, align 8
  %187 = load %struct.page*, %struct.page** %186, align 8
  %188 = call i32 @set_page_dirty(%struct.page* %187)
  %189 = load %struct.page**, %struct.page*** %10, align 8
  %190 = load %struct.page*, %struct.page** %189, align 8
  %191 = call i32 @kunmap(%struct.page* %190)
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %167
  %196 = load %struct.page**, %struct.page*** %10, align 8
  %197 = getelementptr inbounds %struct.page*, %struct.page** %196, i32 -1
  store %struct.page** %197, %struct.page*** %10, align 8
  br label %201

198:                                              ; preds = %167
  %199 = load %struct.page**, %struct.page*** %9, align 8
  %200 = getelementptr inbounds %struct.page*, %struct.page** %199, i32 -1
  store %struct.page** %200, %struct.page*** %9, align 8
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %8, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %139, label %207

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %207, %111
  br label %363

209:                                              ; preds = %24
  %210 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %211 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %210, i32 0, i32 0
  %212 = load %struct.page**, %struct.page*** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %215 = ashr i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.page*, %struct.page** %212, i64 %216
  store %struct.page** %217, %struct.page*** %9, align 8
  %218 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %7, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %7, align 4
  %222 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %223 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %222, i32 0, i32 0
  %224 = load %struct.page**, %struct.page*** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %227 = ashr i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.page*, %struct.page** %224, i64 %228
  store %struct.page** %229, %struct.page*** %10, align 8
  %230 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %231 = xor i32 %230, -1
  %232 = load i32, i32* %6, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %295

237:                                              ; preds = %209
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %240 = load i32, i32* %7, align 4
  %241 = sub nsw i32 %239, %240
  %242 = call i32 @min(i32 %238, i32 %241)
  store i32 %242, i32* %11, align 4
  %243 = load %struct.page**, %struct.page*** %10, align 8
  %244 = load %struct.page*, %struct.page** %243, align 8
  %245 = call i8* @kmap(%struct.page* %244)
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr i8, i8* %245, i64 %247
  %249 = load %struct.page**, %struct.page*** %9, align 8
  %250 = load %struct.page*, %struct.page** %249, align 8
  %251 = call i8* @kmap(%struct.page* %250)
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr i8, i8* %251, i64 %253
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @memmove(i8* %248, i8* %254, i32 %255)
  %257 = load %struct.page**, %struct.page*** %9, align 8
  %258 = load %struct.page*, %struct.page** %257, align 8
  %259 = call i32 @kunmap(%struct.page* %258)
  %260 = load %struct.page**, %struct.page*** %10, align 8
  %261 = load %struct.page*, %struct.page** %260, align 8
  %262 = call i32 @set_page_dirty(%struct.page* %261)
  %263 = load %struct.page**, %struct.page*** %10, align 8
  %264 = load %struct.page*, %struct.page** %263, align 8
  %265 = call i32 @kunmap(%struct.page* %264)
  br label %266

266:                                              ; preds = %271, %237
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %8, align 4
  %269 = sub nsw i32 %268, %267
  store i32 %269, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %294

271:                                              ; preds = %266
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %274 = call i32 @min(i32 %272, i32 %273)
  store i32 %274, i32* %11, align 4
  %275 = load %struct.page**, %struct.page*** %10, align 8
  %276 = getelementptr inbounds %struct.page*, %struct.page** %275, i32 1
  store %struct.page** %276, %struct.page*** %10, align 8
  %277 = load %struct.page*, %struct.page** %276, align 8
  %278 = call i8* @kmap(%struct.page* %277)
  %279 = load %struct.page**, %struct.page*** %9, align 8
  %280 = getelementptr inbounds %struct.page*, %struct.page** %279, i32 1
  store %struct.page** %280, %struct.page*** %9, align 8
  %281 = load %struct.page*, %struct.page** %280, align 8
  %282 = call i8* @kmap(%struct.page* %281)
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @memmove(i8* %278, i8* %282, i32 %283)
  %285 = load %struct.page**, %struct.page*** %9, align 8
  %286 = load %struct.page*, %struct.page** %285, align 8
  %287 = call i32 @kunmap(%struct.page* %286)
  %288 = load %struct.page**, %struct.page*** %10, align 8
  %289 = load %struct.page*, %struct.page** %288, align 8
  %290 = call i32 @set_page_dirty(%struct.page* %289)
  %291 = load %struct.page**, %struct.page*** %10, align 8
  %292 = load %struct.page*, %struct.page** %291, align 8
  %293 = call i32 @kunmap(%struct.page* %292)
  br label %266

294:                                              ; preds = %266
  br label %362

295:                                              ; preds = %209
  br label %296

296:                                              ; preds = %356, %295
  %297 = load %struct.page**, %struct.page*** %9, align 8
  %298 = load %struct.page*, %struct.page** %297, align 8
  %299 = call i8* @kmap(%struct.page* %298)
  %300 = load i32, i32* %7, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr i8, i8* %299, i64 %301
  store i8* %302, i8** %14, align 8
  %303 = load %struct.page**, %struct.page*** %10, align 8
  %304 = load %struct.page*, %struct.page** %303, align 8
  %305 = call i8* @kmap(%struct.page* %304)
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr i8, i8* %305, i64 %307
  store i8* %308, i8** %15, align 8
  %309 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %310 = load i32, i32* %7, align 4
  %311 = sub nsw i32 %309, %310
  %312 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %313 = load i32, i32* %6, align 4
  %314 = sub nsw i32 %312, %313
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %296
  %317 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %318 = load i32, i32* %7, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* %11, align 4
  store i32 0, i32* %7, align 4
  %320 = load i32, i32* %11, align 4
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %6, align 4
  br label %330

323:                                              ; preds = %296
  %324 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %325 = load i32, i32* %6, align 4
  %326 = sub nsw i32 %324, %325
  store i32 %326, i32* %11, align 4
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %7, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %330

330:                                              ; preds = %323, %316
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @min(i32 %331, i32 %332)
  store i32 %333, i32* %11, align 4
  %334 = load i8*, i8** %15, align 8
  %335 = load i8*, i8** %14, align 8
  %336 = load i32, i32* %11, align 4
  %337 = call i32 @memmove(i8* %334, i8* %335, i32 %336)
  %338 = load %struct.page**, %struct.page*** %9, align 8
  %339 = load %struct.page*, %struct.page** %338, align 8
  %340 = call i32 @kunmap(%struct.page* %339)
  %341 = load %struct.page**, %struct.page*** %10, align 8
  %342 = load %struct.page*, %struct.page** %341, align 8
  %343 = call i32 @set_page_dirty(%struct.page* %342)
  %344 = load %struct.page**, %struct.page*** %10, align 8
  %345 = load %struct.page*, %struct.page** %344, align 8
  %346 = call i32 @kunmap(%struct.page* %345)
  %347 = load i32, i32* %6, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %330
  %350 = load %struct.page**, %struct.page*** %10, align 8
  %351 = getelementptr inbounds %struct.page*, %struct.page** %350, i32 1
  store %struct.page** %351, %struct.page*** %10, align 8
  br label %355

352:                                              ; preds = %330
  %353 = load %struct.page**, %struct.page*** %9, align 8
  %354 = getelementptr inbounds %struct.page*, %struct.page** %353, i32 1
  store %struct.page** %354, %struct.page*** %9, align 8
  br label %355

355:                                              ; preds = %352, %349
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %8, align 4
  %359 = sub nsw i32 %358, %357
  store i32 %359, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %296, label %361

361:                                              ; preds = %356
  br label %362

362:                                              ; preds = %361, %294
  br label %363

363:                                              ; preds = %23, %362, %208
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
