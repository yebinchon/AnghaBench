; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_mark_page_accessed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_mark_page_accessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_page_accessed(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageActive(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @PageUnevictable(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i64 @PageReferenced(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i64 @PageLRU(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i32 @activate_page(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @ClearPageReferenced(%struct.page* %21)
  br label %31

23:                                               ; preds = %14, %10, %6, %1
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i64 @PageReferenced(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = call i32 @SetPageReferenced(%struct.page* %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %18
  ret void
}

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i64 @PageReferenced(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @activate_page(%struct.page*) #1

declare dso_local i32 @ClearPageReferenced(%struct.page*) #1

declare dso_local i32 @SetPageReferenced(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
