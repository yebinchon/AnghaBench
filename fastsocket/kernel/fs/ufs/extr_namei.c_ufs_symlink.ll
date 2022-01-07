; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, %struct.TYPE_7__*, %struct.super_block* }
%struct.TYPE_7__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@ufs_aops = common dso_local global i32 0, align 4
@ufs_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ufs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load i32, i32* @ENAMETOOLONG, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %85

25:                                               ; preds = %3
  %26 = call i32 (...) @lock_kernel()
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i32, i32* @S_IFLNK, align 4
  %29 = load i32, i32* @S_IRWXUGO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.inode* @ufs_new_inode(%struct.inode* %27, i32 %30)
  store %struct.inode* %31, %struct.inode** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i64 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %83

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.super_block*, %struct.super_block** %7, align 8
  %41 = call %struct.TYPE_9__* @UFS_SB(%struct.super_block* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %39, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %38
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i32* @page_symlink_inode_operations, i32** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32* @ufs_aops, i32** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @page_symlink(%struct.inode* %54, i8* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %87

61:                                               ; preds = %47
  br label %77

62:                                               ; preds = %38
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  store i32* @ufs_fast_symlink_inode_operations, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = call %struct.TYPE_10__* @UFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @memcpy(i32 %69, i8* %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = sub i32 %73, 1
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %62, %61
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = call i32 @mark_inode_dirty(%struct.inode* %78)
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = call i32 @ufs_add_nondir(%struct.dentry* %80, %struct.inode* %81)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %87, %77, %37
  %84 = call i32 (...) @unlock_kernel()
  br label %85

85:                                               ; preds = %83, %24
  %86 = load i32, i32* %8, align 4
  ret i32 %86

87:                                               ; preds = %60
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @inode_dec_link_count(%struct.inode* %88)
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = call i32 @iput(%struct.inode* %90)
  br label %83
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.inode* @ufs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @UFS_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ufs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
