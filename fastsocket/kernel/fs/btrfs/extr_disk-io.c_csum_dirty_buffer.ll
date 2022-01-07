; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_csum_dirty_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_csum_dirty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.page = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.extent_buffer = type { %struct.page** }
%struct.TYPE_4__ = type { %struct.extent_io_tree }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.page*)* @csum_dirty_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csum_dirty_buffer(%struct.btrfs_root* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %14 = shl i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_4__* @BTRFS_I(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.extent_io_tree* %21, %struct.extent_io_tree** %6, align 8
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.extent_buffer*
  store %struct.extent_buffer* %25, %struct.extent_buffer** %9, align 8
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 0
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 0
  %31 = load %struct.page*, %struct.page** %30, align 8
  %32 = icmp ne %struct.page* %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %36 = call i64 @btrfs_header_bytenr(%struct.extent_buffer* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %62

42:                                               ; preds = %34
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 0
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 0
  %47 = load %struct.page*, %struct.page** %46, align 8
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = icmp ne %struct.page* %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %62

52:                                               ; preds = %42
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @PageUptodate(%struct.page* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %62

58:                                               ; preds = %52
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %61 = call i32 @csum_tree_block(%struct.btrfs_root* %59, %struct.extent_buffer* %60, i32 0)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %56, %50, %40, %33
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(i32) #1

declare dso_local i64 @btrfs_header_bytenr(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @csum_tree_block(%struct.btrfs_root*, %struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
