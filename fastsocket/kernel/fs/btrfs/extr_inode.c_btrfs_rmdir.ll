; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.dentry = type { %struct.TYPE_5__, %struct.inode* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.btrfs_root* }
%struct.TYPE_4__ = type { i32 }

@BTRFS_EMPTY_DIR_SIZE = common dso_local global i64 0, align 8
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i32 0, align 4
@BTRFS_EMPTY_SUBVOL_DIR_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @btrfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %8, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BTRFS_EMPTY_DIR_SIZE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i64 @btrfs_ino(%struct.inode* %24)
  %26 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @ENOTEMPTY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %107

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call %struct.btrfs_trans_handle* @__unlink_start_trans(%struct.inode* %32, %struct.dentry* %33)
  store %struct.btrfs_trans_handle* %34, %struct.btrfs_trans_handle** %9, align 8
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %36 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %40 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %39)
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %31
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i64 @btrfs_ino(%struct.inode* %42)
  %44 = load i64, i64* @BTRFS_EMPTY_SUBVOL_DIR_OBJECTID, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dentry*, %struct.dentry** %5, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @btrfs_unlink_subvol(%struct.btrfs_trans_handle* %50, %struct.btrfs_root* %51, %struct.inode* %52, i32 %57, i32 %61, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %96

67:                                               ; preds = %41
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call i32 @btrfs_orphan_add(%struct.btrfs_trans_handle* %68, %struct.inode* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %96

74:                                               ; preds = %67
  %75 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %76 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = load %struct.dentry*, %struct.dentry** %5, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 1
  %80 = load %struct.inode*, %struct.inode** %79, align 8
  %81 = load %struct.dentry*, %struct.dentry** %5, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dentry*, %struct.dentry** %5, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle* %75, %struct.btrfs_root* %76, %struct.inode* %77, %struct.inode* %80, i32 %84, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %74
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call i32 @btrfs_i_size_write(%struct.inode* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %74
  br label %96

96:                                               ; preds = %95, %73, %49
  %97 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %98 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %10, align 8
  %100 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %101 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %102 = call i32 @__unlink_end_trans(%struct.btrfs_trans_handle* %100, %struct.btrfs_root* %101)
  %103 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %103, i64 %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %96, %38, %28
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

declare dso_local %struct.btrfs_trans_handle* @__unlink_start_trans(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @btrfs_unlink_subvol(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @btrfs_orphan_add(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @__unlink_end_trans(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_root*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
