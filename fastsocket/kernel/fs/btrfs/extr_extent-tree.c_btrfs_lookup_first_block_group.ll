; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_lookup_first_block_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_lookup_first_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_block_group_cache* (%struct.btrfs_fs_info*, i32)* @btrfs_lookup_first_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.btrfs_block_group_cache* @block_group_cache_tree_search(%struct.btrfs_fs_info* %6, i32 %7, i32 0)
  store %struct.btrfs_block_group_cache* %8, %struct.btrfs_block_group_cache** %5, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  ret %struct.btrfs_block_group_cache* %9
}

declare dso_local %struct.btrfs_block_group_cache* @block_group_cache_tree_search(%struct.btrfs_fs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
