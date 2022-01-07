; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_exit_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_exit_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.vm_area_struct*, i64 }
%struct.vm_area_struct = type { i32, %struct.vm_area_struct* }
%struct.mmu_gather = type { i32 }

@VM_LOCKED = common dso_local global i32 0, align 4
@FIRST_USER_ADDRESS = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.mmu_gather*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %8 = call i32 @mmu_notifier_release(%struct.mm_struct* %7)
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 1
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %4, align 8
  br label %17

17:                                               ; preds = %30, %13
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = icmp ne %struct.vm_area_struct* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VM_LOCKED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %29 = call i32 @munlock_vma_pages_all(%struct.vm_area_struct* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %32, align 8
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %4, align 8
  br label %17

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %37 = call i32 @arch_exit_mmap(%struct.mm_struct* %36)
  %38 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 1
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %39, align 8
  store %struct.vm_area_struct* %40, %struct.vm_area_struct** %4, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %42 = icmp ne %struct.vm_area_struct* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %80

44:                                               ; preds = %35
  %45 = call i32 (...) @lru_add_drain()
  %46 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %47 = call i32 @flush_cache_mm(%struct.mm_struct* %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %49 = call i64 @unmap_vmas(%struct.mmu_gather** %3, %struct.vm_area_struct* %48, i32 0, i32 -1, i64* %5, i32* null, i32 1)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @vm_unacct_memory(i64 %50)
  %52 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %54 = load i32, i32* @FIRST_USER_ADDRESS, align 4
  %55 = call i32 @free_pgtables(%struct.mmu_gather* %52, %struct.vm_area_struct* %53, i32 %54, i32 0)
  %56 = load %struct.mmu_gather*, %struct.mmu_gather** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %56, i32 0, i64 %57)
  %59 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %60 = call i32 @arch_flush_exec_range(%struct.mm_struct* %59)
  br label %61

61:                                               ; preds = %64, %44
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %63 = icmp ne %struct.vm_area_struct* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %66 = call %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct* %65)
  store %struct.vm_area_struct* %66, %struct.vm_area_struct** %4, align 8
  br label %61

67:                                               ; preds = %61
  %68 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %69 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FIRST_USER_ADDRESS, align 4
  %72 = load i32, i32* @PMD_SIZE, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* @PMD_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = icmp sgt i32 %70, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  br label %80

80:                                               ; preds = %67, %43
  ret void
}

declare dso_local i32 @mmu_notifier_release(%struct.mm_struct*) #1

declare dso_local i32 @munlock_vma_pages_all(%struct.vm_area_struct*) #1

declare dso_local i32 @arch_exit_mmap(%struct.mm_struct*) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @flush_cache_mm(%struct.mm_struct*) #1

declare dso_local i64 @unmap_vmas(%struct.mmu_gather**, %struct.vm_area_struct*, i32, i32, i64*, i32*, i32) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

declare dso_local i32 @free_pgtables(%struct.mmu_gather*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i32, i64) #1

declare dso_local i32 @arch_flush_exec_range(%struct.mm_struct*) #1

declare dso_local %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
