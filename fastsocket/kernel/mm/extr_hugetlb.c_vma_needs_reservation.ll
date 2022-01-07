; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_vma_needs_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_vma_needs_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }
%struct.vm_area_struct = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.resv_map = type { i32 }

@VM_MAYSHARE = common dso_local global i32 0, align 4
@HPAGE_RESV_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hstate*, %struct.vm_area_struct*, i64)* @vma_needs_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vma_needs_reservation(%struct.hstate* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hstate*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.resv_map*, align 8
  store %struct.hstate* %0, %struct.hstate** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %8, align 8
  %19 = load %struct.address_space*, %struct.address_space** %8, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VM_MAYSHARE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = load %struct.hstate*, %struct.hstate** %5, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @vma_hugecache_offset(%struct.hstate* %29, %struct.vm_area_struct* %30, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i64 @region_chg(i32* %36, i64 %37, i64 %39)
  store i64 %40, i64* %4, align 8
  br label %65

41:                                               ; preds = %3
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %43 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %44 = call i32 @is_vma_resv_set(%struct.vm_area_struct* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i64 1, i64* %4, align 8
  br label %65

47:                                               ; preds = %41
  %48 = load %struct.hstate*, %struct.hstate** %5, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @vma_hugecache_offset(%struct.hstate* %48, %struct.vm_area_struct* %49, i64 %50)
  store i64 %51, i64* %12, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %53 = call %struct.resv_map* @vma_resv_map(%struct.vm_area_struct* %52)
  store %struct.resv_map* %53, %struct.resv_map** %13, align 8
  %54 = load %struct.resv_map*, %struct.resv_map** %13, align 8
  %55 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %54, i32 0, i32 0
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i64 @region_chg(i32* %55, i64 %56, i64 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %4, align 8
  br label %65

64:                                               ; preds = %47
  store i64 0, i64* %4, align 8
  br label %65

65:                                               ; preds = %64, %62, %46, %28
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i64 @vma_hugecache_offset(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @region_chg(i32*, i64, i64) #1

declare dso_local i32 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

declare dso_local %struct.resv_map* @vma_resv_map(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
