; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_btrfs_wait_ordered_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_btrfs_wait_ordered_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_ordered_extent = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@loff_t = common dso_local global i32 0, align 4
@BTRFS_INODE_HAS_ASYNC_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_wait_ordered_range(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_ordered_extent*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @loff_t, align 4
  %18 = call i64 @INT_LIMIT(i32 %17)
  store i64 %18, i64* %8, align 8
  br label %32

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %20, %21
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @loff_t, align 4
  %26 = call i64 @INT_LIMIT(i32 %25)
  %27 = icmp sgt i64 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @loff_t, align 4
  %30 = call i64 @INT_LIMIT(i32 %29)
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %28, %19
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @filemap_fdatawrite_range(i32 %35, i64 %36, i64 %37)
  %39 = load i32, i32* @BTRFS_INODE_HAS_ASYNC_EXTENT, align 4
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %39, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %32
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @filemap_fdatawrite_range(i32 %48, i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %45, %32
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @filemap_fdatawait_range(i32 %55, i64 %56, i64 %57)
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %52, %107
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode* %61, i64 %62)
  store %struct.btrfs_ordered_extent* %63, %struct.btrfs_ordered_extent** %9, align 8
  %64 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %65 = icmp ne %struct.btrfs_ordered_extent* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %110

67:                                               ; preds = %60
  %68 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %69 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %75 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %74)
  br label %110

76:                                               ; preds = %67
  %77 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %78 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %81 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* %5, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %88 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %87)
  br label %110

89:                                               ; preds = %76
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %94 = call i32 @btrfs_start_ordered_extent(%struct.inode* %92, %struct.btrfs_ordered_extent* %93, i32 1)
  %95 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %96 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %7, align 8
  %98 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %9, align 8
  %99 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %98)
  %100 = load i64, i64* %7, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %89
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %89
  br label %110

107:                                              ; preds = %102
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %7, align 8
  br label %60

110:                                              ; preds = %106, %86, %73, %66
  ret void
}

declare dso_local i64 @INT_LIMIT(i32) #1

declare dso_local i32 @filemap_fdatawrite_range(i32, i64, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawait_range(i32, i64, i64) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @btrfs_start_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
