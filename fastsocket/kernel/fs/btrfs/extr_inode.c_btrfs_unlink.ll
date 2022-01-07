; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.dentry = type { %struct.TYPE_3__, %struct.inode* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i64 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @btrfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.btrfs_trans_handle* @__unlink_start_trans(%struct.inode* %18, %struct.dentry* %19)
  store %struct.btrfs_trans_handle* %20, %struct.btrfs_trans_handle** %7, align 8
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %22 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %25)
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %2
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  %33 = call i32 @btrfs_record_unlink_dir(%struct.btrfs_trans_handle* %28, %struct.inode* %29, %struct.inode* %32, i32 0)
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 1
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle* %34, %struct.btrfs_root* %35, %struct.inode* %36, %struct.inode* %39, i32 %43, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %27
  br label %66

52:                                               ; preds = %27
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @btrfs_orphan_add(%struct.btrfs_trans_handle* %58, %struct.inode* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %66

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %63, %51
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %68 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %72 = call i32 @__unlink_end_trans(%struct.btrfs_trans_handle* %70, %struct.btrfs_root* %71)
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %73, i64 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %66, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_trans_handle* @__unlink_start_trans(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_record_unlink_dir(%struct.btrfs_trans_handle*, %struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @btrfs_unlink_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_orphan_add(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i32 @__unlink_end_trans(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_root*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
