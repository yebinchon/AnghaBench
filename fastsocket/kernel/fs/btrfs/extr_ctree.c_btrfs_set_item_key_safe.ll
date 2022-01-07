; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_set_item_key_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_set_item_key_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_disk_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_set_item_key_safe(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_key* %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_key*, align 8
  %9 = alloca %struct.btrfs_disk_key, align 4
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  store %struct.btrfs_key* %3, %struct.btrfs_key** %8, align 8
  %12 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %13 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %12, i32 0, i32 1
  %14 = load %struct.extent_buffer**, %struct.extent_buffer*** %13, align 8
  %15 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %14, i64 0
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  store %struct.extent_buffer* %16, %struct.extent_buffer** %10, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @btrfs_item_key(%struct.extent_buffer* %25, %struct.btrfs_disk_key* %9, i32 %27)
  %29 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %30 = call i64 @comp_keys(%struct.btrfs_disk_key* %9, %struct.btrfs_key* %29)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  br label %34

34:                                               ; preds = %24, %4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %37 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %36)
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @btrfs_item_key(%struct.extent_buffer* %41, %struct.btrfs_disk_key* %9, i32 %43)
  %45 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %46 = call i64 @comp_keys(%struct.btrfs_disk_key* %9, %struct.btrfs_key* %45)
  %47 = icmp sle i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  br label %50

50:                                               ; preds = %40, %34
  %51 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %52 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %9, %struct.btrfs_key* %51)
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @btrfs_set_item_key(%struct.extent_buffer* %53, %struct.btrfs_disk_key* %9, i32 %54)
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %57 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %64 = call i32 @fixup_low_keys(%struct.btrfs_trans_handle* %61, %struct.btrfs_root* %62, %struct.btrfs_path* %63, %struct.btrfs_disk_key* %9, i32 1)
  br label %65

65:                                               ; preds = %60, %50
  ret void
}

declare dso_local i32 @btrfs_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @comp_keys(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_set_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @fixup_low_keys(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_disk_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
