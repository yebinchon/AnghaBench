; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_wb_page_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_wb_page_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.nfs_page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_wb_page_cancel(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  br label %13

13:                                               ; preds = %43, %2
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @wait_on_page_writeback(%struct.page* %14)
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call %struct.nfs_page* @nfs_page_find_request(%struct.page* %16)
  store %struct.nfs_page* %17, %struct.nfs_page** %5, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %19 = icmp eq %struct.nfs_page* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %44

21:                                               ; preds = %13
  %22 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %23 = call i64 @nfs_lock_request(%struct.nfs_page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %27 = call i32 @nfs_clear_request_commit(%struct.nfs_page* %26)
  %28 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %29 = call i32 @nfs_inode_remove_request(%struct.nfs_page* %28)
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %32 = call i32 @cancel_dirty_page(%struct.page* %30, i32 %31)
  %33 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %34 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %33)
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %37 = call i32 @nfs_wait_on_request(%struct.nfs_page* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %39 = call i32 @nfs_release_request(%struct.nfs_page* %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %44

43:                                               ; preds = %35
  br label %13

44:                                               ; preds = %42, %25, %20
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_page_find_request(%struct.page*) #1

declare dso_local i64 @nfs_lock_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_clear_request_commit(%struct.nfs_page*) #1

declare dso_local i32 @nfs_inode_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @cancel_dirty_page(%struct.page*, i32) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_wait_on_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
