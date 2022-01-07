; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_write_and_wait_marked_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_write_and_wait_marked_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.extent_io_tree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_write_and_wait_marked_extents(%struct.btrfs_root* %0, %struct.extent_io_tree* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.extent_io_tree* %1, %struct.extent_io_tree** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %11 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @btrfs_write_marked_extents(%struct.btrfs_root* %10, %struct.extent_io_tree* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %15 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @btrfs_wait_marked_extents(%struct.btrfs_root* %14, %struct.extent_io_tree* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %25, %20
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @btrfs_write_marked_extents(%struct.btrfs_root*, %struct.extent_io_tree*, i32) #1

declare dso_local i32 @btrfs_wait_marked_extents(%struct.btrfs_root*, %struct.extent_io_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
