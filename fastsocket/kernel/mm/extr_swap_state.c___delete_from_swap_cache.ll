; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c___delete_from_swap_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c___delete_from_swap_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@swapper_space = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@total_swapcache_pages = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@del_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__delete_from_swap_cache(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @PageLocked(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @VM_BUG_ON(i32 %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @PageSwapCache(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @VM_BUG_ON(i32 %13)
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i32 @PageWriteback(%struct.page* %15)
  %17 = call i32 @VM_BUG_ON(i32 %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @page_private(%struct.page* %18)
  %20 = call i32 @radix_tree_delete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swapper_space, i32 0, i32 0), i32 %19)
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @set_page_private(%struct.page* %21, i32 0)
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @ClearPageSwapCache(%struct.page* %23)
  %25 = load i32, i32* @total_swapcache_pages, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @total_swapcache_pages, align 4
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = load i32, i32* @NR_FILE_PAGES, align 4
  %29 = call i32 @__dec_zone_page_state(%struct.page* %27, i32 %28)
  %30 = load i32, i32* @del_total, align 4
  %31 = call i32 @INC_CACHE_INFO(i32 %30)
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @ClearPageSwapCache(%struct.page*) #1

declare dso_local i32 @__dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @INC_CACHE_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
