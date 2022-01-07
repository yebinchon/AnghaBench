; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_fresh_huge_page_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_fresh_huge_page_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i64 }

@MAX_ORDER = common dso_local global i64 0, align 8
@htlb_alloc_mask = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@__GFP_REPEAT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.hstate*, i32)* @alloc_fresh_huge_page_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_fresh_huge_page_node(%struct.hstate* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.hstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.hstate* %0, %struct.hstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hstate*, %struct.hstate** %4, align 8
  %8 = getelementptr inbounds %struct.hstate, %struct.hstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAX_ORDER, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @htlb_alloc_mask, align 4
  %16 = load i32, i32* @__GFP_COMP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @__GFP_THISNODE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @__GFP_REPEAT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @__GFP_NOWARN, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.hstate*, %struct.hstate** %4, align 8
  %25 = call i32 @huge_page_order(%struct.hstate* %24)
  %26 = call %struct.page* @alloc_pages_exact_node(i32 %14, i32 %23, i32 %25)
  store %struct.page* %26, %struct.page** %6, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %13
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i64 @arch_prepare_hugepage(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = load %struct.hstate*, %struct.hstate** %4, align 8
  %36 = call i32 @huge_page_order(%struct.hstate* %35)
  %37 = call i32 @__free_pages(%struct.page* %34, i32 %36)
  store %struct.page* null, %struct.page** %3, align 8
  br label %45

38:                                               ; preds = %29
  %39 = load %struct.hstate*, %struct.hstate** %4, align 8
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @prep_new_huge_page(%struct.hstate* %39, %struct.page* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %13
  %44 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %44, %struct.page** %3, align 8
  br label %45

45:                                               ; preds = %43, %33, %12
  %46 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %46
}

declare dso_local %struct.page* @alloc_pages_exact_node(i32, i32, i32) #1

declare dso_local i32 @huge_page_order(%struct.hstate*) #1

declare dso_local i64 @arch_prepare_hugepage(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @prep_new_huge_page(%struct.hstate*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
