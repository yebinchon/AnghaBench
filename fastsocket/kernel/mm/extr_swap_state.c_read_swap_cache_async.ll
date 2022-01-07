; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c_read_swap_cache_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c_read_swap_cache_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.TYPE_6__ = type { i32 }

@swapper_space = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @read_swap_cache_async(i32 %0, i32 %1, %struct.vm_area_struct* %2, i64 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %7, align 4
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.page* null, %struct.page** %11, align 8
  br label %14

14:                                               ; preds = %88, %4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.page* @find_get_page(i32* @swapper_space, i32 %16)
  store %struct.page* %17, %struct.page** %10, align 8
  %18 = load %struct.page*, %struct.page** %10, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %93

21:                                               ; preds = %14
  %22 = load %struct.page*, %struct.page** %11, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call %struct.page* @alloc_page_vma(i32 %25, %struct.vm_area_struct* %26, i64 %27)
  store %struct.page* %28, %struct.page** %11, align 8
  %29 = load %struct.page*, %struct.page** %11, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %93

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @radix_tree_preload(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %93

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @swapcache_prepare(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @EEXIST, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = call i32 (...) @radix_tree_preload_end()
  %51 = call i32 (...) @cond_resched()
  br label %88

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (...) @radix_tree_preload_end()
  br label %93

57:                                               ; preds = %52
  %58 = load %struct.page*, %struct.page** %11, align 8
  %59 = call i32 @__set_page_locked(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i32 @SetPageSwapBacked(%struct.page* %60)
  %62 = load %struct.page*, %struct.page** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__add_to_swap_cache(%struct.page* %62, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %57
  %73 = call i32 (...) @radix_tree_preload_end()
  %74 = load %struct.page*, %struct.page** %11, align 8
  %75 = call i32 @lru_cache_add_anon(%struct.page* %74)
  %76 = load %struct.page*, %struct.page** %11, align 8
  %77 = call i32 @swap_readpage(%struct.page* %76)
  %78 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %78, %struct.page** %5, align 8
  br label %101

79:                                               ; preds = %57
  %80 = call i32 (...) @radix_tree_preload_end()
  %81 = load %struct.page*, %struct.page** %11, align 8
  %82 = call i32 @ClearPageSwapBacked(%struct.page* %81)
  %83 = load %struct.page*, %struct.page** %11, align 8
  %84 = call i32 @__clear_page_locked(%struct.page* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @swapcache_free(i32 %86, i32* null)
  br label %88

88:                                               ; preds = %79, %49
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %14, label %93

93:                                               ; preds = %88, %55, %40, %31, %20
  %94 = load %struct.page*, %struct.page** %11, align 8
  %95 = icmp ne %struct.page* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.page*, %struct.page** %11, align 8
  %98 = call i32 @page_cache_release(%struct.page* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %100, %struct.page** %5, align 8
  br label %101

101:                                              ; preds = %99, %72
  %102 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %102
}

declare dso_local %struct.page* @find_get_page(i32*, i32) #1

declare dso_local %struct.page* @alloc_page_vma(i32, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @swapcache_prepare(i32) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @__set_page_locked(%struct.page*) #1

declare dso_local i32 @SetPageSwapBacked(%struct.page*) #1

declare dso_local i32 @__add_to_swap_cache(%struct.page*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @lru_cache_add_anon(%struct.page*) #1

declare dso_local i32 @swap_readpage(%struct.page*) #1

declare dso_local i32 @ClearPageSwapBacked(%struct.page*) #1

declare dso_local i32 @__clear_page_locked(%struct.page*) #1

declare dso_local i32 @swapcache_free(i32, i32*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
