; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_free_log_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_free_log_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, i32 }
%struct.walk_control = type { i32, i32 }

@process_one_buffer = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_NEW = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @free_log_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_log_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.walk_control, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %9 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %8, i32 0, i32 1
  %11 = load i32, i32* @process_one_buffer, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = call i32 @walk_log_tree(%struct.btrfs_trans_handle* %12, %struct.btrfs_root* %13, %struct.walk_control* %8)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BUG_ON(i32 %15)
  br label %17

17:                                               ; preds = %2, %27
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 1
  %20 = load i32, i32* @EXTENT_DIRTY, align 4
  %21 = load i32, i32* @EXTENT_NEW, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @find_first_extent_bit(i32* %19, i32 0, i32* %6, i32* %7, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @EXTENT_DIRTY, align 4
  %33 = load i32, i32* @EXTENT_NEW, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call i32 @clear_extent_bits(i32* %29, i32 %30, i32 %31, i32 %34, i32 %35)
  br label %17

37:                                               ; preds = %26
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @free_extent_buffer(i32 %40)
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %43 = call i32 @kfree(%struct.btrfs_root* %42)
  ret void
}

declare dso_local i32 @walk_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.walk_control*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @find_first_extent_bit(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @clear_extent_bits(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
