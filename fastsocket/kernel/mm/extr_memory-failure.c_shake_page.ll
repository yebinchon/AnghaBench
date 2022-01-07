; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_shake_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_shake_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shake_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @PageSlab(%struct.page* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @lru_add_drain_all()
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i64 @PageLRU(%struct.page* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %42

15:                                               ; preds = %9
  %16 = call i32 (...) @drain_all_pages()
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i64 @PageLRU(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i64 @is_free_buddy_page(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %15
  br label %42

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %38, %29
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @shrink_slab(i32 1000, i32 %31, i32 1000)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @page_count(%struct.page* %33)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %41

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 10
  br i1 %40, label %30, label %41

41:                                               ; preds = %38, %36
  br label %42

42:                                               ; preds = %14, %24, %41, %26
  ret void
}

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @lru_add_drain_all(...) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @drain_all_pages(...) #1

declare dso_local i64 @is_free_buddy_page(%struct.page*) #1

declare dso_local i32 @shrink_slab(i32, i32, i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
