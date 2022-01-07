; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_btrfs_find_free_ino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_btrfs_find_free_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_free_ino(%struct.btrfs_root* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %7 = load i32, i32* @INODE_MAP_CACHE, align 4
  %8 = call i32 @btrfs_test_opt(%struct.btrfs_root* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @btrfs_find_free_objectid(%struct.btrfs_root* %11, i32* %12)
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %60, %14
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = call i32 @btrfs_find_ino_for_alloc(%struct.btrfs_root* %16)
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %61

23:                                               ; preds = %15
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %25 = call i32 @start_caching(%struct.btrfs_root* %24)
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br label %41

41:                                               ; preds = %34, %23
  %42 = phi i1 [ true, %23 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_event(i32 %28, i32 %43)
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %50, %41
  br label %15

61:                                               ; preds = %57, %22, %10
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_find_free_objectid(%struct.btrfs_root*, i32*) #1

declare dso_local i32 @btrfs_find_ino_for_alloc(%struct.btrfs_root*) #1

declare dso_local i32 @start_caching(%struct.btrfs_root*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
