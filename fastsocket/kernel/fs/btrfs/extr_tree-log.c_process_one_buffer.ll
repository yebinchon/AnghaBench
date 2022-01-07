; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_process_one_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_process_one_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.extent_buffer = type { i32, i32 }
%struct.walk_control = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.extent_buffer*, %struct.walk_control*, i32)* @process_one_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_one_buffer(%struct.btrfs_root* %0, %struct.extent_buffer* %1, %struct.walk_control* %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.walk_control*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %6, align 8
  store %struct.walk_control* %2, %struct.walk_control** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %10 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %15 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @btrfs_pin_extent_for_log_replay(i32 %16, i32 %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %13, %4
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %30, i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %36 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %41 = call i32 @btrfs_write_tree_block(%struct.extent_buffer* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.walk_control*, %struct.walk_control** %7, align 8
  %44 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %49 = call i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %29
  ret i32 0
}

declare dso_local i32 @btrfs_pin_extent_for_log_replay(i32, i32, i32, i32) #1

declare dso_local i64 @btrfs_buffer_uptodate(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_write_tree_block(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
