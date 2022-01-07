; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_copy_gigantic_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_copy_gigantic_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*)* @copy_gigantic_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_gigantic_page(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hstate*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.hstate* @page_hstate(%struct.page* %9)
  store %struct.hstate* %10, %struct.hstate** %6, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  store %struct.page* %11, %struct.page** %7, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %12, %struct.page** %8, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %18, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hstate*, %struct.hstate** %6, align 8
  %16 = call i32 @pages_per_huge_page(%struct.hstate* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = call i32 (...) @cond_resched()
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @copy_highpage(%struct.page* %20, %struct.page* %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.page* @mem_map_next(%struct.page* %25, %struct.page* %26, i32 %27)
  store %struct.page* %28, %struct.page** %3, align 8
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.page* @mem_map_next(%struct.page* %29, %struct.page* %30, i32 %31)
  store %struct.page* %32, %struct.page** %4, align 8
  br label %13

33:                                               ; preds = %13
  ret void
}

declare dso_local %struct.hstate* @page_hstate(%struct.page*) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local %struct.page* @mem_map_next(%struct.page*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
