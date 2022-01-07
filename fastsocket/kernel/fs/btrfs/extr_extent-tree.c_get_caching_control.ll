; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_get_caching_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_get_caching_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_caching_control = type { i32 }
%struct.btrfs_block_group_cache = type { i64, i32, %struct.btrfs_caching_control* }

@BTRFS_CACHE_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_caching_control* (%struct.btrfs_block_group_cache*)* @get_caching_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_caching_control* @get_caching_control(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_caching_control*, align 8
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca %struct.btrfs_caching_control*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  %5 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BTRFS_CACHE_STARTED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock(i32* %15)
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %2, align 8
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 2
  %20 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %19, align 8
  %21 = icmp ne %struct.btrfs_caching_control* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %2, align 8
  br label %37

26:                                               ; preds = %17
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 2
  %29 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %28, align 8
  store %struct.btrfs_caching_control* %29, %struct.btrfs_caching_control** %4, align 8
  %30 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  store %struct.btrfs_caching_control* %36, %struct.btrfs_caching_control** %2, align 8
  br label %37

37:                                               ; preds = %26, %22, %13
  %38 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %2, align 8
  ret %struct.btrfs_caching_control* %38
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
