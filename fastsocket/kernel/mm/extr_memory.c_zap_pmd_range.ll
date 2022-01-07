; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_zap_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_zap_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32 }

@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, i64*, %struct.zap_details*)* @zap_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zap_pmd_range(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2, i64 %3, i64 %4, i64* %5, %struct.zap_details* %6) #0 {
  %8 = alloca %struct.mmu_gather*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.zap_details*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.zap_details* %6, %struct.zap_details** %14, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32* @pmd_offset(i32* %17, i64 %18)
  store i32* %19, i32** %15, align 8
  br label %20

20:                                               ; preds = %89, %7
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @pmd_addr_end(i64 %21, i64 %22)
  store i64 %23, i64* %16, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pmd_trans_huge(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %36 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @rwsem_is_locked(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @VM_BUG_ON(i32 %42)
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @split_huge_page_pmd(i32 %46, i32* %47)
  br label %60

49:                                               ; preds = %28
  %50 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i64 @zap_huge_pmd(%struct.mmu_gather* %50, %struct.vm_area_struct* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64*, i64** %13, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  br label %78

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i32*, i32** %15, align 8
  %63 = call i64 @pmd_none_or_trans_huge_or_clear_bad(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64*, i64** %13, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  br label %78

69:                                               ; preds = %61
  %70 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load %struct.zap_details*, %struct.zap_details** %14, align 8
  %77 = call i64 @zap_pte_range(%struct.mmu_gather* %70, %struct.vm_area_struct* %71, i32* %72, i64 %73, i64 %74, i64* %75, %struct.zap_details* %76)
  store i64 %77, i64* %16, align 8
  br label %78

78:                                               ; preds = %69, %65, %55
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %15, align 8
  %81 = load i64, i64* %16, align 8
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i64*, i64** %13, align 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br label %89

89:                                               ; preds = %85, %78
  %90 = phi i1 [ false, %78 ], [ %88, %85 ]
  br i1 %90, label %20, label %91

91:                                               ; preds = %89
  %92 = load i64, i64* %11, align 8
  ret i64 %92
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @split_huge_page_pmd(i32, i32*) #1

declare dso_local i64 @zap_huge_pmd(%struct.mmu_gather*, %struct.vm_area_struct*, i32*) #1

declare dso_local i64 @pmd_none_or_trans_huge_or_clear_bad(i32*) #1

declare dso_local i64 @zap_pte_range(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, i64*, %struct.zap_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
