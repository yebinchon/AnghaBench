; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_should_cow_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_should_cow_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i32 }

@BTRFS_HEADER_FLAG_WRITTEN = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_HEADER_FLAG_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*)* @should_cow_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_cow_block(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %7, align 8
  %8 = call i32 (...) @smp_rmb()
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %10 = call i64 @btrfs_header_generation(%struct.extent_buffer* %9)
  %11 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %17 = load i32, i32* @BTRFS_HEADER_FLAG_WRITTEN, align 4
  %18 = call i64 @btrfs_header_flag(%struct.extent_buffer* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BTRFS_TREE_RELOC_OBJECTID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %29 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %30 = call i64 @btrfs_header_flag(%struct.extent_buffer* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %39

38:                                               ; preds = %32, %27, %15, %3
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_header_flag(%struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
