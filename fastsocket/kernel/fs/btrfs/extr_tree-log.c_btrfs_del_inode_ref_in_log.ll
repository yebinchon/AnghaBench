; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_del_inode_ref_in_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_btrfs_del_inode_ref_in_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { %struct.TYPE_3__*, %struct.btrfs_root* }
%struct.TYPE_3__ = type { i64 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_inode_ref_in_log(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i8* %2, i32 %3, %struct.inode* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.inode* %4, %struct.inode** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.inode*, %struct.inode** %12, align 8
  %18 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %82

26:                                               ; preds = %6
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %28 = call i32 @join_running_log_trans(%struct.btrfs_root* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %82

32:                                               ; preds = %26
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 1
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %34, align 8
  store %struct.btrfs_root* %35, %struct.btrfs_root** %14, align 8
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = call i32 @btrfs_ino(%struct.inode* %44)
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle* %40, %struct.btrfs_root* %41, i8* %42, i32 %43, i32 %45, i32 %46, i32* %15)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %32
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %58 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %61 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  store i32 0, i32* %16, align 4
  br label %78

64:                                               ; preds = %32
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %73, %struct.btrfs_root* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %67, %64
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %80 = call i32 @btrfs_end_log_trans(%struct.btrfs_root* %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %31, %25
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @join_running_log_trans(%struct.btrfs_root*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_end_log_trans(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
