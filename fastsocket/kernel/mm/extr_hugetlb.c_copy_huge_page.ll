; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_copy_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_copy_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i32 }

@MAX_ORDER_NR_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_huge_page(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hstate*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call %struct.hstate* @page_hstate(%struct.page* %7)
  store %struct.hstate* %8, %struct.hstate** %6, align 8
  %9 = load %struct.hstate*, %struct.hstate** %6, align 8
  %10 = call i32 @pages_per_huge_page(%struct.hstate* %9)
  %11 = load i32, i32* @MAX_ORDER_NR_PAGES, align 4
  %12 = icmp sgt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @copy_gigantic_page(%struct.page* %17, %struct.page* %18)
  br label %41

20:                                               ; preds = %2
  %21 = call i32 (...) @might_sleep()
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %38, %20
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.hstate*, %struct.hstate** %6, align 8
  %25 = call i32 @pages_per_huge_page(%struct.hstate* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = call i32 (...) @cond_resched()
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page, %struct.page* %29, i64 %31
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page, %struct.page* %33, i64 %35
  %37 = call i32 @copy_highpage(%struct.page* %32, %struct.page* %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %22

41:                                               ; preds = %16, %22
  ret void
}

declare dso_local %struct.hstate* @page_hstate(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @copy_gigantic_page(%struct.page*, %struct.page*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
