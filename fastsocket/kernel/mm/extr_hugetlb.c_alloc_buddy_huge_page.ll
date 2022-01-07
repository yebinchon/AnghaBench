; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_buddy_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_buddy_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i64, i64, i64, i32, i32*, i32* }

@MAX_ORDER = common dso_local global i64 0, align 8
@hugetlb_lock = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@htlb_alloc_mask = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_REPEAT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@free_huge_page = common dso_local global i32 0, align 4
@HTLB_BUDDY_PGALLOC = common dso_local global i32 0, align 4
@HTLB_BUDDY_PGALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.hstate*, i32)* @alloc_buddy_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_buddy_huge_page(%struct.hstate* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.hstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hstate*, %struct.hstate** %4, align 8
  %9 = getelementptr inbounds %struct.hstate, %struct.hstate* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAX_ORDER, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %118

14:                                               ; preds = %2
  %15 = call i32 @spin_lock(i32* @hugetlb_lock)
  %16 = load %struct.hstate*, %struct.hstate** %4, align 8
  %17 = getelementptr inbounds %struct.hstate, %struct.hstate* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hstate*, %struct.hstate** %4, align 8
  %20 = getelementptr inbounds %struct.hstate, %struct.hstate* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @spin_unlock(i32* @hugetlb_lock)
  store %struct.page* null, %struct.page** %3, align 8
  br label %118

25:                                               ; preds = %14
  %26 = load %struct.hstate*, %struct.hstate** %4, align 8
  %27 = getelementptr inbounds %struct.hstate, %struct.hstate* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.hstate*, %struct.hstate** %4, align 8
  %31 = getelementptr inbounds %struct.hstate, %struct.hstate* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %25
  %35 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NUMA_NO_NODE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* @htlb_alloc_mask, align 4
  %41 = load i32, i32* @__GFP_COMP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__GFP_REPEAT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @__GFP_NOWARN, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.hstate*, %struct.hstate** %4, align 8
  %48 = call i32 @huge_page_order(%struct.hstate* %47)
  %49 = call %struct.page* @alloc_pages(i32 %46, i32 %48)
  store %struct.page* %49, %struct.page** %6, align 8
  br label %64

50:                                               ; preds = %34
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @htlb_alloc_mask, align 4
  %53 = load i32, i32* @__GFP_COMP, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @__GFP_THISNODE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @__GFP_REPEAT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.hstate*, %struct.hstate** %4, align 8
  %62 = call i32 @huge_page_order(%struct.hstate* %61)
  %63 = call %struct.page* @alloc_pages_exact_node(i32 %51, i32 %60, i32 %62)
  store %struct.page* %63, %struct.page** %6, align 8
  br label %64

64:                                               ; preds = %50, %39
  %65 = load %struct.page*, %struct.page** %6, align 8
  %66 = icmp ne %struct.page* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.page*, %struct.page** %6, align 8
  %69 = call i64 @arch_prepare_hugepage(%struct.page* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.page*, %struct.page** %6, align 8
  %73 = load %struct.hstate*, %struct.hstate** %4, align 8
  %74 = call i32 @huge_page_order(%struct.hstate* %73)
  %75 = call i32 @__free_pages(%struct.page* %72, i32 %74)
  store %struct.page* null, %struct.page** %3, align 8
  br label %118

76:                                               ; preds = %67, %64
  %77 = call i32 @spin_lock(i32* @hugetlb_lock)
  %78 = load %struct.page*, %struct.page** %6, align 8
  %79 = icmp ne %struct.page* %78, null
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.page*, %struct.page** %6, align 8
  %82 = call i32 @page_to_nid(%struct.page* %81)
  store i32 %82, i32* %7, align 4
  %83 = load %struct.page*, %struct.page** %6, align 8
  %84 = load i32, i32* @free_huge_page, align 4
  %85 = call i32 @set_compound_page_dtor(%struct.page* %83, i32 %84)
  %86 = load %struct.hstate*, %struct.hstate** %4, align 8
  %87 = getelementptr inbounds %struct.hstate, %struct.hstate* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.hstate*, %struct.hstate** %4, align 8
  %95 = getelementptr inbounds %struct.hstate, %struct.hstate* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @HTLB_BUDDY_PGALLOC, align 4
  %103 = call i32 @__count_vm_event(i32 %102)
  br label %115

104:                                              ; preds = %76
  %105 = load %struct.hstate*, %struct.hstate** %4, align 8
  %106 = getelementptr inbounds %struct.hstate, %struct.hstate* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.hstate*, %struct.hstate** %4, align 8
  %110 = getelementptr inbounds %struct.hstate, %struct.hstate* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %110, align 8
  %113 = load i32, i32* @HTLB_BUDDY_PGALLOC_FAIL, align 4
  %114 = call i32 @__count_vm_event(i32 %113)
  br label %115

115:                                              ; preds = %104, %80
  %116 = call i32 @spin_unlock(i32* @hugetlb_lock)
  %117 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %117, %struct.page** %3, align 8
  br label %118

118:                                              ; preds = %115, %71, %23, %13
  %119 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %119
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @huge_page_order(%struct.hstate*) #1

declare dso_local %struct.page* @alloc_pages_exact_node(i32, i32, i32) #1

declare dso_local i64 @arch_prepare_hugepage(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @set_compound_page_dtor(%struct.page*, i32) #1

declare dso_local i32 @__count_vm_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
