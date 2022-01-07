; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_zap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_zap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.zap_details = type { i32 }
%struct.mmu_gather = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zap_page_range(%struct.vm_area_struct* %0, i64 %1, i64 %2, %struct.zap_details* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zap_details*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.mmu_gather*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.zap_details* %3, %struct.zap_details** %8, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = call i32 (...) @lru_add_drain()
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = call i32 @update_hiwater_rss(%struct.mm_struct* %20)
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.zap_details*, %struct.zap_details** %8, align 8
  %26 = call i64 @unmap_vmas(%struct.mmu_gather** %10, %struct.vm_area_struct* %22, i64 %23, i64 %24, i64* %12, %struct.zap_details* %25, i32 0)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %28 = icmp ne %struct.mmu_gather* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.mmu_gather*, %struct.mmu_gather** %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %30, i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %4
  %35 = load i64, i64* %11, align 8
  ret i64 %35
}

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @update_hiwater_rss(%struct.mm_struct*) #1

declare dso_local i64 @unmap_vmas(%struct.mmu_gather**, %struct.vm_area_struct*, i64, i64, i64*, %struct.zap_details*, i32) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
