; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_btrfs_start_ordered_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ordered-data.c_btrfs_start_ordered_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_ordered_extent = type { i32, i32, i64, i64 }

@BTRFS_ORDERED_DIRECT = common dso_local global i32 0, align 4
@BTRFS_ORDERED_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_start_ordered_extent(%struct.inode* %0, %struct.btrfs_ordered_extent* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.btrfs_ordered_extent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.btrfs_ordered_extent* %1, %struct.btrfs_ordered_extent** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %8, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %5, align 8
  %20 = call i32 @trace_btrfs_ordered_extent_start(%struct.inode* %18, %struct.btrfs_ordered_extent* %19)
  %21 = load i32, i32* @BTRFS_ORDERED_DIRECT, align 4
  %22 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @filemap_fdatawrite_range(i32 %29, i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %26, %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BTRFS_ORDERED_COMPLETE, align 4
  %41 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %41, i32 0, i32 0
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = call i32 @wait_event(i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @trace_btrfs_ordered_extent_start(%struct.inode*, %struct.btrfs_ordered_extent*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @filemap_fdatawrite_range(i32, i64, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
