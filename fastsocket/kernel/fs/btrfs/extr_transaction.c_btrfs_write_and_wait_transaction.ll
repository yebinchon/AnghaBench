; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_write_and_wait_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_write_and_wait_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@EXTENT_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_write_and_wait_transaction(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %8 = icmp ne %struct.btrfs_trans_handle* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @filemap_write_and_wait(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %9
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* @EXTENT_DIRTY, align 4
  %31 = call i32 @btrfs_write_and_wait_marked_extents(%struct.btrfs_root* %25, i32* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @btrfs_write_and_wait_marked_extents(%struct.btrfs_root*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
