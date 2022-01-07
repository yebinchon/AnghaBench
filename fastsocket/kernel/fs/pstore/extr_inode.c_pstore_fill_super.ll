; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_inode.c_pstore_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_inode.c_pstore_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.dentry*, i32*, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32* }

@pstore_sb = common dso_local global %struct.super_block* null, align 8
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PSTOREFS_MAGIC = common dso_local global i32 0, align 4
@pstore_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pstore_dir_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstore_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @save_mount_options(%struct.super_block* %11, i8* %12)
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  store %struct.super_block* %14, %struct.super_block** @pstore_sb, align 8
  %15 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @PSTOREFS_MAGIC, align 4
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 2
  store i32* @pstore_ops, i32** %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @parse_options(i8* %31)
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load i32, i32* @S_IFDIR, align 4
  %35 = or i32 %34, 493
  %36 = call %struct.inode* @pstore_get_inode(%struct.super_block* %33, i32* null, i32 %35, i32 0)
  store %struct.inode* %36, %struct.inode** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %57

42:                                               ; preds = %3
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  store i32* @pstore_dir_inode_operations, i32** %44, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call %struct.dentry* @d_alloc_root(%struct.inode* %45)
  store %struct.dentry* %46, %struct.dentry** %9, align 8
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 1
  store %struct.dentry* %47, %struct.dentry** %49, align 8
  %50 = load %struct.dentry*, %struct.dentry** %9, align 8
  %51 = icmp ne %struct.dentry* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %57

55:                                               ; preds = %42
  %56 = call i32 @pstore_get_records(i32 0)
  store i32 0, i32* %4, align 4
  br label %61

57:                                               ; preds = %52, %39
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call i32 @iput(%struct.inode* %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %55
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @save_mount_options(%struct.super_block*, i8*) #1

declare dso_local i32 @parse_options(i8*) #1

declare dso_local %struct.inode* @pstore_get_inode(%struct.super_block*, i32*, i32, i32) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @pstore_get_records(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
