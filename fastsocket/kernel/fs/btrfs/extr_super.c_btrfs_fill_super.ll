; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, %struct.dentry*, i32, i32*, i32*, i32, i32 }
%struct.dentry = type { i32 }
%struct.btrfs_fs_devices = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_key = type { i64, i32, i32 }

@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@BTRFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@btrfs_super_ops = common dso_local global i32 0, align 4
@btrfs_export_ops = common dso_local global i32 0, align 4
@btrfs_xattr_handlers = common dso_local global i32 0, align 4
@MS_I_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"btrfs: open_ctree failed\0A\00", align 1
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@MS_POSIXACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.btrfs_fs_devices*, i8*, i32)* @btrfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_fill_super(%struct.super_block* %0, %struct.btrfs_fs_devices* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.btrfs_fs_devices*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.btrfs_fs_devices* %1, %struct.btrfs_fs_devices** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block* %15)
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %12, align 8
  %17 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @BTRFS_SUPER_MAGIC, align 4
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 5
  store i32* @btrfs_super_ops, i32** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 4
  store i32* @btrfs_export_ops, i32** %26, align 8
  %27 = load i32, i32* @btrfs_xattr_handlers, align 4
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @MS_I_VERSION, align 4
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @open_ctree(%struct.super_block* %37, %struct.btrfs_fs_devices* %38, i8* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %91

46:                                               ; preds = %4
  %47 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %50 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.super_block*, %struct.super_block** %6, align 8
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %54 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.inode* @btrfs_iget(%struct.super_block* %52, %struct.btrfs_key* %13, i32 %55, i32* null)
  store %struct.inode* %56, %struct.inode** %10, align 8
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call i64 @IS_ERR(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = call i32 @PTR_ERR(%struct.inode* %61)
  store i32 %62, i32* %14, align 4
  br label %85

63:                                               ; preds = %46
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = call %struct.dentry* @d_alloc_root(%struct.inode* %64)
  store %struct.dentry* %65, %struct.dentry** %11, align 8
  %66 = load %struct.dentry*, %struct.dentry** %11, align 8
  %67 = icmp ne %struct.dentry* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = call i32 @iput(%struct.inode* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %85

73:                                               ; preds = %63
  %74 = load %struct.dentry*, %struct.dentry** %11, align 8
  %75 = load %struct.super_block*, %struct.super_block** %6, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 2
  store %struct.dentry* %74, %struct.dentry** %76, align 8
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @save_mount_options(%struct.super_block* %77, i8* %78)
  %80 = load i32, i32* @MS_ACTIVE, align 4
  %81 = load %struct.super_block*, %struct.super_block** %6, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  store i32 0, i32* %5, align 4
  br label %91

85:                                               ; preds = %68, %60
  %86 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %87 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @close_ctree(i32 %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %73, %43
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @open_ctree(%struct.super_block*, %struct.btrfs_fs_devices*, i8*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.inode* @btrfs_iget(%struct.super_block*, %struct.btrfs_key*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @save_mount_options(%struct.super_block*, i8*) #1

declare dso_local i32 @close_ctree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
