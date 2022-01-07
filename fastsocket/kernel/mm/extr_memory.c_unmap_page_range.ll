; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_unmap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_unmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, i64*, %struct.zap_details*)* @unmap_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unmap_page_range(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, i64* %4, %struct.zap_details* %5) #0 {
  %7 = alloca %struct.mmu_gather*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.zap_details*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.zap_details* %5, %struct.zap_details** %12, align 8
  %15 = load %struct.zap_details*, %struct.zap_details** %12, align 8
  %16 = icmp ne %struct.zap_details* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %6
  %18 = load %struct.zap_details*, %struct.zap_details** %12, align 8
  %19 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.zap_details*, %struct.zap_details** %12, align 8
  %24 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.zap_details* null, %struct.zap_details** %12, align 8
  br label %28

28:                                               ; preds = %27, %22, %17, %6
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp uge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = call i32 (...) @mem_cgroup_uncharge_start()
  %35 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %37 = call i32 @tlb_start_vma(%struct.mmu_gather* %35, %struct.vm_area_struct* %36)
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32* @pgd_offset(i32 %40, i64 %41)
  store i32* %42, i32** %13, align 8
  br label %43

43:                                               ; preds = %74, %28
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @pgd_addr_end(i64 %44, i64 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i64 @pgd_none_or_clear_bad(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  br label %63

54:                                               ; preds = %43
  %55 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = load %struct.zap_details*, %struct.zap_details** %12, align 8
  %62 = call i64 @zap_pud_range(%struct.mmu_gather* %55, %struct.vm_area_struct* %56, i32* %57, i64 %58, i64 %59, i64* %60, %struct.zap_details* %61)
  store i64 %62, i64* %14, align 8
  br label %63

63:                                               ; preds = %54, %50
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %13, align 8
  %66 = load i64, i64* %14, align 8
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ false, %63 ], [ %73, %70 ]
  br i1 %75, label %43, label %76

76:                                               ; preds = %74
  %77 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %79 = call i32 @tlb_end_vma(%struct.mmu_gather* %77, %struct.vm_area_struct* %78)
  %80 = call i32 (...) @mem_cgroup_uncharge_end()
  %81 = load i64, i64* %9, align 8
  ret i64 %81
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mem_cgroup_uncharge_start(...) #1

declare dso_local i32 @tlb_start_vma(%struct.mmu_gather*, %struct.vm_area_struct*) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i64 @zap_pud_range(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, i64*, %struct.zap_details*) #1

declare dso_local i32 @tlb_end_vma(%struct.mmu_gather*, %struct.vm_area_struct*) #1

declare dso_local i32 @mem_cgroup_uncharge_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
