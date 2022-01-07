; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_or_create_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_or_create_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @find_or_create_page(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %40, %3
  %11 = load %struct.address_space*, %struct.address_space** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.page* @find_lock_page(%struct.address_space* %11, i32 %12)
  store %struct.page* %13, %struct.page** %8, align 8
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.page* @__page_cache_alloc(i32 %17)
  store %struct.page* %18, %struct.page** %8, align 8
  %19 = load %struct.page*, %struct.page** %8, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.page* null, %struct.page** %4, align 8
  br label %45

22:                                               ; preds = %16
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = load %struct.address_space*, %struct.address_space** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @add_to_page_cache_lru(%struct.page* %23, %struct.address_space* %24, i32 %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = call i32 @page_cache_release(%struct.page* %34)
  store %struct.page* null, %struct.page** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EEXIST, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %10

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %10
  %44 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %44, %struct.page** %4, align 8
  br label %45

45:                                               ; preds = %43, %21
  %46 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %46
}

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
