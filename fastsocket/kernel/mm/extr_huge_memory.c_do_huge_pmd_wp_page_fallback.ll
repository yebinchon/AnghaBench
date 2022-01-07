; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_do_huge_pmd_wp_page_fallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_do_huge_pmd_wp_page_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.page = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@GFP_HIGHUSER_MOVABLE = common dso_local global i32 0, align 4
@__GFP_OTHER_NODE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_FAULT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, %struct.TYPE_9__*, i32, %struct.page*, i64)* @do_huge_pmd_wp_page_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_huge_pmd_wp_page_fallback(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, %struct.TYPE_9__* %3, i32 %4, %struct.page* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.page**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %4, i32* %22, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %12, align 8
  store %struct.page* %5, %struct.page** %13, align 8
  store i64 %6, i64* %14, align 8
  %23 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* @HPAGE_PMD_NR, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 8, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.page** @kmalloc(i32 %27, i32 %28)
  store %struct.page** %29, %struct.page*** %19, align 8
  %30 = load %struct.page**, %struct.page*** %19, align 8
  %31 = icmp ne %struct.page** %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %7
  %37 = load i32, i32* @VM_FAULT_OOM, align 4
  %38 = load i32, i32* %17, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %17, align 4
  br label %252

40:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %41

41:                                               ; preds = %118, %40
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @HPAGE_PMD_NR, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %121

45:                                               ; preds = %41
  %46 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %47 = load i32, i32* @__GFP_OTHER_NODE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.page*, %struct.page** %13, align 8
  %52 = call i32 @page_to_nid(%struct.page* %51)
  %53 = call %struct.page* @alloc_page_vma_node(i32 %48, %struct.vm_area_struct* %49, i64 %50, i32 %52)
  %54 = load %struct.page**, %struct.page*** %19, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 %56
  store %struct.page* %53, %struct.page** %57, align 8
  %58 = load %struct.page**, %struct.page*** %19, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = icmp ne %struct.page* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %45
  %65 = load %struct.page**, %struct.page*** %19, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.page*, %struct.page** %65, i64 %67
  %69 = load %struct.page*, %struct.page** %68, align 8
  %70 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i64 @mem_cgroup_newpage_charge(%struct.page* %69, %struct.mm_struct* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %64, %45
  %75 = phi i1 [ true, %45 ], [ %73, %64 ]
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %74
  %80 = load %struct.page**, %struct.page*** %19, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %82
  %84 = load %struct.page*, %struct.page** %83, align 8
  %85 = icmp ne %struct.page* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.page**, %struct.page*** %19, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %89
  %91 = load %struct.page*, %struct.page** %90, align 8
  %92 = call i32 @put_page(%struct.page* %91)
  br label %93

93:                                               ; preds = %86, %79
  br label %94

94:                                               ; preds = %98, %93
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %18, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.page**, %struct.page*** %19, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.page*, %struct.page** %99, i64 %101
  %103 = load %struct.page*, %struct.page** %102, align 8
  %104 = call i32 @mem_cgroup_uncharge_page(%struct.page* %103)
  %105 = load %struct.page**, %struct.page*** %19, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.page*, %struct.page** %105, i64 %107
  %109 = load %struct.page*, %struct.page** %108, align 8
  %110 = call i32 @put_page(%struct.page* %109)
  br label %94

111:                                              ; preds = %94
  %112 = load %struct.page**, %struct.page*** %19, align 8
  %113 = call i32 @kfree(%struct.page** %112)
  %114 = load i32, i32* @VM_FAULT_OOM, align 4
  %115 = load i32, i32* %17, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %17, align 4
  br label %252

117:                                              ; preds = %74
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %41

121:                                              ; preds = %41
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %151, %121
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @HPAGE_PMD_NR, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = load %struct.page**, %struct.page*** %19, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.page*, %struct.page** %127, i64 %129
  %131 = load %struct.page*, %struct.page** %130, align 8
  %132 = load %struct.page*, %struct.page** %13, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.page, %struct.page* %132, i64 %134
  %136 = load i64, i64* %14, align 8
  %137 = load i32, i32* @PAGE_SHIFT, align 4
  %138 = load i32, i32* %18, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = add i64 %136, %140
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %143 = call i32 @copy_user_highpage(%struct.page* %131, %struct.page* %135, i64 %141, %struct.vm_area_struct* %142)
  %144 = load %struct.page**, %struct.page*** %19, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.page*, %struct.page** %144, i64 %146
  %148 = load %struct.page*, %struct.page** %147, align 8
  %149 = call i32 @__SetPageUptodate(%struct.page* %148)
  %150 = call i32 (...) @cond_resched()
  br label %151

151:                                              ; preds = %126
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %122

154:                                              ; preds = %122
  %155 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %156 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %155, i32 0, i32 0
  %157 = call i32 @spin_lock(i32* %156)
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @pmd_same(i32 %160, i32 %162)
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  br label %254

170:                                              ; preds = %154
  %171 = load %struct.page*, %struct.page** %13, align 8
  %172 = call i32 @PageHead(%struct.page* %171)
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = call i32 @VM_BUG_ON(i32 %175)
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %180 = call i32 @pmdp_clear_flush_notify(%struct.vm_area_struct* %177, i64 %178, %struct.TYPE_9__* %179)
  %181 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %182 = call i32 @get_pmd_huge_pte(%struct.mm_struct* %181)
  store i32 %182, i32* %15, align 4
  %183 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @pmd_populate(%struct.mm_struct* %183, %struct.TYPE_9__* %16, i32 %184)
  store i32 0, i32* %18, align 4
  br label %186

186:                                              ; preds = %228, %170
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* @HPAGE_PMD_NR, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %234

190:                                              ; preds = %186
  %191 = load %struct.page**, %struct.page*** %19, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.page*, %struct.page** %191, i64 %193
  %195 = load %struct.page*, %struct.page** %194, align 8
  %196 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %197 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @mk_pte(%struct.page* %195, i32 %198)
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* %21, align 4
  %201 = call i32 @pte_mkdirty(i32 %200)
  %202 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %203 = call i32 @maybe_mkwrite(i32 %201, %struct.vm_area_struct* %202)
  store i32 %203, i32* %21, align 4
  %204 = load %struct.page**, %struct.page*** %19, align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.page*, %struct.page** %204, i64 %206
  %208 = load %struct.page*, %struct.page** %207, align 8
  %209 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %210 = load i64, i64* %14, align 8
  %211 = call i32 @page_add_new_anon_rmap(%struct.page* %208, %struct.vm_area_struct* %209, i64 %210)
  %212 = load i64, i64* %14, align 8
  %213 = call i32* @pte_offset_map(%struct.TYPE_9__* %16, i64 %212)
  store i32* %213, i32** %20, align 8
  %214 = load i32*, i32** %20, align 8
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @pte_none(i32 %215)
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = call i32 @VM_BUG_ON(i32 %219)
  %221 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %222 = load i64, i64* %14, align 8
  %223 = load i32*, i32** %20, align 8
  %224 = load i32, i32* %21, align 4
  %225 = call i32 @set_pte_at(%struct.mm_struct* %221, i64 %222, i32* %223, i32 %224)
  %226 = load i32*, i32** %20, align 8
  %227 = call i32 @pte_unmap(i32* %226)
  br label %228

228:                                              ; preds = %190
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  %231 = load i64, i64* @PAGE_SIZE, align 8
  %232 = load i64, i64* %14, align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* %14, align 8
  br label %186

234:                                              ; preds = %186
  %235 = load %struct.page**, %struct.page*** %19, align 8
  %236 = call i32 @kfree(%struct.page** %235)
  %237 = call i32 (...) @smp_wmb()
  %238 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @pmd_populate(%struct.mm_struct* %238, %struct.TYPE_9__* %239, i32 %240)
  %242 = load %struct.page*, %struct.page** %13, align 8
  %243 = call i32 @page_remove_rmap(%struct.page* %242)
  %244 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %245 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %244, i32 0, i32 0
  %246 = call i32 @spin_unlock(i32* %245)
  %247 = load i32, i32* @VM_FAULT_WRITE, align 4
  %248 = load i32, i32* %17, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %17, align 4
  %250 = load %struct.page*, %struct.page** %13, align 8
  %251 = call i32 @put_page(%struct.page* %250)
  br label %252

252:                                              ; preds = %278, %234, %111, %36
  %253 = load i32, i32* %17, align 4
  ret i32 %253

254:                                              ; preds = %169
  %255 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %256 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %255, i32 0, i32 0
  %257 = call i32 @spin_unlock(i32* %256)
  store i32 0, i32* %18, align 4
  br label %258

258:                                              ; preds = %275, %254
  %259 = load i32, i32* %18, align 4
  %260 = load i32, i32* @HPAGE_PMD_NR, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %278

262:                                              ; preds = %258
  %263 = load %struct.page**, %struct.page*** %19, align 8
  %264 = load i32, i32* %18, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.page*, %struct.page** %263, i64 %265
  %267 = load %struct.page*, %struct.page** %266, align 8
  %268 = call i32 @mem_cgroup_uncharge_page(%struct.page* %267)
  %269 = load %struct.page**, %struct.page*** %19, align 8
  %270 = load i32, i32* %18, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.page*, %struct.page** %269, i64 %271
  %273 = load %struct.page*, %struct.page** %272, align 8
  %274 = call i32 @put_page(%struct.page* %273)
  br label %275

275:                                              ; preds = %262
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %18, align 4
  br label %258

278:                                              ; preds = %258
  %279 = load %struct.page**, %struct.page*** %19, align 8
  %280 = call i32 @kfree(%struct.page** %279)
  br label %252
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.page** @kmalloc(i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local %struct.page* @alloc_page_vma_node(i32, %struct.vm_area_struct*, i64, i32) #2

declare dso_local i32 @page_to_nid(%struct.page*) #2

declare dso_local i64 @mem_cgroup_newpage_charge(%struct.page*, %struct.mm_struct*, i32) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @mem_cgroup_uncharge_page(%struct.page*) #2

declare dso_local i32 @kfree(%struct.page**) #2

declare dso_local i32 @copy_user_highpage(%struct.page*, %struct.page*, i64, %struct.vm_area_struct*) #2

declare dso_local i32 @__SetPageUptodate(%struct.page*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @pmd_same(i32, i32) #2

declare dso_local i32 @VM_BUG_ON(i32) #2

declare dso_local i32 @PageHead(%struct.page*) #2

declare dso_local i32 @pmdp_clear_flush_notify(%struct.vm_area_struct*, i64, %struct.TYPE_9__*) #2

declare dso_local i32 @get_pmd_huge_pte(%struct.mm_struct*) #2

declare dso_local i32 @pmd_populate(%struct.mm_struct*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @mk_pte(%struct.page*, i32) #2

declare dso_local i32 @maybe_mkwrite(i32, %struct.vm_area_struct*) #2

declare dso_local i32 @pte_mkdirty(i32) #2

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #2

declare dso_local i32* @pte_offset_map(%struct.TYPE_9__*, i64) #2

declare dso_local i32 @pte_none(i32) #2

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #2

declare dso_local i32 @pte_unmap(i32*) #2

declare dso_local i32 @smp_wmb(...) #2

declare dso_local i32 @page_remove_rmap(%struct.page*) #2

declare dso_local i32 @spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
