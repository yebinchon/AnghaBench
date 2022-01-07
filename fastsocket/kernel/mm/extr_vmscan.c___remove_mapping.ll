; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c___remove_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c___remove_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { void (%struct.page*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*)* @__remove_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__remove_mapping(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca void (%struct.page*)*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 2
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = call i32 @PageLocked(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.address_space*, %struct.address_space** %4, align 8
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call %struct.address_space* @page_mapping(%struct.page* %19)
  %21 = icmp ne %struct.address_space* %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i32 @page_freeze_refs(%struct.page* %27, i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %82

31:                                               ; preds = %2
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @PageDirty(%struct.page* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32 @page_unfreeze_refs(%struct.page* %37, i32 2)
  br label %82

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i64 @PageSwapCache(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call i32 @page_private(%struct.page* %45)
  store i32 %46, i32* %44, align 4
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @__delete_from_swap_cache(%struct.page* %47)
  %49 = load %struct.address_space*, %struct.address_space** %4, align 8
  %50 = getelementptr inbounds %struct.address_space, %struct.address_space* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @swapcache_free(i32 %54, %struct.page* %52)
  br label %81

56:                                               ; preds = %39
  store void (%struct.page*)* null, void (%struct.page*)** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i64 @IS_AOP_EXT(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.address_space*, %struct.address_space** %4, align 8
  %62 = getelementptr inbounds %struct.address_space, %struct.address_space* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_5__* @EXT_AOPS(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load void (%struct.page*)*, void (%struct.page*)** %65, align 8
  store void (%struct.page*)* %66, void (%struct.page*)** %8, align 8
  br label %67

67:                                               ; preds = %60, %56
  %68 = load %struct.page*, %struct.page** %5, align 8
  %69 = call i32 @__remove_from_page_cache(%struct.page* %68)
  %70 = load %struct.address_space*, %struct.address_space** %4, align 8
  %71 = getelementptr inbounds %struct.address_space, %struct.address_space* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load %struct.page*, %struct.page** %5, align 8
  %74 = call i32 @mem_cgroup_uncharge_cache_page(%struct.page* %73)
  %75 = load void (%struct.page*)*, void (%struct.page*)** %8, align 8
  %76 = icmp ne void (%struct.page*)* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load void (%struct.page*)*, void (%struct.page*)** %8, align 8
  %79 = load %struct.page*, %struct.page** %5, align 8
  call void %78(%struct.page* %79)
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80, %43
  store i32 1, i32* %3, align 4
  br label %86

82:                                               ; preds = %36, %30
  %83 = load %struct.address_space*, %struct.address_space** %4, align 8
  %84 = getelementptr inbounds %struct.address_space, %struct.address_space* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %81
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @page_freeze_refs(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @page_unfreeze_refs(%struct.page*, i32) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @__delete_from_swap_cache(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @swapcache_free(i32, %struct.page*) #1

declare dso_local i64 @IS_AOP_EXT(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @EXT_AOPS(i32) #1

declare dso_local i32 @__remove_from_page_cache(%struct.page*) #1

declare dso_local i32 @mem_cgroup_uncharge_cache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
