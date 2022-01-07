; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_cow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.hstate = type { i32 }

@VM_MAYSHARE = common dso_local global i32 0, align 4
@HPAGE_RESV_OWNER = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32, %struct.page*)* @hugetlb_cow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_cow(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32 %4, %struct.page* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.hstate*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %20 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %19)
  store %struct.hstate* %20, %struct.hstate** %14, align 8
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.page* @pte_page(i32 %21)
  store %struct.page* %22, %struct.page** %15, align 8
  br label %23

23:                                               ; preds = %89, %6
  %24 = load %struct.page*, %struct.page** %15, align 8
  %25 = call i32 @page_mapcount(%struct.page* %24)
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.page*, %struct.page** %15, align 8
  %32 = call i64 @PageAnon(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %15, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @page_move_anon_rmap(%struct.page* %35, %struct.vm_area_struct* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @set_huge_ptep_writable(%struct.vm_area_struct* %40, i64 %41, i32* %42)
  store i32 0, i32* %7, align 4
  br label %195

44:                                               ; preds = %23
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VM_MAYSHARE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %44
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %53 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %54 = call i64 @is_vma_resv_set(%struct.vm_area_struct* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.page*, %struct.page** %15, align 8
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = icmp ne %struct.page* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %18, align 4
  br label %61

61:                                               ; preds = %60, %56, %51, %44
  %62 = load %struct.page*, %struct.page** %15, align 8
  %63 = call i32 @page_cache_get(%struct.page* %62)
  %64 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %65 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call %struct.page* @alloc_huge_page(%struct.vm_area_struct* %67, i64 %68, i32 %69)
  store %struct.page* %70, %struct.page** %16, align 8
  %71 = load %struct.page*, %struct.page** %16, align 8
  %72 = call i64 @IS_ERR(%struct.page* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %61
  %75 = load %struct.page*, %struct.page** %15, align 8
  %76 = call i32 @page_cache_release(%struct.page* %75)
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @huge_pte_none(i32 %80)
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %85 = load %struct.page*, %struct.page** %15, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i64 @unmap_ref_private(%struct.mm_struct* %83, %struct.vm_area_struct* %84, %struct.page* %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %79
  %90 = load %struct.page*, %struct.page** %15, align 8
  %91 = call i32 @page_count(%struct.page* %90)
  %92 = icmp ne i32 %91, 1
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @huge_pte_none(i32 %95)
  %97 = call i32 @BUG_ON(i32 %96)
  %98 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %99 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %98, i32 0, i32 0
  %100 = call i32 @spin_lock(i32* %99)
  br label %23

101:                                              ; preds = %79
  %102 = call i32 @WARN_ON_ONCE(i32 1)
  br label %103

103:                                              ; preds = %101, %74
  %104 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %105 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.page*, %struct.page** %16, align 8
  %108 = call i32 @PTR_ERR(%struct.page* %107)
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %195

110:                                              ; preds = %61
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %112 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %111)
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %117 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %116, i32 0, i32 0
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %119, i32* %7, align 4
  br label %195

120:                                              ; preds = %110
  %121 = load %struct.page*, %struct.page** %16, align 8
  %122 = load %struct.page*, %struct.page** %15, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %125 = load %struct.hstate*, %struct.hstate** %14, align 8
  %126 = call i32 @pages_per_huge_page(%struct.hstate* %125)
  %127 = call i32 @copy_user_huge_page(%struct.page* %121, %struct.page* %122, i64 %123, %struct.vm_area_struct* %124, i32 %126)
  %128 = load %struct.page*, %struct.page** %16, align 8
  %129 = call i32 @__SetPageUptodate(%struct.page* %128)
  %130 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %131 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %130, i32 0, i32 0
  %132 = call i32 @spin_lock(i32* %131)
  %133 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.hstate*, %struct.hstate** %14, align 8
  %136 = call i64 @huge_page_mask(%struct.hstate* %135)
  %137 = and i64 %134, %136
  %138 = call i32* @huge_pte_offset(%struct.mm_struct* %133, i64 %137)
  store i32* %138, i32** %11, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @huge_ptep_get(i32* %139)
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @pte_same(i32 %140, i32 %141)
  %143 = call i64 @likely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %190

145:                                              ; preds = %120
  %146 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.hstate*, %struct.hstate** %14, align 8
  %149 = call i64 @huge_page_mask(%struct.hstate* %148)
  %150 = and i64 %147, %149
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.hstate*, %struct.hstate** %14, align 8
  %153 = call i64 @huge_page_mask(%struct.hstate* %152)
  %154 = and i64 %151, %153
  %155 = load %struct.hstate*, %struct.hstate** %14, align 8
  %156 = call i64 @huge_page_size(%struct.hstate* %155)
  %157 = add i64 %154, %156
  %158 = call i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct* %146, i64 %150, i64 %157)
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @huge_ptep_clear_flush(%struct.vm_area_struct* %159, i64 %160, i32* %161)
  %163 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %167 = load %struct.page*, %struct.page** %16, align 8
  %168 = call i32 @make_huge_pte(%struct.vm_area_struct* %166, %struct.page* %167, i32 1)
  %169 = call i32 @set_huge_pte_at(%struct.mm_struct* %163, i64 %164, i32* %165, i32 %168)
  %170 = load %struct.page*, %struct.page** %15, align 8
  %171 = call i32 @page_remove_rmap(%struct.page* %170)
  %172 = load %struct.page*, %struct.page** %16, align 8
  %173 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %174 = load i64, i64* %10, align 8
  %175 = call i32 @hugepage_add_new_anon_rmap(%struct.page* %172, %struct.vm_area_struct* %173, i64 %174)
  %176 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %176, %struct.page** %16, align 8
  %177 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load %struct.hstate*, %struct.hstate** %14, align 8
  %180 = call i64 @huge_page_mask(%struct.hstate* %179)
  %181 = and i64 %178, %180
  %182 = load i64, i64* %10, align 8
  %183 = load %struct.hstate*, %struct.hstate** %14, align 8
  %184 = call i64 @huge_page_mask(%struct.hstate* %183)
  %185 = and i64 %182, %184
  %186 = load %struct.hstate*, %struct.hstate** %14, align 8
  %187 = call i64 @huge_page_size(%struct.hstate* %186)
  %188 = add i64 %185, %187
  %189 = call i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct* %177, i64 %181, i64 %188)
  br label %190

190:                                              ; preds = %145, %120
  %191 = load %struct.page*, %struct.page** %16, align 8
  %192 = call i32 @page_cache_release(%struct.page* %191)
  %193 = load %struct.page*, %struct.page** %15, align 8
  %194 = call i32 @page_cache_release(%struct.page* %193)
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %190, %115, %103, %39
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @page_move_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @set_huge_ptep_writable(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_huge_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @huge_pte_none(i32) #1

declare dso_local i64 @unmap_ref_private(%struct.mm_struct*, %struct.vm_area_struct*, %struct.page*, i64) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @copy_user_huge_page(%struct.page*, %struct.page*, i64, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @huge_page_mask(%struct.hstate*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @huge_page_size(%struct.hstate*) #1

declare dso_local i32 @huge_ptep_clear_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @set_huge_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @make_huge_pte(%struct.vm_area_struct*, %struct.page*, i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*) #1

declare dso_local i32 @hugepage_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
