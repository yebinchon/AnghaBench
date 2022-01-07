; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_vm_op_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_vm_op_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.hstate = type { i32 }
%struct.resv_map = type { i32 }
%struct.hugepage_subpool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @hugetlb_vm_op_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_vm_op_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca %struct.resv_map*, align 8
  %5 = alloca %struct.hugepage_subpool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %10 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %9)
  store %struct.hstate* %10, %struct.hstate** %3, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %12 = call %struct.resv_map* @vma_resv_map(%struct.vm_area_struct* %11)
  store %struct.resv_map* %12, %struct.resv_map** %4, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %14 = call %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct* %13)
  store %struct.hugepage_subpool* %14, %struct.hugepage_subpool** %5, align 8
  %15 = load %struct.resv_map*, %struct.resv_map** %4, align 8
  %16 = icmp ne %struct.resv_map* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  %18 = load %struct.hstate*, %struct.hstate** %3, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @vma_hugecache_offset(%struct.hstate* %18, %struct.vm_area_struct* %19, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.hstate*, %struct.hstate** %3, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @vma_hugecache_offset(%struct.hstate* %24, %struct.vm_area_struct* %25, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %30, %31
  %33 = load %struct.resv_map*, %struct.resv_map** %4, align 8
  %34 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @region_count(i32* %34, i64 %35, i64 %36)
  %38 = sub i64 %32, %37
  store i64 %38, i64* %6, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %40 = call i32 @resv_map_put(%struct.vm_area_struct* %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %17
  %44 = load %struct.hstate*, %struct.hstate** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 0, %45
  %47 = call i32 @hugetlb_acct_memory(%struct.hstate* %44, i64 %46)
  %48 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %48, i64 %49)
  br label %51

51:                                               ; preds = %43, %17
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local %struct.resv_map* @vma_resv_map(%struct.vm_area_struct*) #1

declare dso_local %struct.hugepage_subpool* @subpool_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_hugecache_offset(%struct.hstate*, %struct.vm_area_struct*, i32) #1

declare dso_local i64 @region_count(i32*, i64, i64) #1

declare dso_local i32 @resv_map_put(%struct.vm_area_struct*) #1

declare dso_local i32 @hugetlb_acct_memory(%struct.hstate*, i64) #1

declare dso_local i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
