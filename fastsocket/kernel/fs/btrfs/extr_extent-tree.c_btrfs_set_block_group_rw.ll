; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_set_block_group_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_set_block_group_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_block_group_cache = type { i32, i64, i32, i64, i64, i64, %struct.TYPE_2__, %struct.btrfs_space_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_space_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_set_block_group_rw(%struct.btrfs_root* %0, %struct.btrfs_block_group_cache* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca %struct.btrfs_space_info*, align 8
  %6 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %4, align 8
  %7 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %7, i32 0, i32 7
  %9 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  store %struct.btrfs_space_info* %9, %struct.btrfs_space_info** %5, align 8
  %10 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %39, i32 0, i32 2
  %41 = call i64 @btrfs_block_group_used(i32* %40)
  %42 = sub nsw i64 %38, %41
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %53 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %56 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
