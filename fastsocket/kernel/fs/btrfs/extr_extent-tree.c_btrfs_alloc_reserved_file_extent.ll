; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_alloc_reserved_file_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_alloc_reserved_file_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32, i32 }

@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_alloc_reserved_file_extent(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i64 %2, i64 %3, i64 %4, %struct.btrfs_key* %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_key*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.btrfs_key* %5, %struct.btrfs_key** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %23 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %24 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %33 = call i32 @btrfs_add_delayed_data_ref(i32 %21, %struct.btrfs_trans_handle* %22, i32 %25, i32 %28, i32 0, i64 %29, i64 %30, i64 %31, i32 %32, i32* null, i32 0)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  ret i32 %34
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_add_delayed_data_ref(i32, %struct.btrfs_trans_handle*, i32, i32, i32, i64, i64, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
