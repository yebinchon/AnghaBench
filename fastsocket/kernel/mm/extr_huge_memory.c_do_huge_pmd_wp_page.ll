; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_do_huge_pmd_wp_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_do_huge_pmd_wp_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@VM_FAULT_WRITE = common dso_local global i32 0, align 4
@THP_FAULT_FALLBACK = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@THP_FAULT_ALLOC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_huge_pmd_wp_page(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @VM_BUG_ON(i32 %22)
  %24 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pmd_same(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  br label %218

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.page* @pmd_page(i32 %38)
  store %struct.page* %39, %struct.page** %12, align 8
  %40 = load %struct.page*, %struct.page** %12, align 8
  %41 = call i32 @PageCompound(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.page*, %struct.page** %12, align 8
  %45 = call i32 @PageHead(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi i1 [ true, %37 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @VM_BUG_ON(i32 %50)
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %54 = and i64 %52, %53
  store i64 %54, i64* %14, align 8
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = call i32 @page_mapcount(%struct.page* %55)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %80

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @pmd_mkyoung(i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @pmd_mkdirty(i32 %61)
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %64 = call i32 @maybe_pmd_mkwrite(i32 %62, %struct.vm_area_struct* %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @pmdp_set_access_flags(%struct.vm_area_struct* %65, i64 %66, i32* %67, i32 %68, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @update_mmu_cache(%struct.vm_area_struct* %72, i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %58
  %77 = load i32, i32* @VM_FAULT_WRITE, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %218

80:                                               ; preds = %48
  %81 = load %struct.page*, %struct.page** %12, align 8
  %82 = call i32 @get_page(%struct.page* %81)
  %83 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %84 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %87 = call i64 @transparent_hugepage_enabled(%struct.vm_area_struct* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %80
  %90 = call i32 (...) @transparent_hugepage_debug_cow()
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %94 = call i32 @transparent_hugepage_defrag(%struct.vm_area_struct* %93)
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 (...) @numa_node_id()
  %98 = call %struct.page* @alloc_hugepage_vma(i32 %94, %struct.vm_area_struct* %95, i64 %96, i32 %97, i32 0)
  store %struct.page* %98, %struct.page** %13, align 8
  br label %100

99:                                               ; preds = %89, %80
  store %struct.page* null, %struct.page** %13, align 8
  br label %100

100:                                              ; preds = %99, %92
  %101 = load %struct.page*, %struct.page** %13, align 8
  %102 = icmp ne %struct.page* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %100
  %108 = load i32, i32* @THP_FAULT_FALLBACK, align 4
  %109 = call i32 @count_vm_event(i32 %108)
  %110 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.page*, %struct.page** %12, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @do_huge_pmd_wp_page_fallback(%struct.mm_struct* %110, %struct.vm_area_struct* %111, i64 %112, i32* %113, i32 %114, %struct.page* %115, i64 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @VM_FAULT_OOM, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = load %struct.page*, %struct.page** %12, align 8
  %124 = call i32 @split_huge_page(%struct.page* %123)
  br label %125

125:                                              ; preds = %122, %107
  %126 = load %struct.page*, %struct.page** %12, align 8
  %127 = call i32 @put_page(%struct.page* %126)
  br label %222

128:                                              ; preds = %100
  %129 = load i32, i32* @THP_FAULT_ALLOC, align 4
  %130 = call i32 @count_vm_event(i32 %129)
  %131 = load %struct.page*, %struct.page** %13, align 8
  %132 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i32 @mem_cgroup_newpage_charge(%struct.page* %131, %struct.mm_struct* %132, i32 %133)
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %128
  %138 = load %struct.page*, %struct.page** %13, align 8
  %139 = call i32 @put_page(%struct.page* %138)
  %140 = load %struct.page*, %struct.page** %12, align 8
  %141 = call i32 @split_huge_page(%struct.page* %140)
  %142 = load %struct.page*, %struct.page** %12, align 8
  %143 = call i32 @put_page(%struct.page* %142)
  %144 = load i32, i32* @VM_FAULT_OOM, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %222

147:                                              ; preds = %128
  %148 = load %struct.page*, %struct.page** %13, align 8
  %149 = load %struct.page*, %struct.page** %12, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %152 = load i32, i32* @HPAGE_PMD_NR, align 4
  %153 = call i32 @copy_user_huge_page(%struct.page* %148, %struct.page* %149, i64 %150, %struct.vm_area_struct* %151, i32 %152)
  %154 = load %struct.page*, %struct.page** %13, align 8
  %155 = call i32 @__SetPageUptodate(%struct.page* %154)
  %156 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %157 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %156, i32 0, i32 0
  %158 = call i32 @spin_lock(i32* %157)
  %159 = load %struct.page*, %struct.page** %12, align 8
  %160 = call i32 @put_page(%struct.page* %159)
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @pmd_same(i32 %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %147
  %171 = load %struct.page*, %struct.page** %13, align 8
  %172 = call i32 @mem_cgroup_uncharge_page(%struct.page* %171)
  %173 = load %struct.page*, %struct.page** %13, align 8
  %174 = call i32 @put_page(%struct.page* %173)
  br label %217

175:                                              ; preds = %147
  %176 = load %struct.page*, %struct.page** %12, align 8
  %177 = call i32 @PageHead(%struct.page* %176)
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 @VM_BUG_ON(i32 %180)
  %182 = load %struct.page*, %struct.page** %13, align 8
  %183 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %184 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @mk_pmd(%struct.page* %182, i32 %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @pmd_mkdirty(i32 %187)
  %189 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %190 = call i32 @maybe_pmd_mkwrite(i32 %188, %struct.vm_area_struct* %189)
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @pmd_mkhuge(i32 %191)
  store i32 %192, i32* %16, align 4
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = call i32 @pmdp_clear_flush_notify(%struct.vm_area_struct* %193, i64 %194, i32* %195)
  %197 = load %struct.page*, %struct.page** %13, align 8
  %198 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %199 = load i64, i64* %14, align 8
  %200 = call i32 @page_add_new_anon_rmap(%struct.page* %197, %struct.vm_area_struct* %198, i64 %199)
  %201 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %202 = load i64, i64* %14, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @set_pmd_at(%struct.mm_struct* %201, i64 %202, i32* %203, i32 %204)
  %206 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %207 = load i64, i64* %8, align 8
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @update_mmu_cache(%struct.vm_area_struct* %206, i64 %207, i32 %208)
  %210 = load %struct.page*, %struct.page** %12, align 8
  %211 = call i32 @page_remove_rmap(%struct.page* %210)
  %212 = load %struct.page*, %struct.page** %12, align 8
  %213 = call i32 @put_page(%struct.page* %212)
  %214 = load i32, i32* @VM_FAULT_WRITE, align 4
  %215 = load i32, i32* %11, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %175, %170
  br label %218

218:                                              ; preds = %217, %76, %36
  %219 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %220 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %219, i32 0, i32 0
  %221 = call i32 @spin_unlock(i32* %220)
  br label %222

222:                                              ; preds = %218, %137, %125
  %223 = load i32, i32* %11, align 4
  ret i32 %223
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_same(i32, i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @pmd_mkyoung(i32) #1

declare dso_local i32 @maybe_pmd_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i64 @pmdp_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @transparent_hugepage_enabled(%struct.vm_area_struct*) #1

declare dso_local i32 @transparent_hugepage_debug_cow(...) #1

declare dso_local %struct.page* @alloc_hugepage_vma(i32, %struct.vm_area_struct*, i64, i32, i32) #1

declare dso_local i32 @transparent_hugepage_defrag(%struct.vm_area_struct*) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @do_huge_pmd_wp_page_fallback(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32, %struct.page*, i64) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mem_cgroup_newpage_charge(%struct.page*, %struct.mm_struct*, i32) #1

declare dso_local i32 @copy_user_huge_page(%struct.page*, %struct.page*, i64, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @mem_cgroup_uncharge_page(%struct.page*) #1

declare dso_local i32 @mk_pmd(%struct.page*, i32) #1

declare dso_local i32 @pmd_mkhuge(i32) #1

declare dso_local i32 @pmdp_clear_flush_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
