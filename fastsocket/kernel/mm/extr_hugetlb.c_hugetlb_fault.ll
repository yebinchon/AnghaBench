; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.hstate = type { i32 }

@hugetlb_fault.hugetlb_instantiation_mutex = internal global i32 0, align 4
@VM_FAULT_HWPOISON_LARGE = common dso_local global i32 0, align 4
@hstates = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hugetlb_fault(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.hstate*, align 8
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.page* null, %struct.page** %13, align 8
  store %struct.page* null, %struct.page** %14, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %17)
  store %struct.hstate* %18, %struct.hstate** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32* @huge_pte_offset(%struct.mm_struct* %19, i64 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @huge_ptep_get(i32* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @is_hugetlb_entry_migration(i32 %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @migration_entry_wait(%struct.mm_struct* %32, i32* %33, i64 %34)
  store i32 0, i32* %5, align 4
  br label %193

36:                                               ; preds = %24
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @is_hugetlb_entry_hwpoisoned(i32 %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* @VM_FAULT_HWPOISON_LARGE, align 4
  %43 = load %struct.hstate*, %struct.hstate** %15, align 8
  %44 = load i32, i32* @hstates, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds %struct.hstate, %struct.hstate* %43, i64 %46
  %48 = call i32 @VM_FAULT_SET_HINDEX(%struct.hstate* %47)
  %49 = or i32 %42, %48
  store i32 %49, i32* %5, align 4
  br label %193

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %4
  %53 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.hstate*, %struct.hstate** %15, align 8
  %56 = call i32 @huge_page_size(%struct.hstate* %55)
  %57 = call i32* @huge_pte_alloc(%struct.mm_struct* %53, i64 %54, i32 %56, i32* %16)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %61, i32* %5, align 4
  br label %193

62:                                               ; preds = %52
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %193

66:                                               ; preds = %62
  %67 = call i32 @mutex_lock(i32* @hugetlb_fault.hugetlb_instantiation_mutex)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @huge_ptep_get(i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @huge_pte_none(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @hugetlb_no_page(%struct.mm_struct* %74, %struct.vm_area_struct* %75, i64 %76, i32* %77, i32 %78)
  store i32 %79, i32* %12, align 4
  br label %190

80:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @pte_write(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %85
  %90 = load %struct.hstate*, %struct.hstate** %15, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i64 @vma_needs_reservation(%struct.hstate* %90, %struct.vm_area_struct* %91, i64 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %96, i32* %12, align 4
  br label %190

97:                                               ; preds = %89
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @VM_MAYSHARE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %97
  %105 = load %struct.hstate*, %struct.hstate** %15, align 8
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call %struct.page* @hugetlbfs_pagecache_page(%struct.hstate* %105, %struct.vm_area_struct* %106, i64 %107)
  store %struct.page* %108, %struct.page** %14, align 8
  br label %109

109:                                              ; preds = %104, %97
  br label %110

110:                                              ; preds = %109, %85, %80
  %111 = load i32, i32* %11, align 4
  %112 = call %struct.page* @pte_page(i32 %111)
  store %struct.page* %112, %struct.page** %13, align 8
  %113 = load %struct.page*, %struct.page** %13, align 8
  %114 = load %struct.page*, %struct.page** %14, align 8
  %115 = icmp ne %struct.page* %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.page*, %struct.page** %13, align 8
  %118 = call i32 @lock_page(%struct.page* %117)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %121 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %120, i32 0, i32 0
  %122 = call i32 @spin_lock(i32* %121)
  %123 = load i32, i32* %11, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @huge_ptep_get(i32* %124)
  %126 = call i32 @pte_same(i32 %123, i32 %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %119
  br label %171

133:                                              ; preds = %119
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @pte_write(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.page*, %struct.page** %14, align 8
  %149 = call i32 @hugetlb_cow(%struct.mm_struct* %143, %struct.vm_area_struct* %144, i64 %145, i32* %146, i32 %147, %struct.page* %148)
  store i32 %149, i32* %12, align 4
  br label %171

150:                                              ; preds = %138
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @pte_mkdirty(i32 %151)
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %150, %133
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @pte_mkyoung(i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %162 = and i32 %160, %161
  %163 = call i64 @huge_ptep_set_access_flags(%struct.vm_area_struct* %156, i64 %157, i32* %158, i32 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %153
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %167 = load i64, i64* %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @update_mmu_cache(%struct.vm_area_struct* %166, i64 %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %153
  br label %171

171:                                              ; preds = %170, %142, %132
  %172 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %173 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %172, i32 0, i32 0
  %174 = call i32 @spin_unlock(i32* %173)
  %175 = load %struct.page*, %struct.page** %14, align 8
  %176 = icmp ne %struct.page* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.page*, %struct.page** %14, align 8
  %179 = call i32 @unlock_page(%struct.page* %178)
  %180 = load %struct.page*, %struct.page** %14, align 8
  %181 = call i32 @put_page(%struct.page* %180)
  br label %182

182:                                              ; preds = %177, %171
  %183 = load %struct.page*, %struct.page** %13, align 8
  %184 = load %struct.page*, %struct.page** %14, align 8
  %185 = icmp ne %struct.page* %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load %struct.page*, %struct.page** %13, align 8
  %188 = call i32 @unlock_page(%struct.page* %187)
  br label %189

189:                                              ; preds = %186, %182
  br label %190

190:                                              ; preds = %189, %95, %73
  %191 = call i32 @mutex_unlock(i32* @hugetlb_fault.hugetlb_instantiation_mutex)
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %190, %65, %60, %41, %31
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_hugetlb_entry_migration(i32) #1

declare dso_local i32 @migration_entry_wait(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @is_hugetlb_entry_hwpoisoned(i32) #1

declare dso_local i32 @VM_FAULT_SET_HINDEX(%struct.hstate*) #1

declare dso_local i32* @huge_pte_alloc(%struct.mm_struct*, i64, i32, i32*) #1

declare dso_local i32 @huge_page_size(%struct.hstate*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @huge_pte_none(i32) #1

declare dso_local i32 @hugetlb_no_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i64 @vma_needs_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local %struct.page* @hugetlbfs_pagecache_page(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @hugetlb_cow(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32, %struct.page*) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i64 @huge_ptep_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
