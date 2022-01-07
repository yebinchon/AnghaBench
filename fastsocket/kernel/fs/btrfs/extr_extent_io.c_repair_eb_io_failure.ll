; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_repair_eb_io_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_repair_eb_io_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_mapping_tree }
%struct.btrfs_mapping_tree = type { i32 }
%struct.extent_buffer = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repair_eb_io_failure(%struct.btrfs_root* %0, %struct.extent_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_mapping_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.btrfs_mapping_tree* %16, %struct.btrfs_mapping_tree** %7, align 8
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @num_extent_pages(i32 %22, i32 %25)
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %51, %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call %struct.page* @extent_buffer_page(%struct.extent_buffer* %32, i64 %33)
  store %struct.page* %34, %struct.page** %12, align 8
  %35 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.page*, %struct.page** %12, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @repair_io_failure(%struct.btrfs_mapping_tree* %35, i32 %36, i64 %37, i32 %38, %struct.page* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %54

45:                                               ; preds = %31
  %46 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %27

54:                                               ; preds = %44, %27
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local i64 @num_extent_pages(i32, i32) #1

declare dso_local %struct.page* @extent_buffer_page(%struct.extent_buffer*, i64) #1

declare dso_local i32 @repair_io_failure(%struct.btrfs_mapping_tree*, i32, i64, i32, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
