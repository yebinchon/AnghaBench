; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_zap_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_zap_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@anon_rss = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_huge_pmd(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2) #0 {
  %4 = alloca %struct.mmu_gather*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %11 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pmd_trans_huge(i32 %16)
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %87

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pmd_trans_splitting(i32 %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %28 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @wait_split_huge_page(i32 %34, i32* %35)
  br label %86

37:                                               ; preds = %20
  %38 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %39 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @get_pmd_huge_pte(%struct.TYPE_4__* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.page* @pmd_page(i32 %43)
  store %struct.page* %44, %struct.page** %8, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @pmd_clear(i32* %45)
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = call i32 @page_remove_rmap(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = call i64 @page_mapcount(%struct.page* %49)
  %51 = icmp slt i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @VM_BUG_ON(i32 %52)
  %54 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %55 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* @anon_rss, align 4
  %58 = load i32, i32* @HPAGE_PMD_NR, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @add_mm_counter(%struct.TYPE_4__* %56, i32 %57, i32 %59)
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = call i32 @PageHead(%struct.page* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @VM_BUG_ON(i32 %65)
  %67 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %68 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %74 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %79 = load %struct.page*, %struct.page** %8, align 8
  %80 = call i32 @tlb_remove_page(%struct.mmu_gather* %78, %struct.page* %79)
  %81 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %82 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @pte_free(%struct.TYPE_4__* %83, i32 %84)
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %37, %26
  br label %93

87:                                               ; preds = %3
  %88 = load %struct.mmu_gather*, %struct.mmu_gather** %4, align 8
  %89 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %87, %86
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_trans_splitting(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_split_huge_page(i32, i32*) #1

declare dso_local i32 @get_pmd_huge_pte(%struct.TYPE_4__*) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @page_remove_rmap(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i32 @add_mm_counter(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @tlb_remove_page(%struct.mmu_gather*, %struct.page*) #1

declare dso_local i32 @pte_free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
