; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_extent_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_extent_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32, i32 }
%struct.btrfs_delayed_extent_op = type { i32 }
%struct.btrfs_delayed_ref_head = type { i32, %struct.btrfs_delayed_extent_op* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_UPDATE_DELAYED_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_delayed_extent_op(%struct.btrfs_fs_info* %0, %struct.btrfs_trans_handle* %1, i32 %2, i32 %3, %struct.btrfs_delayed_extent_op* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_delayed_extent_op*, align 8
  %12 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %13 = alloca %struct.btrfs_delayed_ref_root*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.btrfs_delayed_extent_op* %4, %struct.btrfs_delayed_extent_op** %11, align 8
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.btrfs_delayed_ref_head* @kmalloc(i32 16, i32 %14)
  store %struct.btrfs_delayed_ref_head* %15, %struct.btrfs_delayed_ref_head** %12, align 8
  %16 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %12, align 8
  %17 = icmp ne %struct.btrfs_delayed_ref_head* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %55

21:                                               ; preds = %5
  %22 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %11, align 8
  %23 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %12, align 8
  %24 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %23, i32 0, i32 1
  store %struct.btrfs_delayed_extent_op* %22, %struct.btrfs_delayed_extent_op** %24, align 8
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %28, %struct.btrfs_delayed_ref_root** %13, align 8
  %29 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %13, align 8
  %30 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %34 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %12, align 8
  %35 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @BTRFS_UPDATE_DELAYED_HEAD, align 4
  %39 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %11, align 8
  %40 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @add_delayed_ref_head(%struct.btrfs_fs_info* %32, %struct.btrfs_trans_handle* %33, i32* %35, i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %13, align 8
  %44 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %43, i32 0, i32 1
  %45 = call i64 @waitqueue_active(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %21
  %48 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %13, align 8
  %49 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %48, i32 0, i32 1
  %50 = call i32 @wake_up(i32* %49)
  br label %51

51:                                               ; preds = %47, %21
  %52 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %13, align 8
  %53 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.btrfs_delayed_ref_head* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @add_delayed_ref_head(%struct.btrfs_fs_info*, %struct.btrfs_trans_handle*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
