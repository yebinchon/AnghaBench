; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_sync_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { %struct.TYPE_2__*, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %10)
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %7, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 1
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @trace_btrfs_sync_fs(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @filemap_flush(i32 %24)
  store i32 0, i32* %3, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %28 = call i32 @btrfs_wait_ordered_extents(%struct.btrfs_root* %27, i32 0, i32 0)
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %30 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %29, i32 0)
  store %struct.btrfs_trans_handle* %30, %struct.btrfs_trans_handle** %6, align 8
  %31 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %32 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %35)
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %40 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %38, %struct.btrfs_root* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %34, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @trace_btrfs_sync_fs(i32) #1

declare dso_local i32 @filemap_flush(i32) #1

declare dso_local i32 @btrfs_wait_ordered_extents(%struct.btrfs_root*, i32, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
