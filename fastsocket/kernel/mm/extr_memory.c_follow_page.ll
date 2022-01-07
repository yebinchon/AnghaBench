; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_follow_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_follow_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, %struct.TYPE_2__*, i32, %struct.mm_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_GET = common dso_local global i32 0, align 4
@VM_HUGETLB = common dso_local global i32 0, align 4
@FOLL_SPLIT = common dso_local global i32 0, align 4
@FOLL_MIGRATION = common dso_local global i32 0, align 4
@FOLL_DUMP = common dso_local global i32 0, align 4
@FOLL_TOUCH = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @follow_page(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 3
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %15, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FOLL_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = call %struct.page* @follow_huge_addr(%struct.mm_struct* %20, i64 %21, i32 %24)
  store %struct.page* %25, %struct.page** %14, align 8
  %26 = load %struct.page*, %struct.page** %14, align 8
  %27 = call i32 @IS_ERR(%struct.page* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FOLL_GET, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @BUG_ON(i32 %32)
  br label %292

34:                                               ; preds = %3
  store %struct.page* null, %struct.page** %14, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32* @pgd_offset(%struct.mm_struct* %35, i64 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @pgd_none(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pgd_bad(i32 %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %34
  br label %311

49:                                               ; preds = %42
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32* @pud_offset(i32* %50, i64 %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @pud_none(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %311

58:                                               ; preds = %49
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @pud_huge(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @FOLL_GET, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @FOLL_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = call %struct.page* @follow_huge_pud(%struct.mm_struct* %68, i64 %69, i32* %70, i32 %73)
  store %struct.page* %74, %struct.page** %14, align 8
  br label %292

75:                                               ; preds = %58
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pud_bad(i32 %77)
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %311

82:                                               ; preds = %75
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32* @pmd_offset(i32* %83, i64 %84)
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @pmd_none(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %311

91:                                               ; preds = %82
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @pmd_huge(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VM_HUGETLB, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @FOLL_GET, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @BUG_ON(i32 %106)
  %108 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @FOLL_WRITE, align 4
  %113 = and i32 %111, %112
  %114 = call %struct.page* @follow_huge_pmd(%struct.mm_struct* %108, i64 %109, i32* %110, i32 %113)
  store %struct.page* %114, %struct.page** %14, align 8
  br label %292

115:                                              ; preds = %96, %91
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pmd_trans_huge(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %168

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @FOLL_SPLIT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @split_huge_page_pmd(%struct.mm_struct* %126, i32* %127)
  br label %169

129:                                              ; preds = %120
  %130 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %131 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %130, i32 0, i32 0
  %132 = call i32 @spin_lock(i32* %131)
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pmd_trans_huge(i32 %134)
  %136 = call i64 @likely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %129
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @pmd_trans_splitting(i32 %140)
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %146 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @wait_split_huge_page(i32 %150, i32* %151)
  br label %162

153:                                              ; preds = %138
  %154 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call %struct.page* @follow_trans_huge_pmd(%struct.mm_struct* %154, i64 %155, i32* %156, i32 %157)
  store %struct.page* %158, %struct.page** %14, align 8
  %159 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %160 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %159, i32 0, i32 0
  %161 = call i32 @spin_unlock(i32* %160)
  br label %292

162:                                              ; preds = %144
  br label %167

163:                                              ; preds = %129
  %164 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %165 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock(i32* %165)
  br label %167

167:                                              ; preds = %163, %162
  br label %168

168:                                              ; preds = %167, %115
  br label %169

169:                                              ; preds = %212, %168, %125
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @pmd_bad(i32 %171)
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %311

176:                                              ; preds = %169
  %177 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = load i64, i64* %6, align 8
  %180 = call i32* @pte_offset_map_lock(%struct.mm_struct* %177, i32* %178, i64 %179, i32** %13)
  store i32* %180, i32** %11, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @pte_present(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %220, label %186

186:                                              ; preds = %176
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @FOLL_MIGRATION, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i64 @likely(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %301

196:                                              ; preds = %186
  %197 = load i32, i32* %12, align 4
  %198 = call i64 @pte_none(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %12, align 4
  %202 = call i64 @pte_file(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200, %196
  br label %301

205:                                              ; preds = %200
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @pte_to_swp_entry(i32 %206)
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @is_migration_entry(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %205
  br label %301

212:                                              ; preds = %205
  %213 = load i32*, i32** %11, align 8
  %214 = load i32*, i32** %13, align 8
  %215 = call i32 @pte_unmap_unlock(i32* %213, i32* %214)
  %216 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load i64, i64* %6, align 8
  %219 = call i32 @migration_entry_wait(%struct.mm_struct* %216, i32* %217, i64 %218)
  br label %169

220:                                              ; preds = %176
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @FOLL_WRITE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @pte_write(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  br label %288

230:                                              ; preds = %225, %220
  %231 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %231, i64 %232, i32 %233)
  store %struct.page* %234, %struct.page** %14, align 8
  %235 = load %struct.page*, %struct.page** %14, align 8
  %236 = icmp ne %struct.page* %235, null
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i64 @unlikely(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %230
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @FOLL_DUMP, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @pte_pfn(i32 %247)
  %249 = call i32 @is_zero_pfn(i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %246, %241
  br label %294

252:                                              ; preds = %246
  %253 = load i32, i32* %12, align 4
  %254 = call %struct.page* @pte_page(i32 %253)
  store %struct.page* %254, %struct.page** %14, align 8
  br label %255

255:                                              ; preds = %252, %230
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @FOLL_GET, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.page*, %struct.page** %14, align 8
  %262 = call i32 @get_page_foll(%struct.page* %261)
  br label %263

263:                                              ; preds = %260, %255
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @FOLL_TOUCH, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %263
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @FOLL_WRITE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %268
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @pte_dirty(i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %273
  %278 = load %struct.page*, %struct.page** %14, align 8
  %279 = call i32 @PageDirty(%struct.page* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = load %struct.page*, %struct.page** %14, align 8
  %283 = call i32 @set_page_dirty(%struct.page* %282)
  br label %284

284:                                              ; preds = %281, %277, %273, %268
  %285 = load %struct.page*, %struct.page** %14, align 8
  %286 = call i32 @mark_page_accessed(%struct.page* %285)
  br label %287

287:                                              ; preds = %284, %263
  br label %288

288:                                              ; preds = %287, %229
  %289 = load i32*, i32** %11, align 8
  %290 = load i32*, i32** %13, align 8
  %291 = call i32 @pte_unmap_unlock(i32* %289, i32* %290)
  br label %292

292:                                              ; preds = %288, %153, %103, %63, %29
  %293 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %293, %struct.page** %4, align 8
  br label %334

294:                                              ; preds = %251
  %295 = load i32*, i32** %11, align 8
  %296 = load i32*, i32** %13, align 8
  %297 = call i32 @pte_unmap_unlock(i32* %295, i32* %296)
  %298 = load i32, i32* @EFAULT, align 4
  %299 = sub nsw i32 0, %298
  %300 = call %struct.page* @ERR_PTR(i32 %299)
  store %struct.page* %300, %struct.page** %4, align 8
  br label %334

301:                                              ; preds = %211, %204, %195
  %302 = load i32*, i32** %11, align 8
  %303 = load i32*, i32** %13, align 8
  %304 = call i32 @pte_unmap_unlock(i32* %302, i32* %303)
  %305 = load i32, i32* %12, align 4
  %306 = call i64 @pte_none(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %301
  %309 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %309, %struct.page** %4, align 8
  br label %334

310:                                              ; preds = %301
  br label %311

311:                                              ; preds = %310, %175, %90, %81, %57, %48
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* @FOLL_DUMP, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %332

316:                                              ; preds = %311
  %317 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %318 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %317, i32 0, i32 1
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = icmp ne %struct.TYPE_2__* %319, null
  br i1 %320, label %321, label %328

321:                                              ; preds = %316
  %322 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %323 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %322, i32 0, i32 1
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %321, %316
  %329 = load i32, i32* @EFAULT, align 4
  %330 = sub nsw i32 0, %329
  %331 = call %struct.page* @ERR_PTR(i32 %330)
  store %struct.page* %331, %struct.page** %4, align 8
  br label %334

332:                                              ; preds = %321, %311
  %333 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %333, %struct.page** %4, align 8
  br label %334

334:                                              ; preds = %332, %328, %308, %294, %292
  %335 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %335
}

declare dso_local %struct.page* @follow_huge_addr(%struct.mm_struct*, i64, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pgd_bad(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_huge(i32) #1

declare dso_local %struct.page* @follow_huge_pud(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pud_bad(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_huge(i32) #1

declare dso_local %struct.page* @follow_huge_pmd(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32 @split_huge_page_pmd(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pmd_trans_splitting(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_split_huge_page(i32, i32*) #1

declare dso_local %struct.page* @follow_trans_huge_pmd(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pmd_bad(i32) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i64 @pte_file(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @is_migration_entry(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @migration_entry_wait(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @is_zero_pfn(i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @get_page_foll(%struct.page*) #1

declare dso_local i32 @pte_dirty(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
