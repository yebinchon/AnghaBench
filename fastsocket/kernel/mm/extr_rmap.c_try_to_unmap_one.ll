; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_unmap_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_unmap_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.page = type { i64 }
%struct.vm_area_struct = type { i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SWAP_AGAIN = common dso_local global i32 0, align 4
@TTU_IGNORE_MLOCK = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@SWAP_MLOCK = common dso_local global i32 0, align 4
@TTU_MUNLOCK = common dso_local global i64 0, align 8
@TTU_IGNORE_ACCESS = common dso_local global i32 0, align 4
@SWAP_FAIL = common dso_local global i32 0, align 4
@TTU_IGNORE_HWPOISON = common dso_local global i32 0, align 4
@anon_rss = common dso_local global i32 0, align 4
@file_rss = common dso_local global i32 0, align 4
@mmlist_lock = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@swap_usage = common dso_local global i32 0, align 4
@PAGE_MIGRATION = common dso_local global i64 0, align 8
@TTU_MIGRATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_to_unmap_one(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  %16 = alloca %struct.TYPE_7__, align 4
  %17 = alloca %struct.TYPE_7__, align 4
  %18 = alloca %struct.TYPE_7__, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 2
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %9, align 8
  %22 = load i32, i32* @SWAP_AGAIN, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32* @page_check_address(%struct.page* %23, %struct.mm_struct* %24, i64 %25, i32** %12, i32 0)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %271

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TTU_IGNORE_MLOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VM_LOCKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @SWAP_MLOCK, align 4
  store i32 %43, i32* %13, align 4
  br label %226

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @TTU_ACTION(i32 %45)
  %47 = load i64, i64* @TTU_MUNLOCK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %226

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @TTU_IGNORE_ACCESS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct* %57, i64 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @SWAP_FAIL, align 4
  store i32 %63, i32* %13, align 4
  br label %226

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.page*, %struct.page** %5, align 8
  %69 = call i32 @page_to_pfn(%struct.page* %68)
  %70 = call i32 @flush_cache_page(%struct.vm_area_struct* %66, i64 %67, i32 %69)
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @ptep_clear_flush_notify(%struct.vm_area_struct* %71, i64 %72, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @pte_dirty(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load %struct.page*, %struct.page** %5, align 8
  %80 = call i32 @set_page_dirty(%struct.page* %79)
  br label %81

81:                                               ; preds = %78, %65
  %82 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %83 = call i32 @update_hiwater_rss(%struct.mm_struct* %82)
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = call i64 @PageHWPoison(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @TTU_IGNORE_HWPOISON, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %87
  %93 = load %struct.page*, %struct.page** %5, align 8
  %94 = call i64 @PageAnon(%struct.page* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %98 = load i32, i32* @anon_rss, align 4
  %99 = call i32 @dec_mm_counter(%struct.mm_struct* %97, i32 %98)
  br label %104

100:                                              ; preds = %92
  %101 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %102 = load i32, i32* @file_rss, align 4
  %103 = call i32 @dec_mm_counter(%struct.mm_struct* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load %struct.page*, %struct.page** %5, align 8
  %109 = call i32 @make_hwpoison_entry(%struct.page* %108)
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @swp_entry_to_pte(i32 %112)
  %114 = call i32 @set_pte_at(%struct.mm_struct* %105, i64 %106, i32* %107, i32 %113)
  br label %221

115:                                              ; preds = %87, %81
  %116 = load %struct.page*, %struct.page** %5, align 8
  %117 = call i64 @PageAnon(%struct.page* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %192

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %121 = load %struct.page*, %struct.page** %5, align 8
  %122 = call i32 @page_private(%struct.page* %121)
  store i32 %122, i32* %120, align 4
  %123 = load %struct.page*, %struct.page** %5, align 8
  %124 = call i64 @PageSwapCache(%struct.page* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @swap_duplicate(i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @set_pte_at(%struct.mm_struct* %132, i64 %133, i32* %134, i32 %135)
  %137 = load i32, i32* @SWAP_FAIL, align 4
  store i32 %137, i32* %13, align 4
  br label %226

138:                                              ; preds = %126
  %139 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %140 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %139, i32 0, i32 1
  %141 = call i64 @list_empty(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = call i32 @spin_lock(i32* @mmlist_lock)
  %145 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %146 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %145, i32 0, i32 1
  %147 = call i64 @list_empty(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %151 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %150, i32 0, i32 1
  %152 = call i32 @list_add(i32* %151, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @init_mm, i32 0, i32 0))
  br label %153

153:                                              ; preds = %149, %143
  %154 = call i32 @spin_unlock(i32* @mmlist_lock)
  br label %155

155:                                              ; preds = %153, %138
  %156 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %157 = load i32, i32* @anon_rss, align 4
  %158 = call i32 @dec_mm_counter(%struct.mm_struct* %156, i32 %157)
  %159 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %160 = load i32, i32* @swap_usage, align 4
  %161 = call i32 @inc_mm_counter(%struct.mm_struct* %159, i32 %160)
  br label %180

162:                                              ; preds = %119
  %163 = load i64, i64* @PAGE_MIGRATION, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %162
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @TTU_ACTION(i32 %166)
  %168 = load i64, i64* @TTU_MIGRATION, align 8
  %169 = icmp ne i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @BUG_ON(i32 %170)
  %172 = load %struct.page*, %struct.page** %5, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @pte_write(i32 %173)
  %175 = call i32 @make_migration_entry(%struct.page* %172, i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = bitcast %struct.TYPE_7__* %15 to i8*
  %178 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 4, i1 false)
  br label %179

179:                                              ; preds = %165, %162
  br label %180

180:                                              ; preds = %179, %155
  %181 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @swp_entry_to_pte(i32 %185)
  %187 = call i32 @set_pte_at(%struct.mm_struct* %181, i64 %182, i32* %183, i32 %186)
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @pte_file(i32 %189)
  %191 = call i32 @BUG_ON(i32 %190)
  br label %220

192:                                              ; preds = %115
  %193 = load i64, i64* @PAGE_MIGRATION, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = call i64 @TTU_ACTION(i32 %196)
  %198 = load i64, i64* @TTU_MIGRATION, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %195
  %201 = load %struct.page*, %struct.page** %5, align 8
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @pte_write(i32 %202)
  %204 = call i32 @make_migration_entry(%struct.page* %201, i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  %206 = bitcast %struct.TYPE_7__* %17 to i8*
  %207 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %206, i8* align 4 %207, i64 4, i1 false)
  %208 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @swp_entry_to_pte(i32 %212)
  %214 = call i32 @set_pte_at(%struct.mm_struct* %208, i64 %209, i32* %210, i32 %213)
  br label %219

215:                                              ; preds = %195, %192
  %216 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %217 = load i32, i32* @file_rss, align 4
  %218 = call i32 @dec_mm_counter(%struct.mm_struct* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %200
  br label %220

220:                                              ; preds = %219, %180
  br label %221

221:                                              ; preds = %220, %104
  %222 = load %struct.page*, %struct.page** %5, align 8
  %223 = call i32 @page_remove_rmap(%struct.page* %222)
  %224 = load %struct.page*, %struct.page** %5, align 8
  %225 = call i32 @page_cache_release(%struct.page* %224)
  br label %226

226:                                              ; preds = %221, %131, %62, %49, %42
  %227 = load i32*, i32** %10, align 8
  %228 = load i32*, i32** %12, align 8
  %229 = call i32 @pte_unmap_unlock(i32* %227, i32* %228)
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* @SWAP_MLOCK, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %270

233:                                              ; preds = %226
  %234 = load i32, i32* @SWAP_AGAIN, align 4
  store i32 %234, i32* %13, align 4
  %235 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %236 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %235, i32 0, i32 2
  %237 = load %struct.mm_struct*, %struct.mm_struct** %236, align 8
  %238 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %237, i32 0, i32 0
  %239 = call i64 @down_read_trylock(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %233
  %242 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %243 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @VM_LOCKED, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load %struct.page*, %struct.page** %5, align 8
  %250 = call i32 @mlock_vma_page(%struct.page* %249)
  %251 = load i32, i32* @SWAP_MLOCK, align 4
  store i32 %251, i32* %13, align 4
  br label %252

252:                                              ; preds = %248, %241
  %253 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %254 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %253, i32 0, i32 2
  %255 = load %struct.mm_struct*, %struct.mm_struct** %254, align 8
  %256 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %255, i32 0, i32 0
  %257 = call i32 @up_read(i32* %256)
  br label %258

258:                                              ; preds = %252, %233
  %259 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %260 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %259, i32 0, i32 2
  %261 = load %struct.mm_struct*, %struct.mm_struct** %260, align 8
  %262 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %263 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.page*, %struct.page** %5, align 8
  %266 = getelementptr inbounds %struct.page, %struct.page* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %264, %267
  %269 = call i32 @trace_mm_anon_unmap(%struct.mm_struct* %261, i64 %268)
  br label %270

270:                                              ; preds = %258, %226
  br label %271

271:                                              ; preds = %270, %29
  %272 = load i32, i32* %13, align 4
  ret i32 %272
}

declare dso_local i32* @page_check_address(%struct.page*, %struct.mm_struct*, i64, i32**, i32) #1

declare dso_local i64 @TTU_ACTION(i32) #1

declare dso_local i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @ptep_clear_flush_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @update_hiwater_rss(%struct.mm_struct*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @dec_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32 @make_hwpoison_entry(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @swap_duplicate(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inc_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @make_migration_entry(%struct.page*, i32) #1

declare dso_local i32 @pte_write(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pte_file(i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @mlock_vma_page(%struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @trace_mm_anon_unmap(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
