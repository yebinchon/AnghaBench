; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_remove_from_page_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_remove_from_page_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { void (%struct.page*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_from_page_cache(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca void (%struct.page*)*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = getelementptr inbounds %struct.page, %struct.page* %6, i32 0, i32 0
  %8 = load %struct.address_space*, %struct.address_space** %7, align 8
  store %struct.address_space* %8, %struct.address_space** %3, align 8
  store void (%struct.page*)* null, void (%struct.page*)** %4, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 2
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @PageLocked(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i64 @IS_AOP_EXT(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.address_space*, %struct.address_space** %3, align 8
  %23 = getelementptr inbounds %struct.address_space, %struct.address_space* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @EXT_AOPS(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load void (%struct.page*)*, void (%struct.page*)** %26, align 8
  store void (%struct.page*)* %27, void (%struct.page*)** %4, align 8
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.address_space*, %struct.address_space** %3, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.page*, %struct.page** %2, align 8
  %33 = call i32 @__remove_from_page_cache(%struct.page* %32)
  %34 = load %struct.address_space*, %struct.address_space** %3, align 8
  %35 = getelementptr inbounds %struct.address_space, %struct.address_space* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.page*, %struct.page** %2, align 8
  %38 = call i32 @mem_cgroup_uncharge_cache_page(%struct.page* %37)
  %39 = load void (%struct.page*)*, void (%struct.page*)** %4, align 8
  %40 = icmp ne void (%struct.page*)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load void (%struct.page*)*, void (%struct.page*)** %4, align 8
  %43 = load %struct.page*, %struct.page** %2, align 8
  call void %42(%struct.page* %43)
  br label %44

44:                                               ; preds = %41, %28
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @IS_AOP_EXT(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT_AOPS(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__remove_from_page_cache(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mem_cgroup_uncharge_cache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
