; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_data_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_data_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32, i32 }
%struct.btrfs_delayed_extent_op = type { i32 }
%struct.btrfs_delayed_data_ref = type { i32 }
%struct.btrfs_delayed_ref_head = type { i32, %struct.btrfs_delayed_extent_op* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_delayed_data_ref(%struct.btrfs_fs_info* %0, %struct.btrfs_trans_handle* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.btrfs_delayed_extent_op* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_fs_info*, align 8
  %14 = alloca %struct.btrfs_trans_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.btrfs_delayed_extent_op*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.btrfs_delayed_data_ref*, align 8
  %25 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %26 = alloca %struct.btrfs_delayed_ref_root*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store %struct.btrfs_delayed_extent_op* %9, %struct.btrfs_delayed_extent_op** %22, align 8
  store i32 %10, i32* %23, align 4
  %27 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %28 = icmp ne %struct.btrfs_delayed_extent_op* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %11
  %30 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %31 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %11
  %36 = phi i1 [ false, %11 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call i8* @kmalloc(i32 4, i32 %39)
  %41 = bitcast i8* %40 to %struct.btrfs_delayed_data_ref*
  store %struct.btrfs_delayed_data_ref* %41, %struct.btrfs_delayed_data_ref** %24, align 8
  %42 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %24, align 8
  %43 = icmp ne %struct.btrfs_delayed_data_ref* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %106

47:                                               ; preds = %35
  %48 = load i32, i32* @GFP_NOFS, align 4
  %49 = call i8* @kmalloc(i32 16, i32 %48)
  %50 = bitcast i8* %49 to %struct.btrfs_delayed_ref_head*
  store %struct.btrfs_delayed_ref_head* %50, %struct.btrfs_delayed_ref_head** %25, align 8
  %51 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %25, align 8
  %52 = icmp ne %struct.btrfs_delayed_ref_head* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %24, align 8
  %55 = call i32 @kfree(%struct.btrfs_delayed_data_ref* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %106

58:                                               ; preds = %47
  %59 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %60 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %25, align 8
  %61 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %60, i32 0, i32 1
  store %struct.btrfs_delayed_extent_op* %59, %struct.btrfs_delayed_extent_op** %61, align 8
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %63 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %65, %struct.btrfs_delayed_ref_root** %26, align 8
  %66 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %26, align 8
  %67 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %71 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %25, align 8
  %72 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %71, i32 0, i32 0
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @add_delayed_ref_head(%struct.btrfs_fs_info* %69, %struct.btrfs_trans_handle* %70, i32* %72, i32 %73, i32 %74, i32 %75, i32 1)
  %77 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %78 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %79 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %24, align 8
  %80 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %79, i32 0, i32 0
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %23, align 4
  %89 = call i32 @add_delayed_data_ref(%struct.btrfs_fs_info* %77, %struct.btrfs_trans_handle* %78, i32* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @is_fstree(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %58
  %94 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %26, align 8
  %95 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %94, i32 0, i32 1
  %96 = call i64 @waitqueue_active(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %26, align 8
  %100 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %99, i32 0, i32 1
  %101 = call i32 @wake_up(i32* %100)
  br label %102

102:                                              ; preds = %98, %93, %58
  %103 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %26, align 8
  %104 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %102, %53, %44
  %107 = load i32, i32* %12, align 4
  ret i32 %107
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_delayed_data_ref*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @add_delayed_ref_head(%struct.btrfs_fs_info*, %struct.btrfs_trans_handle*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @add_delayed_data_ref(%struct.btrfs_fs_info*, %struct.btrfs_trans_handle*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

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
