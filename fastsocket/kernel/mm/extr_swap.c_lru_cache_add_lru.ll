; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_lru_cache_add_lru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_lru_cache_add_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lru_cache_add_lru(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i32 @PageActive(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @PageUnevictable(%struct.page* %9)
  %11 = call i32 @VM_BUG_ON(i32 %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @ClearPageActive(%struct.page* %12)
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @PageUnevictable(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @PageActive(%struct.page* %19)
  %21 = call i32 @VM_BUG_ON(i32 %20)
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @ClearPageUnevictable(%struct.page* %22)
  br label %24

24:                                               ; preds = %18, %14
  br label %25

25:                                               ; preds = %24, %8
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i64 @PageLRU(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @PageActive(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @PageUnevictable(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %33, %29, %25
  %38 = phi i1 [ true, %29 ], [ true, %25 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @VM_BUG_ON(i32 %39)
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @__lru_cache_add(%struct.page* %41, i32 %42)
  ret void
}

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @ClearPageUnevictable(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @__lru_cache_add(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
