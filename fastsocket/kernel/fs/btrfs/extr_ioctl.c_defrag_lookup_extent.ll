; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_defrag_lookup_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_defrag_lookup_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i32 }
%struct.inode = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_io_tree, %struct.extent_map_tree }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_map* (%struct.inode*, i64)* @defrag_lookup_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_map* @defrag_lookup_extent(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.extent_map*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.extent_map_tree*, align 8
  %7 = alloca %struct.extent_io_tree*, align 8
  %8 = alloca %struct.extent_map*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.extent_map_tree* %12, %struct.extent_map_tree** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.extent_io_tree* %15, %struct.extent_io_tree** %7, align 8
  %16 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %18 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %17, i32 0, i32 0
  %19 = call i32 @read_lock(i32* %18)
  %20 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %20, i64 %21, i64 %22)
  store %struct.extent_map* %23, %struct.extent_map** %8, align 8
  %24 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %25 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %24, i32 0, i32 0
  %26 = call i32 @read_unlock(i32* %25)
  %27 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %28 = icmp ne %struct.extent_map* %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %2
  %30 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @lock_extent(%struct.extent_io_tree* %30, i64 %31, i64 %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.extent_map* @btrfs_get_extent(%struct.inode* %37, i32* null, i32 0, i64 %38, i64 %39, i32 0)
  store %struct.extent_map* %40, %struct.extent_map** %8, align 8
  %41 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %43, %44
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @unlock_extent(%struct.extent_io_tree* %41, i64 %42, i64 %46)
  %48 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %49 = call i64 @IS_ERR(%struct.extent_map* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %29
  store %struct.extent_map* null, %struct.extent_map** %3, align 8
  br label %55

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  store %struct.extent_map* %54, %struct.extent_map** %3, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  ret %struct.extent_map* %56
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @lock_extent(%struct.extent_io_tree*, i64, i64) #1

declare dso_local %struct.extent_map* @btrfs_get_extent(%struct.inode*, i32*, i32, i64, i64, i32) #1

declare dso_local i32 @unlock_extent(%struct.extent_io_tree*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
