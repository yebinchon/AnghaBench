; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_truncate_free_space_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_truncate_free_space_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i64, i32 }
%struct.btrfs_trans_handle = type { %struct.btrfs_block_rsv* }
%struct.btrfs_path = type { i32 }
%struct.inode = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_EXTENT_DATA_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_truncate_free_space_cache(%struct.btrfs_root* %0, %struct.btrfs_trans_handle* %1, %struct.btrfs_path* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.btrfs_block_rsv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %15 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %14, i32 0, i32 0
  %16 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %15, align 8
  store %struct.btrfs_block_rsv* %16, %struct.btrfs_block_rsv** %10, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %21, i32 0, i32 0
  store %struct.btrfs_block_rsv* %20, %struct.btrfs_block_rsv** %22, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %24 = call i64 @btrfs_calc_trunc_metadata_size(%struct.btrfs_root* %23, i32 1)
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %26 = call i64 @btrfs_calc_trans_metadata_size(%struct.btrfs_root* %25, i32 1)
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %11, align 8
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %28, i32 0, i32 0
  %30 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %29, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %30, i32 0, i32 1
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %34 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %33, i32 0, i32 0
  %35 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %34, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %4
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %42 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %41, i32 0, i32 0
  %43 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %42, align 8
  %44 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %48 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %47, i32 0, i32 0
  store %struct.btrfs_block_rsv* %46, %struct.btrfs_block_rsv** %48, align 8
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %97

51:                                               ; preds = %4
  %52 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %53 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %52, i32 0, i32 0
  %54 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %53, align 8
  %55 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call i32 @i_size_read(%struct.inode* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = call i32 @btrfs_i_size_write(%struct.inode* %59, i32 0)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @truncate_pagecache(%struct.inode* %61, i32 %62, i32 0)
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = load i32, i32* @BTRFS_EXTENT_DATA_KEY, align 4
  %68 = call i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle* %64, %struct.btrfs_root* %65, %struct.inode* %66, i32 0, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %51
  %72 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %73 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %74 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %73, i32 0, i32 0
  store %struct.btrfs_block_rsv* %72, %struct.btrfs_block_rsv** %74, align 8
  %75 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %76 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %75, %struct.btrfs_root* %76, i32 %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %97

80:                                               ; preds = %51
  %81 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %81, %struct.btrfs_root* %82, %struct.inode* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %89 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %88, %struct.btrfs_root* %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %94 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %95 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %94, i32 0, i32 0
  store %struct.btrfs_block_rsv* %93, %struct.btrfs_block_rsv** %95, align 8
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %92, %71, %40
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @btrfs_calc_trunc_metadata_size(%struct.btrfs_root*, i32) #1

declare dso_local i64 @btrfs_calc_trans_metadata_size(%struct.btrfs_root*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @btrfs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
