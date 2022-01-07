; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_fixup_low_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_fixup_low_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_disk_key*, i32)* @fixup_low_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_low_keys(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_disk_key* %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_disk_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store %struct.btrfs_disk_key* %3, %struct.btrfs_disk_key** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %67, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %28 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %27, i32 0, i32 1
  %29 = load %struct.extent_buffer**, %struct.extent_buffer*** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %29, i64 %31
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %32, align 8
  %34 = icmp ne %struct.extent_buffer* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  br label %70

36:                                               ; preds = %19
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %38 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %37, i32 0, i32 1
  %39 = load %struct.extent_buffer**, %struct.extent_buffer*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %39, i64 %41
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %42, align 8
  store %struct.extent_buffer* %43, %struct.extent_buffer** %12, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %48 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @tree_mod_log_set_node_key(i32 %46, %struct.extent_buffer* %47, %struct.btrfs_disk_key* %48, i32 %49, i32 1)
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %52 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @btrfs_set_node_key(%struct.extent_buffer* %51, %struct.btrfs_disk_key* %52, i32 %53)
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 1
  %57 = load %struct.extent_buffer**, %struct.extent_buffer*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %57, i64 %59
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %60, align 8
  %62 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %36
  br label %70

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %15

70:                                               ; preds = %65, %35, %15
  ret void
}

declare dso_local i32 @tree_mod_log_set_node_key(i32, %struct.extent_buffer*, %struct.btrfs_disk_key*, i32, i32) #1

declare dso_local i32 @btrfs_set_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
