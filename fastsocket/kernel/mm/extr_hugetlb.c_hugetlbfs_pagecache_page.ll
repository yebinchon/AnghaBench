; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlbfs_pagecache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlbfs_pagecache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.hstate*, %struct.vm_area_struct*, i64)* @hugetlbfs_pagecache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @hugetlbfs_pagecache_page(%struct.hstate* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.hstate*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %7, align 8
  %14 = load %struct.hstate*, %struct.hstate** %4, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @vma_hugecache_offset(%struct.hstate* %14, %struct.vm_area_struct* %15, i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.page* @find_lock_page(%struct.address_space* %18, i32 %19)
  ret %struct.page* %20
}

declare dso_local i32 @vma_hugecache_offset(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
