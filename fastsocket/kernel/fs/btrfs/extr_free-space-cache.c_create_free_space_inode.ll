; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_create_free_space_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_create_free_space_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_free_space_inode(%struct.btrfs_root* %0, %struct.btrfs_trans_handle* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %9, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %13 = call i32 @btrfs_find_free_objectid(%struct.btrfs_root* %12, i32* %11)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__create_free_space_inode(%struct.btrfs_root* %19, %struct.btrfs_trans_handle* %20, %struct.btrfs_path* %21, i32 %22, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @btrfs_find_free_objectid(%struct.btrfs_root*, i32*) #1

declare dso_local i32 @__create_free_space_inode(%struct.btrfs_root*, %struct.btrfs_trans_handle*, %struct.btrfs_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
