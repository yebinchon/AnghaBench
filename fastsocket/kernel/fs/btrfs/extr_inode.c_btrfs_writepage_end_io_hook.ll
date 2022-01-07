; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_writepage_end_io_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_writepage_end_io_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.extent_state = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.btrfs_workers, %struct.btrfs_workers }
%struct.btrfs_workers = type { i32 }
%struct.btrfs_ordered_extent = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.btrfs_root* }

@finish_ordered_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64, i64, %struct.extent_state*, i32)* @btrfs_writepage_end_io_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_writepage_end_io_hook(%struct.page* %0, i64 %1, i64 %2, %struct.extent_state* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.extent_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.btrfs_root*, align 8
  %14 = alloca %struct.btrfs_ordered_extent*, align 8
  %15 = alloca %struct.btrfs_workers*, align 8
  store %struct.page* %0, %struct.page** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.extent_state* %3, %struct.extent_state** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %23, align 8
  store %struct.btrfs_root* %24, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_ordered_extent* null, %struct.btrfs_ordered_extent** %14, align 8
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @trace_btrfs_writepage_end_io_hook(%struct.page* %25, i64 %26, i64 %27, i32 %28)
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i32 @ClearPagePrivate2(%struct.page* %30)
  %32 = load %struct.inode*, %struct.inode** %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub nsw i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @btrfs_dec_test_ordered_pending(%struct.inode* %32, %struct.btrfs_ordered_extent** %14, i64 %33, i64 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %69

42:                                               ; preds = %5
  %43 = load i32, i32* @finish_ordered_fn, align 4
  %44 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %45 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %48 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %51 = load %struct.inode*, %struct.inode** %12, align 8
  %52 = call i64 @btrfs_is_free_space_inode(%struct.btrfs_root* %50, %struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %56 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store %struct.btrfs_workers* %58, %struct.btrfs_workers** %15, align 8
  br label %64

59:                                               ; preds = %42
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %61 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.btrfs_workers* %63, %struct.btrfs_workers** %15, align 8
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.btrfs_workers*, %struct.btrfs_workers** %15, align 8
  %66 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %67 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %66, i32 0, i32 0
  %68 = call i32 @btrfs_queue_worker(%struct.btrfs_workers* %65, %struct.TYPE_7__* %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %41
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @trace_btrfs_writepage_end_io_hook(%struct.page*, i64, i64, i32) #1

declare dso_local i32 @ClearPagePrivate2(%struct.page*) #1

declare dso_local i32 @btrfs_dec_test_ordered_pending(%struct.inode*, %struct.btrfs_ordered_extent**, i64, i64, i32) #1

declare dso_local i64 @btrfs_is_free_space_inode(%struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_queue_worker(%struct.btrfs_workers*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
