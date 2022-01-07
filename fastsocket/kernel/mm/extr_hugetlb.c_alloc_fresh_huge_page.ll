; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_fresh_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_alloc_fresh_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }
%struct.page = type { i32 }

@HTLB_BUDDY_PGALLOC = common dso_local global i32 0, align 4
@HTLB_BUDDY_PGALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hstate*, i32*)* @alloc_fresh_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_fresh_huge_page(%struct.hstate* %0, i32* %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.hstate*, %struct.hstate** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @hstate_next_node_to_alloc(%struct.hstate* %9, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load %struct.hstate*, %struct.hstate** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.page* @alloc_fresh_huge_page_node(%struct.hstate* %14, i32 %15)
  store %struct.page* %16, %struct.page** %5, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %28

20:                                               ; preds = %13
  %21 = load %struct.hstate*, %struct.hstate** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @hstate_next_node_to_alloc(%struct.hstate* %21, i32* %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %13, label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @HTLB_BUDDY_PGALLOC, align 4
  %33 = call i32 @count_vm_event(i32 %32)
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @HTLB_BUDDY_PGALLOC_FAIL, align 4
  %36 = call i32 @count_vm_event(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @hstate_next_node_to_alloc(%struct.hstate*, i32*) #1

declare dso_local %struct.page* @alloc_fresh_huge_page_node(%struct.hstate*, i32) #1

declare dso_local i32 @count_vm_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
