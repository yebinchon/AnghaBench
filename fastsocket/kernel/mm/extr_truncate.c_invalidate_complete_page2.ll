; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_invalidate_complete_page2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_invalidate_complete_page2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.TYPE_2__ = type { void (%struct.page*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*)* @invalidate_complete_page2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_complete_page2(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca void (%struct.page*)*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 2
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  %14 = load %struct.address_space*, %struct.address_space** %4, align 8
  %15 = icmp ne %struct.address_space* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i64 @page_has_private(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @try_to_release_page(%struct.page* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %71

27:                                               ; preds = %21, %17
  %28 = load %struct.address_space*, %struct.address_space** %4, align 8
  %29 = getelementptr inbounds %struct.address_space, %struct.address_space* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i64 @PageDirty(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %67

35:                                               ; preds = %27
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = call i32 @clear_page_mlock(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i64 @page_has_private(%struct.page* %38)
  %40 = call i32 @BUG_ON(i64 %39)
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = call i32 @__remove_from_page_cache(%struct.page* %41)
  %43 = load %struct.address_space*, %struct.address_space** %4, align 8
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.page*, %struct.page** %5, align 8
  %47 = call i32 @mem_cgroup_uncharge_cache_page(%struct.page* %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i64 @IS_AOP_EXT(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %35
  %52 = load %struct.address_space*, %struct.address_space** %4, align 8
  %53 = getelementptr inbounds %struct.address_space, %struct.address_space* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_2__* @EXT_AOPS(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load void (%struct.page*)*, void (%struct.page*)** %56, align 8
  store void (%struct.page*)* %57, void (%struct.page*)** %7, align 8
  %58 = load void (%struct.page*)*, void (%struct.page*)** %7, align 8
  %59 = icmp ne void (%struct.page*)* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load void (%struct.page*)*, void (%struct.page*)** %7, align 8
  %62 = load %struct.page*, %struct.page** %5, align 8
  call void %61(%struct.page* %62)
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i32 @page_cache_release(%struct.page* %65)
  store i32 1, i32* %3, align 4
  br label %71

67:                                               ; preds = %34
  %68 = load %struct.address_space*, %struct.address_space** %4, align 8
  %69 = getelementptr inbounds %struct.address_space, %struct.address_space* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_irq(i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %64, %26, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @clear_page_mlock(%struct.page*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @__remove_from_page_cache(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mem_cgroup_uncharge_cache_page(%struct.page*) #1

declare dso_local i64 @IS_AOP_EXT(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT_AOPS(i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
