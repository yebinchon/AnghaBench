; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_read_extent_buffer_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_read_extent_buffer_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.extent_buffer = type { i32, i32, i32, i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_4__ = type { %struct.extent_io_tree }

@EXTENT_BUFFER_CORRUPT = common dso_local global i32 0, align 4
@WAIT_COMPLETE = common dso_local global i32 0, align 4
@btree_get_extent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.extent_buffer*, i32, i32)* @btree_read_extent_buffer_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_read_extent_buffer_pages(%struct.btrfs_root* %0, %struct.extent_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_io_tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @EXTENT_BUFFER_CORRUPT, align 4
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %16, i32 0, i32 3
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_4__* @BTRFS_I(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.extent_io_tree* %25, %struct.extent_io_tree** %9, align 8
  br label %26

26:                                               ; preds = %4, %86
  %27 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WAIT_COMPLETE, align 4
  %31 = load i32, i32* @btree_get_extent, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @read_extent_buffer_pages(%struct.extent_io_tree* %27, %struct.extent_buffer* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @verify_parent_transid(%struct.extent_io_tree* %37, %struct.extent_buffer* %38, i32 %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %87

43:                                               ; preds = %36, %26
  %44 = load i32, i32* @EXTENT_BUFFER_CORRUPT, align 4
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %45, i32 0, i32 3
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %87

50:                                               ; preds = %43
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @btrfs_num_copies(i32* %54, i32 %57, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %87

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  store i32 1, i32* %10, align 4
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %87

86:                                               ; preds = %81
  br label %26

87:                                               ; preds = %85, %64, %49, %42
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @repair_eb_io_failure(%struct.btrfs_root* %94, %struct.extent_buffer* %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %90, %87
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(i32) #1

declare dso_local i32 @read_extent_buffer_pages(%struct.extent_io_tree*, %struct.extent_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @verify_parent_transid(%struct.extent_io_tree*, %struct.extent_buffer*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_num_copies(i32*, i32, i32) #1

declare dso_local i32 @repair_eb_io_failure(%struct.btrfs_root*, %struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
