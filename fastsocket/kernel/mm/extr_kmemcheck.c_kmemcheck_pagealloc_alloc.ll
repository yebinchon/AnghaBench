; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemcheck.c_kmemcheck_pagealloc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemcheck.c_kmemcheck_pagealloc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_NOTRACK = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmemcheck_pagealloc_alloc(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @__GFP_HIGHMEM, align 4
  %10 = load i32, i32* @__GFP_NOTRACK, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %34

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @kmemcheck_alloc_shadow(%struct.page* %18, i32 %19, i32 %20, i32 -1)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @__GFP_ZERO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @kmemcheck_mark_initialized_pages(%struct.page* %27, i32 %28)
  br label %34

30:                                               ; preds = %15
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @kmemcheck_mark_uninitialized_pages(%struct.page* %31, i32 %32)
  br label %34

34:                                               ; preds = %14, %30, %26
  ret void
}

declare dso_local i32 @kmemcheck_alloc_shadow(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @kmemcheck_mark_initialized_pages(%struct.page*, i32) #1

declare dso_local i32 @kmemcheck_mark_uninitialized_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
