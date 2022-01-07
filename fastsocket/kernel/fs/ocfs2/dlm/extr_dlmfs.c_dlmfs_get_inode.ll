; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.super_block* }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.dlmfs_inode_private = type { i32, i32, i32 }

@dlmfs_backing_dev_info = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@dlmfs_file_inode_operations = common dso_local global i32 0, align 4
@dlmfs_file_operations = common dso_local global i32 0, align 4
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@dlmfs_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, %struct.dentry*, i32)* @dlmfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @dlmfs_get_inode(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dlmfs_inode_private*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 9
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %8, align 8
  %15 = call %struct.inode* @new_inode(%struct.super_block* %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %108

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @current_fsuid()
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = call i32 (...) @current_fsgid()
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 7
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* @dlmfs_backing_dev_info, i32** %32, align 8
  %33 = load i32, i32* @CURRENT_TIME, align 4
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 5
  store i32 %33, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 6
  store i32 %33, i32* %39, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %40)
  store %struct.dlmfs_inode_private* %41, %struct.dlmfs_inode_private** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %47 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @S_IFMT, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %51 [
    i32 128, label %53
    i32 129, label %76
  ]

51:                                               ; preds = %19
  %52 = call i32 (...) @BUG()
  br label %83

53:                                               ; preds = %19
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  store i32* @dlmfs_file_inode_operations, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  store i32* @dlmfs_file_operations, i32** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = load i32, i32* @DLM_LVB_LEN, align 4
  %60 = call i32 @i_size_write(%struct.inode* %58, i32 %59)
  %61 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %62 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %61, i32 0, i32 1
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = call i32 @user_dlm_lock_res_init(i32* %62, %struct.dentry* %63)
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call i32 @igrab(%struct.inode* %65)
  %67 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %68 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %70 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  br label %83

76:                                               ; preds = %19
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 3
  store i32* @dlmfs_dir_inode_operations, i32** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  store i32* @simple_dir_operations, i32** %80, align 8
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = call i32 @inc_nlink(%struct.inode* %81)
  br label %83

83:                                               ; preds = %76, %53, %51
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @S_ISGID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %83
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @S_ISDIR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load i32, i32* @S_ISGID, align 4
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %90
  br label %106

106:                                              ; preds = %105, %83
  %107 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %107, %struct.inode** %4, align 8
  br label %108

108:                                              ; preds = %106, %18
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %109
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @user_dlm_lock_res_init(i32*, %struct.dentry*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
