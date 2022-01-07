; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c___set_page_dirty_nobuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c___set_page_dirty_nobuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i64, i32, i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@I_DIRTY_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__set_page_dirty_nobuffers(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @TestSetPageDirty(%struct.page* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %65, label %9

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call %struct.address_space* @page_mapping(%struct.page* %10)
  store %struct.address_space* %11, %struct.address_space** %4, align 8
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = icmp ne %struct.address_space* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %66

15:                                               ; preds = %9
  %16 = load %struct.address_space*, %struct.address_space** %4, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call %struct.address_space* @page_mapping(%struct.page* %19)
  store %struct.address_space* %20, %struct.address_space** %5, align 8
  %21 = load %struct.address_space*, %struct.address_space** %5, align 8
  %22 = icmp ne %struct.address_space* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %15
  %24 = load %struct.address_space*, %struct.address_space** %5, align 8
  %25 = load %struct.address_space*, %struct.address_space** %4, align 8
  %26 = icmp ne %struct.address_space* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @PagePrivate(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @PageUptodate(%struct.page* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %23
  %38 = phi i1 [ false, %23 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON_ONCE(i32 %39)
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = load %struct.address_space*, %struct.address_space** %4, align 8
  %43 = call i32 @account_page_dirtied(%struct.page* %41, %struct.address_space* %42)
  %44 = load %struct.address_space*, %struct.address_space** %4, align 8
  %45 = getelementptr inbounds %struct.address_space, %struct.address_space* %44, i32 0, i32 2
  %46 = load %struct.page*, %struct.page** %3, align 8
  %47 = call i32 @page_index(%struct.page* %46)
  %48 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %49 = call i32 @radix_tree_tag_set(i32* %45, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %37, %15
  %51 = load %struct.address_space*, %struct.address_space** %4, align 8
  %52 = getelementptr inbounds %struct.address_space, %struct.address_space* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.address_space*, %struct.address_space** %4, align 8
  %55 = getelementptr inbounds %struct.address_space, %struct.address_space* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.address_space*, %struct.address_space** %4, align 8
  %60 = getelementptr inbounds %struct.address_space, %struct.address_space* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @I_DIRTY_PAGES, align 4
  %63 = call i32 @__mark_inode_dirty(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %50
  store i32 1, i32* %2, align 4
  br label %66

65:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %64, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @TestSetPageDirty(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @account_page_dirtied(%struct.page*, %struct.address_space*) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__mark_inode_dirty(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
