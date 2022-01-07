; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.hugepage_subpool = type { i32 }
%struct.hstate = type { i32 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@hugetlb_lock = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.vm_area_struct*, i64, i32)* @alloc_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_huge_page(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hugepage_subpool*, align 8
  %9 = alloca %struct.hstate*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = call %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct* %12)
  store %struct.hugepage_subpool* %13, %struct.hugepage_subpool** %8, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %14)
  store %struct.hstate* %15, %struct.hstate** %9, align 8
  %16 = load %struct.hstate*, %struct.hstate** %9, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @vma_needs_reservation(%struct.hstate* %16, %struct.vm_area_struct* %17, i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @VM_FAULT_OOM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.page* @ERR_PTR(i32 %24)
  store %struct.page* %25, %struct.page** %4, align 8
  br label %73

26:                                               ; preds = %3
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.page* @ERR_PTR(i32 %36)
  store %struct.page* %37, %struct.page** %4, align 8
  br label %73

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %26
  %40 = call i32 @spin_lock(i32* @hugetlb_lock)
  %41 = load %struct.hstate*, %struct.hstate** %9, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.page* @dequeue_huge_page_vma(%struct.hstate* %41, %struct.vm_area_struct* %42, i64 %43, i32 %44)
  store %struct.page* %45, %struct.page** %10, align 8
  %46 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %47 = load %struct.page*, %struct.page** %10, align 8
  %48 = icmp ne %struct.page* %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %39
  %50 = load %struct.hstate*, %struct.hstate** %9, align 8
  %51 = load i32, i32* @NUMA_NO_NODE, align 4
  %52 = call %struct.page* @alloc_buddy_huge_page(%struct.hstate* %50, i32 %51)
  store %struct.page* %52, %struct.page** %10, align 8
  %53 = load %struct.page*, %struct.page** %10, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %56, i64 %57)
  %59 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.page* @ERR_PTR(i32 %60)
  store %struct.page* %61, %struct.page** %4, align 8
  br label %73

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %39
  %64 = load %struct.page*, %struct.page** %10, align 8
  %65 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %8, align 8
  %66 = ptrtoint %struct.hugepage_subpool* %65 to i64
  %67 = call i32 @set_page_private(%struct.page* %64, i64 %66)
  %68 = load %struct.hstate*, %struct.hstate** %9, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @vma_commit_reservation(%struct.hstate* %68, %struct.vm_area_struct* %69, i64 %70)
  %72 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %72, %struct.page** %4, align 8
  br label %73

73:                                               ; preds = %63, %55, %34, %22
  %74 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %74
}

declare dso_local %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct*) #1

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_needs_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i64 @hugepage_subpool_get_pages(%struct.hugepage_subpool*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.page* @dequeue_huge_page_vma(%struct.hstate*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_buddy_huge_page(%struct.hstate*, i32) #1

declare dso_local i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i64) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @vma_commit_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
