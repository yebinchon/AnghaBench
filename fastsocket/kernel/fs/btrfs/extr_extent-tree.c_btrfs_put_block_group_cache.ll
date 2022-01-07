; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_put_block_group_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_put_block_group_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__, i32, %struct.inode*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_put_block_group_cache(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %1, %38, %39
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(%struct.btrfs_fs_info* %7, i64 %8)
  store %struct.btrfs_block_group_cache* %9, %struct.btrfs_block_group_cache** %3, align 8
  br label %10

10:                                               ; preds = %22, %6
  %11 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %12 = icmp ne %struct.btrfs_block_group_cache* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %30 = call %struct.btrfs_block_group_cache* @next_block_group(i32 %28, %struct.btrfs_block_group_cache* %29)
  store %struct.btrfs_block_group_cache* %30, %struct.btrfs_block_group_cache** %3, align 8
  br label %10

31:                                               ; preds = %21, %10
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %33 = icmp ne %struct.btrfs_block_group_cache* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %63

38:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %6

39:                                               ; preds = %31
  %40 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %40, i32 0, i32 2
  %42 = load %struct.inode*, %struct.inode** %41, align 8
  store %struct.inode* %42, %struct.inode** %5, align 8
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %46, align 8
  %47 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @iput(%struct.inode* %50)
  %52 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %53 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %55, %59
  store i64 %60, i64* %4, align 8
  %61 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %62 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %61)
  br label %6

63:                                               ; preds = %37
  ret void
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_first_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_block_group_cache* @next_block_group(i32, %struct.btrfs_block_group_cache*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
