; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_inode.c_ramfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.super_block = type { i32 }

@ramfs_aops = common dso_local global i32 0, align 4
@ramfs_backing_dev_info = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ramfs_file_inode_operations = common dso_local global i32 0, align 4
@ramfs_file_operations = common dso_local global i32 0, align 4
@ramfs_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ramfs_get_inode(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.inode* @new_inode(%struct.super_block* %8)
  store %struct.inode* %9, %struct.inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %12, label %70

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = call i32 (...) @current_fsuid()
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @current_fsgid()
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32* @ramfs_aops, i32** %25, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 6
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* @ramfs_backing_dev_info, i32** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 6
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* @GFP_HIGHUSER, align 4
  %34 = call i32 @mapping_set_gfp_mask(%struct.TYPE_3__* %32, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @mapping_set_unevictable(%struct.TYPE_3__* %37)
  %39 = load i32, i32* @CURRENT_TIME, align 4
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 4
  store i32 %39, i32* %43, align 4
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 5
  store i32 %39, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @S_IFMT, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %49 [
    i32 128, label %54
    i32 130, label %59
    i32 129, label %66
  ]

49:                                               ; preds = %12
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @init_special_inode(%struct.inode* %50, i32 %51, i32 %52)
  br label %69

54:                                               ; preds = %12
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  store i32* @ramfs_file_inode_operations, i32** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  store i32* @ramfs_file_operations, i32** %58, align 8
  br label %69

59:                                               ; preds = %12
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  store i32* @ramfs_dir_inode_operations, i32** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  store i32* @simple_dir_operations, i32** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call i32 @inc_nlink(%struct.inode* %64)
  br label %69

66:                                               ; preds = %12
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  store i32* @page_symlink_inode_operations, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %59, %54, %49
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %71
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mapping_set_unevictable(%struct.TYPE_3__*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
