; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_enqueue_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_enqueue_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32*, i32, i32* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hstate*, %struct.page*)* @enqueue_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_huge_page(%struct.hstate* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = call i32 @page_to_nid(%struct.page* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.hstate*, %struct.hstate** %3, align 8
  %11 = getelementptr inbounds %struct.hstate, %struct.hstate* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @list_add(i32* %9, i32* %15)
  %17 = load %struct.hstate*, %struct.hstate** %3, align 8
  %18 = getelementptr inbounds %struct.hstate, %struct.hstate* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.hstate*, %struct.hstate** %3, align 8
  %22 = getelementptr inbounds %struct.hstate, %struct.hstate* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
