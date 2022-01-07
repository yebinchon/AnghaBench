; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_unreserve_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_unreserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hstate = type { i32 }
%struct.hugepage_subpool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_unreserve_pages(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hstate*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hugepage_subpool*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.hstate* @hstate_inode(%struct.inode* %10)
  store %struct.hstate* %11, %struct.hstate** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @region_truncate(i32* %15, i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.hugepage_subpool* @subpool_inode(%struct.inode* %18)
  store %struct.hugepage_subpool* %19, %struct.hugepage_subpool** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.hstate*, %struct.hstate** %7, align 8
  %24 = call i64 @blocks_per_huge_page(%struct.hstate* %23)
  %25 = load i64, i64* %6, align 8
  %26 = mul nsw i64 %24, %25
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %34, i64 %37)
  %39 = load %struct.hstate*, %struct.hstate** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub nsw i64 %40, %41
  %43 = sub nsw i64 0, %42
  %44 = call i32 @hugetlb_acct_memory(%struct.hstate* %39, i64 %43)
  ret void
}

declare dso_local %struct.hstate* @hstate_inode(%struct.inode*) #1

declare dso_local i64 @region_truncate(i32*, i64) #1

declare dso_local %struct.hugepage_subpool* @subpool_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @blocks_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i64) #1

declare dso_local i32 @hugetlb_acct_memory(%struct.hstate*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
