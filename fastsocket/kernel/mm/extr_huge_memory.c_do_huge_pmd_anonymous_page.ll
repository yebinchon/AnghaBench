; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_do_huge_pmd_anonymous_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_do_huge_pmd_anonymous_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.page = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@THP_FAULT_FALLBACK = common dso_local global i32 0, align 4
@THP_FAULT_ALLOC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_huge_pmd_anonymous_page(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %5
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %26 = add i64 %24, %25
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %26, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %23
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %33 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %37, i32* %6, align 4
  br label %115

38:                                               ; preds = %31
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %40 = call i32 @khugepaged_enter(%struct.vm_area_struct* %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %44, i32* %6, align 4
  br label %115

45:                                               ; preds = %38
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %47 = call i32 @transparent_hugepage_defrag(%struct.vm_area_struct* %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 (...) @numa_node_id()
  %51 = call %struct.page* @alloc_hugepage_vma(i32 %47, %struct.vm_area_struct* %48, i64 %49, i32 %50, i32 0)
  store %struct.page* %51, %struct.page** %12, align 8
  %52 = load %struct.page*, %struct.page** %12, align 8
  %53 = icmp ne %struct.page* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* @THP_FAULT_FALLBACK, align 4
  %60 = call i32 @count_vm_event(i32 %59)
  br label %81

61:                                               ; preds = %45
  %62 = load i32, i32* @THP_FAULT_ALLOC, align 4
  %63 = call i32 @count_vm_event(i32 %62)
  %64 = load %struct.page*, %struct.page** %12, align 8
  %65 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @mem_cgroup_newpage_charge(%struct.page* %64, %struct.mm_struct* %65, i32 %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.page*, %struct.page** %12, align 8
  %72 = call i32 @put_page(%struct.page* %71)
  br label %81

73:                                               ; preds = %61
  %74 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.page*, %struct.page** %12, align 8
  %79 = call i32 @__do_huge_pmd_anonymous_page(%struct.mm_struct* %74, %struct.vm_area_struct* %75, i64 %76, i32* %77, %struct.page* %78)
  store i32 %79, i32* %6, align 4
  br label %115

80:                                               ; preds = %23, %5
  br label %81

81:                                               ; preds = %80, %70, %58
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pmd_none(i32 %83)
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @__pte_alloc(%struct.mm_struct* %88, %struct.vm_area_struct* %89, i32* %90, i64 %91)
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %96, i32* %6, align 4
  br label %115

97:                                               ; preds = %87, %81
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pmd_trans_huge(i32 %99)
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %115

104:                                              ; preds = %97
  %105 = load i32*, i32** %10, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32* @pte_offset_map(i32* %105, i64 %106)
  store i32* %107, i32** %14, align 8
  %108 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @handle_pte_fault(%struct.mm_struct* %108, %struct.vm_area_struct* %109, i64 %110, i32* %111, i32* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %104, %103, %95, %73, %43, %36
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @khugepaged_enter(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @alloc_hugepage_vma(i32, %struct.vm_area_struct*, i64, i32, i32) #1

declare dso_local i32 @transparent_hugepage_defrag(%struct.vm_area_struct*) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @mem_cgroup_newpage_charge(%struct.page*, %struct.mm_struct*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__do_huge_pmd_anonymous_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, %struct.page*) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @__pte_alloc(%struct.mm_struct*, %struct.vm_area_struct*, i32*, i64) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @handle_pte_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
