; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c___link_block_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c___link_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_space_info = type { i32, i32* }
%struct.btrfs_block_group_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_space_info*, %struct.btrfs_block_group_cache*)* @__link_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__link_block_group(%struct.btrfs_space_info* %0, %struct.btrfs_block_group_cache* %1) #0 {
  %3 = alloca %struct.btrfs_space_info*, align 8
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_space_info* %0, %struct.btrfs_space_info** %3, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %4, align 8
  %6 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %7 = call i32 @get_block_group_index(%struct.btrfs_block_group_cache* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %8, i32 0, i32 0
  %10 = call i32 @down_write(i32* %9)
  %11 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %11, i32 0, i32 0
  %13 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @list_add_tail(i32* %12, i32* %18)
  %20 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %20, i32 0, i32 0
  %22 = call i32 @up_write(i32* %21)
  ret void
}

declare dso_local i32 @get_block_group_index(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
