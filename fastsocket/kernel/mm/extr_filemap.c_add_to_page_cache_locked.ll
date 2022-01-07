; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_add_to_page_cache_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_add_to_page_cache_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { %struct.address_space*, i32 }
%struct.address_space = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_page_cache_locked(%struct.page* %0, %struct.address_space* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = call i32 @PageLocked(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @VM_BUG_ON(i32 %14)
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @PageSwapBacked(%struct.page* %16)
  %18 = call i32 @VM_BUG_ON(i32 %17)
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @mem_cgroup_cache_charge(%struct.page* %19, i32 %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %88

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @__GFP_HIGHMEM, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @radix_tree_preload(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %30
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = call i32 @page_cache_get(%struct.page* %39)
  %41 = load %struct.address_space*, %struct.address_space** %6, align 8
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  store %struct.address_space* %41, %struct.address_space** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.address_space*, %struct.address_space** %6, align 8
  %48 = getelementptr inbounds %struct.address_space, %struct.address_space* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load %struct.address_space*, %struct.address_space** %6, align 8
  %51 = getelementptr inbounds %struct.address_space, %struct.address_space* %50, i32 0, i32 2
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @radix_tree_insert(i32* %51, i32 %52, %struct.page* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %38
  %62 = load %struct.address_space*, %struct.address_space** %6, align 8
  %63 = getelementptr inbounds %struct.address_space, %struct.address_space* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = load i32, i32* @NR_FILE_PAGES, align 4
  %68 = call i32 @__inc_zone_page_state(%struct.page* %66, i32 %67)
  %69 = load %struct.address_space*, %struct.address_space** %6, align 8
  %70 = getelementptr inbounds %struct.address_space, %struct.address_space* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  br label %82

72:                                               ; preds = %38
  %73 = load %struct.page*, %struct.page** %5, align 8
  %74 = getelementptr inbounds %struct.page, %struct.page* %73, i32 0, i32 0
  store %struct.address_space* null, %struct.address_space** %74, align 8
  %75 = load %struct.address_space*, %struct.address_space** %6, align 8
  %76 = getelementptr inbounds %struct.address_space, %struct.address_space* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_irq(i32* %76)
  %78 = load %struct.page*, %struct.page** %5, align 8
  %79 = call i32 @mem_cgroup_uncharge_cache_page(%struct.page* %78)
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = call i32 @page_cache_release(%struct.page* %80)
  br label %82

82:                                               ; preds = %72, %61
  %83 = call i32 (...) @radix_tree_preload_end()
  br label %87

84:                                               ; preds = %30
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = call i32 @mem_cgroup_uncharge_cache_page(%struct.page* %85)
  br label %87

87:                                               ; preds = %84, %82
  br label %88

88:                                               ; preds = %87, %29
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @mem_cgroup_cache_charge(%struct.page*, i32, i32) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mem_cgroup_uncharge_cache_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
