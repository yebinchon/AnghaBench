; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_free_swap_and_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_free_swap_and_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.swap_info_struct = type { i32 }
%struct.page = type { i32 }

@SWAP_HAS_CACHE = common dso_local global i64 0, align 8
@swapper_space = common dso_local global i32 0, align 4
@swap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_swap_and_cache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.page* null, %struct.page** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @non_swap_entry(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.swap_info_struct* @swap_info_get(i32 %14)
  store %struct.swap_info_struct* %15, %struct.swap_info_struct** %4, align 8
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %17 = icmp ne %struct.swap_info_struct* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @swap_entry_free(%struct.swap_info_struct* %19, i32 %21, i32 1)
  %23 = load i64, i64* @SWAP_HAS_CACHE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.page* @find_get_page(i32* @swapper_space, i32 %27)
  store %struct.page* %28, %struct.page** %5, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @trylock_page(%struct.page* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = call i32 @page_cache_release(%struct.page* %36)
  store %struct.page* null, %struct.page** %5, align 8
  br label %38

38:                                               ; preds = %35, %31, %25
  br label %39

39:                                               ; preds = %38, %18
  %40 = call i32 @spin_unlock(i32* @swap_lock)
  br label %41

41:                                               ; preds = %39, %12
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call i64 @PageSwapCache(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @PageWriteback(%struct.page* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @page_mapped(%struct.page* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i64 (...) @vm_swap_full()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %52
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = call i32 @delete_from_swap_cache(%struct.page* %60)
  %62 = load %struct.page*, %struct.page** %5, align 8
  %63 = call i32 @SetPageDirty(%struct.page* %62)
  br label %64

64:                                               ; preds = %59, %56, %48, %44
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i32 @unlock_page(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %5, align 8
  %68 = call i32 @page_cache_release(%struct.page* %67)
  br label %69

69:                                               ; preds = %64, %41
  %70 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %71 = icmp ne %struct.swap_info_struct* %70, null
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @non_swap_entry(i32) #1

declare dso_local %struct.swap_info_struct* @swap_info_get(i32) #1

declare dso_local i64 @swap_entry_free(%struct.swap_info_struct*, i32, i32) #1

declare dso_local %struct.page* @find_get_page(i32*, i32) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i64 @vm_swap_full(...) #1

declare dso_local i32 @delete_from_swap_cache(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
