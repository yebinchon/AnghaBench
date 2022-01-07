; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_read_tree_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_read_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_root* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.extent_buffer* null, %struct.extent_buffer** %10, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_root* %12, i32 %13, i32 %14)
  store %struct.extent_buffer* %15, %struct.extent_buffer** %10, align 8
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %17 = icmp ne %struct.extent_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.extent_buffer* null, %struct.extent_buffer** %5, align 8
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @btree_read_extent_buffer_pages(%struct.btrfs_root* %20, %struct.extent_buffer* %21, i32 0, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  store %struct.extent_buffer* %24, %struct.extent_buffer** %5, align 8
  br label %25

25:                                               ; preds = %19, %18
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  ret %struct.extent_buffer* %26
}

declare dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @btree_read_extent_buffer_pages(%struct.btrfs_root*, %struct.extent_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
