; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_free_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_free_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32* }
%struct.hstate = type { i64*, i32 }
%struct.hugepage_subpool = type { i32 }

@hugetlb_lock = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @free_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_huge_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hugepage_subpool*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call %struct.hstate* @page_hstate(%struct.page* %6)
  store %struct.hstate* %7, %struct.hstate** %3, align 8
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call i32 @page_to_nid(%struct.page* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call i64 @page_private(%struct.page* %10)
  %12 = inttoptr i64 %11 to %struct.hugepage_subpool*
  store %struct.hugepage_subpool* %12, %struct.hugepage_subpool** %5, align 8
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @set_page_private(%struct.page* %13, i32 0)
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @page_count(%struct.page* %17)
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @page_mapcount(%struct.page* %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = call i32 @spin_lock(i32* @hugetlb_lock)
  %27 = load %struct.hstate*, %struct.hstate** %3, align 8
  %28 = getelementptr inbounds %struct.hstate, %struct.hstate* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %1
  %36 = load %struct.hstate*, %struct.hstate** %3, align 8
  %37 = call i64 @huge_page_order(%struct.hstate* %36)
  %38 = load i64, i64* @MAX_ORDER, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.hstate*, %struct.hstate** %3, align 8
  %42 = load %struct.page*, %struct.page** %2, align 8
  %43 = call i32 @update_and_free_page(%struct.hstate* %41, %struct.page* %42)
  %44 = load %struct.hstate*, %struct.hstate** %3, align 8
  %45 = getelementptr inbounds %struct.hstate, %struct.hstate* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.hstate*, %struct.hstate** %3, align 8
  %49 = getelementptr inbounds %struct.hstate, %struct.hstate* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %60

56:                                               ; preds = %35, %1
  %57 = load %struct.hstate*, %struct.hstate** %3, align 8
  %58 = load %struct.page*, %struct.page** %2, align 8
  %59 = call i32 @enqueue_huge_page(%struct.hstate* %57, %struct.page* %58)
  br label %60

60:                                               ; preds = %56, %40
  %61 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %62 = load %struct.hugepage_subpool*, %struct.hugepage_subpool** %5, align 8
  %63 = call i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool* %62, i32 1)
  ret void
}

declare dso_local %struct.hstate* @page_hstate(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @huge_page_order(%struct.hstate*) #1

declare dso_local i32 @update_and_free_page(%struct.hstate*, %struct.page*) #1

declare dso_local i32 @enqueue_huge_page(%struct.hstate*, %struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hugepage_subpool_put_pages(%struct.hugepage_subpool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
