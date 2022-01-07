; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_check_defrag_in_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_check_defrag_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.extent_map = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_map_tree, %struct.extent_io_tree }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @check_defrag_in_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_defrag_in_cache(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_io_tree*, align 8
  %9 = alloca %struct.extent_map*, align 8
  %10 = alloca %struct.extent_map_tree*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.extent_io_tree* %14, %struct.extent_io_tree** %8, align 8
  store %struct.extent_map* null, %struct.extent_map** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.extent_map_tree* %17, %struct.extent_map_tree** %10, align 8
  %18 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %19 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %18, i32 0, i32 0
  %20 = call i32 @read_lock(i32* %19)
  %21 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %21, i32 %22, i32 %23)
  store %struct.extent_map* %24, %struct.extent_map** %9, align 8
  %25 = load %struct.extent_map_tree*, %struct.extent_map_tree** %10, align 8
  %26 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %25, i32 0, i32 0
  %27 = call i32 @read_unlock(i32* %26)
  %28 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %29 = icmp ne %struct.extent_map* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %3
  %31 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %32 = call i32 @extent_map_end(%struct.extent_map* %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %34 = call i32 @free_extent_map(%struct.extent_map* %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %57

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %7, align 4
  %45 = load %struct.extent_io_tree*, %struct.extent_io_tree** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @EXTENT_DELALLOC, align 4
  %51 = call i32 @count_range_bits(%struct.extent_io_tree* %45, i32* %6, i32 %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %57

56:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %40
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @count_range_bits(%struct.extent_io_tree*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
