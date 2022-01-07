; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___set_page_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___set_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.address_space = type { i32, i32, i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@I_DIRTY_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.address_space*, i32)* @__set_page_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_page_dirty(%struct.page* %0, %struct.address_space* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.address_space* %1, %struct.address_space** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.address_space*, %struct.address_space** %5, align 8
  %8 = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @PageUptodate(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON_ONCE(i32 %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = load %struct.address_space*, %struct.address_space** %5, align 8
  %28 = call i32 @account_page_dirtied(%struct.page* %26, %struct.address_space* %27)
  %29 = load %struct.address_space*, %struct.address_space** %5, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 2
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @page_index(%struct.page* %31)
  %33 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %34 = call i32 @radix_tree_tag_set(i32* %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %3
  %36 = load %struct.address_space*, %struct.address_space** %5, align 8
  %37 = getelementptr inbounds %struct.address_space, %struct.address_space* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load %struct.address_space*, %struct.address_space** %5, align 8
  %40 = getelementptr inbounds %struct.address_space, %struct.address_space* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I_DIRTY_PAGES, align 4
  %43 = call i32 @__mark_inode_dirty(i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @account_page_dirtied(%struct.page*, %struct.address_space*) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__mark_inode_dirty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
