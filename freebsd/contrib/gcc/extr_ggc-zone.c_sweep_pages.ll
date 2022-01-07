; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_sweep_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_sweep_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_zone = type { i8*, i64, %struct.small_page_entry*, %struct.large_page_entry*, i64, i32*, i64 }
%struct.small_page_entry = type { i32*, i32*, %struct.small_page_entry*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.large_page_entry = type { i32, %struct.TYPE_5__*, %struct.large_page_entry*, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { %struct.large_page_entry* }
%struct.TYPE_4__ = type { i32, i8*, i32 }

@SMALL_PAGE_SIZE = common dso_local global i32 0, align 4
@BYTES_PER_ALLOC_BIT = common dso_local global i32 0, align 4
@BYTES_PER_MARK_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alloc_zone*)* @sweep_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sweep_pages(%struct.alloc_zone* %0) #0 {
  %2 = alloca %struct.alloc_zone*, align 8
  %3 = alloca %struct.large_page_entry**, align 8
  %4 = alloca %struct.large_page_entry*, align 8
  %5 = alloca %struct.large_page_entry*, align 8
  %6 = alloca %struct.small_page_entry**, align 8
  %7 = alloca %struct.small_page_entry*, align 8
  %8 = alloca %struct.small_page_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.alloc_zone* %0, %struct.alloc_zone** %2, align 8
  store i64 0, i64* %10, align 8
  %21 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %22 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @memset(i8* %23, i32 0, i32 8)
  %25 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %26 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %28 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %30 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %32 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %31, i32 0, i32 3
  store %struct.large_page_entry** %32, %struct.large_page_entry*** %3, align 8
  %33 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %34 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %33, i32 0, i32 3
  %35 = load %struct.large_page_entry*, %struct.large_page_entry** %34, align 8
  store %struct.large_page_entry* %35, %struct.large_page_entry** %4, align 8
  br label %36

36:                                               ; preds = %94, %1
  %37 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %38 = icmp ne %struct.large_page_entry* %37, null
  br i1 %38, label %39, label %96

39:                                               ; preds = %36
  %40 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %41 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %46 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %45, i32 0, i32 2
  %47 = load %struct.large_page_entry*, %struct.large_page_entry** %46, align 8
  store %struct.large_page_entry* %47, %struct.large_page_entry** %5, align 8
  %48 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %49 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %39
  %53 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %54 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %56 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %61 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %60, i32 0, i32 2
  store %struct.large_page_entry** %61, %struct.large_page_entry*** %3, align 8
  br label %93

62:                                               ; preds = %39
  %63 = load %struct.large_page_entry*, %struct.large_page_entry** %5, align 8
  %64 = load %struct.large_page_entry**, %struct.large_page_entry*** %3, align 8
  store %struct.large_page_entry* %63, %struct.large_page_entry** %64, align 8
  %65 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %66 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %71 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %70, i32 0, i32 2
  %72 = load %struct.large_page_entry*, %struct.large_page_entry** %71, align 8
  %73 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %74 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store %struct.large_page_entry* %72, %struct.large_page_entry** %76, align 8
  br label %77

77:                                               ; preds = %69, %62
  %78 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %79 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %78, i32 0, i32 2
  %80 = load %struct.large_page_entry*, %struct.large_page_entry** %79, align 8
  %81 = icmp ne %struct.large_page_entry* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %84 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %87 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %86, i32 0, i32 2
  %88 = load %struct.large_page_entry*, %struct.large_page_entry** %87, align 8
  %89 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %88, i32 0, i32 1
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %89, align 8
  br label %90

90:                                               ; preds = %82, %77
  %91 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %92 = call i32 @free_large_page(%struct.large_page_entry* %91)
  br label %93

93:                                               ; preds = %90, %52
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.large_page_entry*, %struct.large_page_entry** %5, align 8
  store %struct.large_page_entry* %95, %struct.large_page_entry** %4, align 8
  br label %36

96:                                               ; preds = %36
  %97 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %98 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %97, i32 0, i32 2
  store %struct.small_page_entry** %98, %struct.small_page_entry*** %6, align 8
  %99 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %100 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %99, i32 0, i32 2
  %101 = load %struct.small_page_entry*, %struct.small_page_entry** %100, align 8
  store %struct.small_page_entry* %101, %struct.small_page_entry** %7, align 8
  br label %102

102:                                              ; preds = %309, %96
  %103 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %104 = icmp ne %struct.small_page_entry* %103, null
  br i1 %104, label %105, label %311

105:                                              ; preds = %102
  %106 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %107 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @gcc_assert(i32 %112)
  %114 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %115 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %114, i32 0, i32 2
  %116 = load %struct.small_page_entry*, %struct.small_page_entry** %115, align 8
  store %struct.small_page_entry* %116, %struct.small_page_entry** %8, align 8
  %117 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %118 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %12, align 8
  store i8* %120, i8** %13, align 8
  %121 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %122 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @SMALL_PAGE_SIZE, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8* %127, i8** %14, align 8
  store i8* null, i8** %9, align 8
  store i32 1, i32* %11, align 4
  %128 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %129 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %16, align 8
  %131 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %132 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %15, align 8
  %134 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %135 = load i32, i32* @BYTES_PER_MARK_BIT, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @gcc_assert(i32 %137)
  %139 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %140 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %12, align 8
  br label %143

143:                                              ; preds = %255, %105
  %144 = load i32*, i32** %15, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %15, align 8
  %146 = load i32, i32* %144, align 4
  store i32 %146, i32* %19, align 4
  %147 = load i32*, i32** %16, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %16, align 8
  %149 = load i32, i32* %147, align 4
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %152, %143
  store i32 0, i32* %17, align 4
  br label %154

154:                                              ; preds = %234, %153
  %155 = load i32, i32* %19, align 4
  %156 = call i32 @alloc_ffs(i32 %155)
  store i32 %156, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %246

158:                                              ; preds = %154
  %159 = load i32, i32* %18, align 4
  %160 = sub i32 %159, 1
  %161 = load i32, i32* %19, align 4
  %162 = lshr i32 %161, %160
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %18, align 4
  %164 = sub i32 %163, 1
  %165 = load i32, i32* %20, align 4
  %166 = ashr i32 %165, %164
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* @BYTES_PER_MARK_BIT, align 4
  %168 = load i32, i32* %18, align 4
  %169 = sub i32 %168, 1
  %170 = mul i32 %167, %169
  %171 = load i8*, i8** %12, align 8
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %12, align 8
  %174 = load i32, i32* %20, align 4
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %217

177:                                              ; preds = %158
  %178 = load i8*, i8** %9, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %207

180:                                              ; preds = %177
  %181 = load i8*, i8** %9, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @VALGRIND_MAKE_WRITABLE(i8* %181, i32 %187)
  %189 = call i32 @VALGRIND_DISCARD(i32 %188)
  %190 = load i8*, i8** %9, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = call i32 @poison_region(i8* %190, i32 %196)
  %198 = load i8*, i8** %9, align 8
  %199 = load i8*, i8** %12, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %206 = call i32 @free_chunk(i8* %198, i32 %204, %struct.alloc_zone* %205)
  store i8* null, i8** %9, align 8
  br label %215

207:                                              ; preds = %177
  %208 = load i8*, i8** %12, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %10, align 8
  br label %215

215:                                              ; preds = %207, %180
  %216 = load i8*, i8** %12, align 8
  store i8* %216, i8** %13, align 8
  br label %234

217:                                              ; preds = %158
  %218 = load i8*, i8** %9, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load i8*, i8** %12, align 8
  store i8* %221, i8** %9, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = load i64, i64* %10, align 8
  %228 = add i64 %227, %226
  store i64 %228, i64* %10, align 8
  br label %233

229:                                              ; preds = %217
  %230 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = call i32 @zone_clear_object_alloc_bit(%struct.small_page_entry* %230, i8* %231)
  br label %233

233:                                              ; preds = %229, %220
  br label %234

234:                                              ; preds = %233, %215
  %235 = load i32, i32* %19, align 4
  %236 = lshr i32 %235, 1
  store i32 %236, i32* %19, align 4
  %237 = load i32, i32* %20, align 4
  %238 = ashr i32 %237, 1
  store i32 %238, i32* %20, align 4
  %239 = load i32, i32* @BYTES_PER_MARK_BIT, align 4
  %240 = load i8*, i8** %12, align 8
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  store i8* %242, i8** %12, align 8
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %17, align 4
  %245 = add i32 %244, %243
  store i32 %245, i32* %17, align 4
  br label %154

246:                                              ; preds = %154
  %247 = load i32, i32* @BYTES_PER_MARK_BIT, align 4
  %248 = zext i32 %247 to i64
  %249 = load i32, i32* %17, align 4
  %250 = zext i32 %249 to i64
  %251 = sub i64 32, %250
  %252 = mul i64 %248, %251
  %253 = load i8*, i8** %12, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 %252
  store i8* %254, i8** %12, align 8
  br label %255

255:                                              ; preds = %246
  %256 = load i8*, i8** %12, align 8
  %257 = load i8*, i8** %14, align 8
  %258 = icmp ult i8* %256, %257
  br i1 %258, label %143, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = load %struct.small_page_entry*, %struct.small_page_entry** %8, align 8
  %264 = load %struct.small_page_entry**, %struct.small_page_entry*** %6, align 8
  store %struct.small_page_entry* %263, %struct.small_page_entry** %264, align 8
  %265 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %266 = call i32 @free_small_page(%struct.small_page_entry* %265)
  br label %309

267:                                              ; preds = %259
  %268 = load i8*, i8** %9, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %297

270:                                              ; preds = %267
  %271 = load i8*, i8** %9, align 8
  %272 = load i8*, i8** %12, align 8
  %273 = load i8*, i8** %9, align 8
  %274 = ptrtoint i8* %272 to i64
  %275 = ptrtoint i8* %273 to i64
  %276 = sub i64 %274, %275
  %277 = trunc i64 %276 to i32
  %278 = call i32 @VALGRIND_MAKE_WRITABLE(i8* %271, i32 %277)
  %279 = call i32 @VALGRIND_DISCARD(i32 %278)
  %280 = load i8*, i8** %9, align 8
  %281 = load i8*, i8** %12, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = ptrtoint i8* %281 to i64
  %284 = ptrtoint i8* %282 to i64
  %285 = sub i64 %283, %284
  %286 = trunc i64 %285 to i32
  %287 = call i32 @poison_region(i8* %280, i32 %286)
  %288 = load i8*, i8** %9, align 8
  %289 = load i8*, i8** %12, align 8
  %290 = load i8*, i8** %9, align 8
  %291 = ptrtoint i8* %289 to i64
  %292 = ptrtoint i8* %290 to i64
  %293 = sub i64 %291, %292
  %294 = trunc i64 %293 to i32
  %295 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %296 = call i32 @free_chunk(i8* %288, i32 %294, %struct.alloc_zone* %295)
  br label %305

297:                                              ; preds = %267
  %298 = load i8*, i8** %12, align 8
  %299 = load i8*, i8** %13, align 8
  %300 = ptrtoint i8* %298 to i64
  %301 = ptrtoint i8* %299 to i64
  %302 = sub i64 %300, %301
  %303 = load i64, i64* %10, align 8
  %304 = add i64 %303, %302
  store i64 %304, i64* %10, align 8
  br label %305

305:                                              ; preds = %297, %270
  br label %306

306:                                              ; preds = %305
  %307 = load %struct.small_page_entry*, %struct.small_page_entry** %7, align 8
  %308 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %307, i32 0, i32 2
  store %struct.small_page_entry** %308, %struct.small_page_entry*** %6, align 8
  br label %309

309:                                              ; preds = %306, %262
  %310 = load %struct.small_page_entry*, %struct.small_page_entry** %8, align 8
  store %struct.small_page_entry* %310, %struct.small_page_entry** %7, align 8
  br label %102

311:                                              ; preds = %102
  %312 = load i64, i64* %10, align 8
  %313 = load %struct.alloc_zone*, %struct.alloc_zone** %2, align 8
  %314 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %313, i32 0, i32 1
  store i64 %312, i64* %314, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @free_large_page(%struct.large_page_entry*) #1

declare dso_local i32 @alloc_ffs(i32) #1

declare dso_local i32 @VALGRIND_DISCARD(i32) #1

declare dso_local i32 @VALGRIND_MAKE_WRITABLE(i8*, i32) #1

declare dso_local i32 @poison_region(i8*, i32) #1

declare dso_local i32 @free_chunk(i8*, i32, %struct.alloc_zone*) #1

declare dso_local i32 @zone_clear_object_alloc_bit(%struct.small_page_entry*, i8*) #1

declare dso_local i32 @free_small_page(%struct.small_page_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
