; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_wb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_wb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.writeback_control = type { i64, i64, i32, i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@FLUSH_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_wb_page(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.writeback_control, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = call i64 @page_offset(%struct.page* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  store i64 %16, i64* %7, align 8
  %17 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %8, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %8, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %8, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %8, i32 0, i32 3
  %23 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %23, i32* %22, align 4
  br label %24

24:                                               ; preds = %49, %36, %2
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @wait_on_page_writeback(%struct.page* %25)
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i64 @clear_page_dirty_for_io(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @nfs_writepage_locked(%struct.page* %31, %struct.writeback_control* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %51

36:                                               ; preds = %30
  br label %24

37:                                               ; preds = %24
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @PagePrivate(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %50

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load i32, i32* @FLUSH_SYNC, align 4
  %45 = call i32 @nfs_commit_inode(%struct.inode* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %51

49:                                               ; preds = %42
  br label %24

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %53

51:                                               ; preds = %48, %35
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @nfs_writepage_locked(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @nfs_commit_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
