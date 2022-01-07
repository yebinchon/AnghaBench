; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.ramfs_fs_info*, %struct.dentry*, i32*, i32, i32, i32, i32 }
%struct.ramfs_fs_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@RAMFS_MAGIC = common dso_local global i32 0, align 4
@ramfs_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @ramfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ramfs_fs_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @save_mount_options(%struct.super_block* %12, i8* %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ramfs_fs_info* @kzalloc(i32 4, i32 %15)
  store %struct.ramfs_fs_info* %16, %struct.ramfs_fs_info** %8, align 8
  %17 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %8, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 1
  store %struct.ramfs_fs_info* %17, %struct.ramfs_fs_info** %19, align 8
  %20 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %8, align 8
  %21 = icmp ne %struct.ramfs_fs_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %8, align 8
  %28 = getelementptr inbounds %struct.ramfs_fs_info, %struct.ramfs_fs_info* %27, i32 0, i32 0
  %29 = call i32 @ramfs_parse_options(i8* %26, %struct.TYPE_2__* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %75

33:                                               ; preds = %25
  %34 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @RAMFS_MAGIC, align 4
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 3
  store i32* @ramfs_ops, i32** %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = load i32, i32* @S_IFDIR, align 4
  %52 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %8, align 8
  %53 = getelementptr inbounds %struct.ramfs_fs_info, %struct.ramfs_fs_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %51, %55
  %57 = call %struct.inode* @ramfs_get_inode(%struct.super_block* %50, i32 %56, i32 0)
  store %struct.inode* %57, %struct.inode** %9, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = icmp ne %struct.inode* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %33
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %75

63:                                               ; preds = %33
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call %struct.dentry* @d_alloc_root(%struct.inode* %64)
  store %struct.dentry* %65, %struct.dentry** %10, align 8
  %66 = load %struct.dentry*, %struct.dentry** %10, align 8
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 2
  store %struct.dentry* %66, %struct.dentry** %68, align 8
  %69 = load %struct.dentry*, %struct.dentry** %10, align 8
  %70 = icmp ne %struct.dentry* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %75

74:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %83

75:                                               ; preds = %71, %60, %32, %22
  %76 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %8, align 8
  %77 = call i32 @kfree(%struct.ramfs_fs_info* %76)
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 1
  store %struct.ramfs_fs_info* null, %struct.ramfs_fs_info** %79, align 8
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call i32 @iput(%struct.inode* %80)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %75, %74
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @save_mount_options(%struct.super_block*, i8*) #1

declare dso_local %struct.ramfs_fs_info* @kzalloc(i32, i32) #1

declare dso_local i32 @ramfs_parse_options(i8*, %struct.TYPE_2__*) #1

declare dso_local %struct.inode* @ramfs_get_inode(%struct.super_block*, i32, i32) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ramfs_fs_info*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
