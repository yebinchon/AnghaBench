; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_tree_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_tree_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32, i32 }
%struct.btrfs_delayed_extent_op = type { i64 }
%struct.btrfs_delayed_tree_ref = type { i32 }
%struct.btrfs_delayed_ref_head = type { i32, %struct.btrfs_delayed_extent_op* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_delayed_tree_ref(%struct.btrfs_fs_info* %0, %struct.btrfs_trans_handle* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.btrfs_delayed_extent_op* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_trans_handle*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_delayed_extent_op*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.btrfs_delayed_tree_ref*, align 8
  %23 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %24 = alloca %struct.btrfs_delayed_ref_root*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.btrfs_delayed_extent_op* %8, %struct.btrfs_delayed_extent_op** %20, align 8
  store i32 %9, i32* %21, align 4
  %25 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %20, align 8
  %26 = icmp ne %struct.btrfs_delayed_extent_op* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %10
  %28 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %20, align 8
  %29 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %10
  %33 = phi i1 [ false, %10 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = call i8* @kmalloc(i32 4, i32 %36)
  %38 = bitcast i8* %37 to %struct.btrfs_delayed_tree_ref*
  store %struct.btrfs_delayed_tree_ref* %38, %struct.btrfs_delayed_tree_ref** %22, align 8
  %39 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %22, align 8
  %40 = icmp ne %struct.btrfs_delayed_tree_ref* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %102

44:                                               ; preds = %32
  %45 = load i32, i32* @GFP_NOFS, align 4
  %46 = call i8* @kmalloc(i32 16, i32 %45)
  %47 = bitcast i8* %46 to %struct.btrfs_delayed_ref_head*
  store %struct.btrfs_delayed_ref_head* %47, %struct.btrfs_delayed_ref_head** %23, align 8
  %48 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %23, align 8
  %49 = icmp ne %struct.btrfs_delayed_ref_head* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %22, align 8
  %52 = call i32 @kfree(%struct.btrfs_delayed_tree_ref* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %102

55:                                               ; preds = %44
  %56 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %20, align 8
  %57 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %23, align 8
  %58 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %57, i32 0, i32 1
  store %struct.btrfs_delayed_extent_op* %56, %struct.btrfs_delayed_extent_op** %58, align 8
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %60 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %62, %struct.btrfs_delayed_ref_root** %24, align 8
  %63 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %24, align 8
  %64 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %68 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %23, align 8
  %69 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %68, i32 0, i32 0
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @add_delayed_ref_head(%struct.btrfs_fs_info* %66, %struct.btrfs_trans_handle* %67, i32* %69, i32 %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %75 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %76 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %22, align 8
  %77 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %76, i32 0, i32 0
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @add_delayed_tree_ref(%struct.btrfs_fs_info* %74, %struct.btrfs_trans_handle* %75, i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @is_fstree(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %55
  %90 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %24, align 8
  %91 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %90, i32 0, i32 1
  %92 = call i64 @waitqueue_active(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %24, align 8
  %96 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %95, i32 0, i32 1
  %97 = call i32 @wake_up(i32* %96)
  br label %98

98:                                               ; preds = %94, %89, %55
  %99 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %24, align 8
  %100 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %98, %50, %41
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_delayed_tree_ref*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @add_delayed_ref_head(%struct.btrfs_fs_info*, %struct.btrfs_trans_handle*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @add_delayed_tree_ref(%struct.btrfs_fs_info*, %struct.btrfs_trans_handle*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @is_fstree(i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
