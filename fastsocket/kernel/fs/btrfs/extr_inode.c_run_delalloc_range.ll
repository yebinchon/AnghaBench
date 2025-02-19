; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_run_delalloc_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_run_delalloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.btrfs_root* }

@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@BTRFS_INODE_PREALLOC = common dso_local global i32 0, align 4
@COMPRESS = common dso_local global i32 0, align 4
@BTRFS_INODE_COMPRESS = common dso_local global i32 0, align 4
@BTRFS_INODE_HAS_ASYNC_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i32, i32, i32*, i64*)* @run_delalloc_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_delalloc_range(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_root*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %14, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = call i32 @run_delalloc_nocow(%struct.inode* %27, %struct.page* %28, i32 %29, i32 %30, i32* %31, i32 1, i64* %32)
  store i32 %33, i32* %13, align 4
  br label %92

34:                                               ; preds = %6
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BTRFS_INODE_PREALLOC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i64*, i64** %12, align 8
  %49 = call i32 @run_delalloc_nocow(%struct.inode* %43, %struct.page* %44, i32 %45, i32 %46, i32* %47, i32 0, i64* %48)
  store i32 %49, i32* %13, align 4
  br label %91

50:                                               ; preds = %34
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %52 = load i32, i32* @COMPRESS, align 4
  %53 = call i32 @btrfs_test_opt(%struct.btrfs_root* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %50
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %55
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = load %struct.page*, %struct.page** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i64*, i64** %12, align 8
  %76 = call i32 @cow_file_range(%struct.inode* %70, %struct.page* %71, i32 %72, i32 %73, i32* %74, i64* %75, i32 1)
  store i32 %76, i32* %13, align 4
  br label %90

77:                                               ; preds = %61, %55, %50
  %78 = load i32, i32* @BTRFS_INODE_HAS_ASYNC_EXTENT, align 4
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = call i32 @set_bit(i32 %78, i32* %81)
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = load %struct.page*, %struct.page** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i64*, i64** %12, align 8
  %89 = call i32 @cow_file_range_async(%struct.inode* %83, %struct.page* %84, i32 %85, i32 %86, i32* %87, i64* %88)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %77, %69
  br label %91

91:                                               ; preds = %90, %42
  br label %92

92:                                               ; preds = %91, %26
  %93 = load i32, i32* %13, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @run_delalloc_nocow(%struct.inode*, %struct.page*, i32, i32, i32*, i32, i64*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local i32 @cow_file_range(%struct.inode*, %struct.page*, i32, i32, i32*, i64*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cow_file_range_async(%struct.inode*, %struct.page*, i32, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
