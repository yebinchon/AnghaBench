; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c___add_to_swap_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c___add_to_swap_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i64 }

@swapper_space = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@total_swapcache_pages = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@add_total = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64)* @__add_to_swap_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_to_swap_cache(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %1, i64* %6, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @VM_BUG_ON(i32 %11)
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i32 @PageSwapCache(%struct.page* %13)
  %15 = call i32 @VM_BUG_ON(i32 %14)
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @PageSwapBacked(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @VM_BUG_ON(i32 %20)
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @page_cache_get(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @SetPageSwapCache(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @set_page_private(%struct.page* %26, i64 %28)
  %30 = call i32 @spin_lock_irq(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @swapper_space, i32 0, i32 0))
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @radix_tree_insert(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @swapper_space, i32 0, i32 1), i64 %32, %struct.page* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = load i32, i32* @total_swapcache_pages, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @total_swapcache_pages, align 4
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = load i32, i32* @NR_FILE_PAGES, align 4
  %46 = call i32 @__inc_zone_page_state(%struct.page* %44, i32 %45)
  %47 = load i32, i32* @add_total, align 4
  %48 = call i32 @INC_CACHE_INFO(i32 %47)
  br label %49

49:                                               ; preds = %41, %2
  %50 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @swapper_space, i32 0, i32 0))
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EEXIST, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @VM_BUG_ON(i32 %59)
  %61 = load %struct.page*, %struct.page** %4, align 8
  %62 = call i32 @set_page_private(%struct.page* %61, i64 0)
  %63 = load %struct.page*, %struct.page** %4, align 8
  %64 = call i32 @ClearPageSwapCache(%struct.page* %63)
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = call i32 @page_cache_release(%struct.page* %65)
  br label %67

67:                                               ; preds = %54, %49
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @SetPageSwapCache(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @INC_CACHE_INFO(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ClearPageSwapCache(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
