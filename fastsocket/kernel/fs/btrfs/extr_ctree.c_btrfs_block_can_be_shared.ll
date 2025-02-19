; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_block_can_be_shared.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_block_can_be_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, i32, %struct.extent_buffer*, %struct.extent_buffer* }
%struct.extent_buffer = type { i32 }

@BTRFS_HEADER_FLAG_RELOC = common dso_local global i32 0, align 4
@BTRFS_MIXED_BACKREF_REV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_block_can_be_shared(%struct.btrfs_root* %0, %struct.extent_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %5, align 8
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %7 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 3
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %15 = icmp ne %struct.extent_buffer* %11, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 2
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %21 = icmp ne %struct.extent_buffer* %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %24 = call i64 @btrfs_header_generation(%struct.extent_buffer* %23)
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 1
  %27 = call i64 @btrfs_root_last_snapshot(i32* %26)
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %31 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %32 = call i64 @btrfs_header_flag(%struct.extent_buffer* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %22
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %29, %16, %10, %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_root_last_snapshot(i32*) #1

declare dso_local i64 @btrfs_header_flag(%struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
