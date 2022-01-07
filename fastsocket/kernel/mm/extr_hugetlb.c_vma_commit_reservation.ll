; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_vma_commit_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_vma_commit_reservation.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hstate*, %struct.vm_area_struct*, i64)* @vma_commit_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vma_commit_reservation(%struct.hstate* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.hstate*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.resv_map*, align 8
  store %struct.hstate* %0, %struct.hstate** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %7, align 8
  %17 = load %struct.address_space*, %struct.address_space** %7, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %8, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VM_MAYSHARE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.hstate*, %struct.hstate** %4, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @vma_hugecache_offset(%struct.hstate* %27, %struct.vm_area_struct* %28, i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @region_add(i32* %34, i64 %35, i64 %37)
  br label %58

39:                                               ; preds = %3
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %42 = call i64 @is_vma_resv_set(%struct.vm_area_struct* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.hstate*, %struct.hstate** %4, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @vma_hugecache_offset(%struct.hstate* %45, %struct.vm_area_struct* %46, i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = call %struct.resv_map* @vma_resv_map(%struct.vm_area_struct* %49)
  store %struct.resv_map* %50, %struct.resv_map** %11, align 8
  %51 = load %struct.resv_map*, %struct.resv_map** %11, align 8
  %52 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @region_add(i32* %52, i64 %53, i64 %55)
  br label %57

57:                                               ; preds = %44, %39
  br label %58

58:                                               ; preds = %57, %26
  ret void
}

declare dso_local i64 @vma_hugecache_offset(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @region_add(i32*, i64, i64) #1

declare dso_local i64 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

declare dso_local %struct.resv_map* @vma_resv_map(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
