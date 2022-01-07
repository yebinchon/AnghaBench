; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_reuse_swap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_reuse_swap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reuse_swap_page(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i32 @PageLocked(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @VM_BUG_ON(i32 %9)
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i32 @PageKsm(%struct.page* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @page_mapcount(%struct.page* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i64 @PageSwapCache(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i64 @page_swapcount(%struct.page* %26)
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = call i32 @PageWriteback(%struct.page* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @delete_from_swap_cache(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = call i32 @SetPageDirty(%struct.page* %41)
  br label %43

43:                                               ; preds = %38, %34, %25
  br label %44

44:                                               ; preds = %43, %21, %16
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %45, 1
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @page_swapcount(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @delete_from_swap_cache(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
