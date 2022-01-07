; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_reada_tree_block_flagged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_reada_tree_block_flagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_4__ = type { %struct.extent_io_tree }

@EXTENT_BUFFER_READAHEAD = common dso_local global i32 0, align 4
@WAIT_PAGE_LOCK = common dso_local global i32 0, align 4
@btree_get_extent = common dso_local global i32 0, align 4
@EXTENT_BUFFER_CORRUPT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reada_tree_block_flagged(%struct.btrfs_root* %0, i32 %1, i32 %2, i32 %3, %struct.extent_buffer** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.extent_buffer**, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.extent_io_tree*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.extent_buffer** %4, %struct.extent_buffer*** %11, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %12, align 8
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %13, align 8
  %22 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.extent_io_tree* %23, %struct.extent_io_tree** %14, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_root* %24, i32 %25, i32 %26)
  store %struct.extent_buffer* %27, %struct.extent_buffer** %12, align 8
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %29 = icmp ne %struct.extent_buffer* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %71

31:                                               ; preds = %5
  %32 = load i32, i32* @EXTENT_BUFFER_READAHEAD, align 4
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %34 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.extent_io_tree*, %struct.extent_io_tree** %14, align 8
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %38 = load i32, i32* @WAIT_PAGE_LOCK, align 4
  %39 = load i32, i32* @btree_get_extent, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @read_extent_buffer_pages(%struct.extent_io_tree* %36, %struct.extent_buffer* %37, i32 0, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %46 = call i32 @free_extent_buffer(%struct.extent_buffer* %45)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %6, align 4
  br label %71

48:                                               ; preds = %31
  %49 = load i32, i32* @EXTENT_BUFFER_CORRUPT, align 4
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %51 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %56 = call i32 @free_extent_buffer(%struct.extent_buffer* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %71

59:                                               ; preds = %48
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %61 = call i64 @extent_buffer_uptodate(%struct.extent_buffer* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %65 = load %struct.extent_buffer**, %struct.extent_buffer*** %11, align 8
  store %struct.extent_buffer* %64, %struct.extent_buffer** %65, align 8
  br label %69

66:                                               ; preds = %59
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %68 = call i32 @free_extent_buffer(%struct.extent_buffer* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %54, %44, %30
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @read_extent_buffer_pages(%struct.extent_io_tree*, %struct.extent_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @extent_buffer_uptodate(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
