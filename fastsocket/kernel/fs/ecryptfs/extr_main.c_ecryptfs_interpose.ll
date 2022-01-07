; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_main.c_ecryptfs_interpose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_main.c_ecryptfs_interpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32*, %struct.inode* }
%struct.inode = type { i64, i32, i32, i32, i32*, i32* }
%struct.super_block = type { i32 }

@EXDEV = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ecryptfs_inode_test = common dso_local global i32 0, align 4
@ecryptfs_inode_set = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ecryptfs_symlink_iops = common dso_local global i32 0, align 4
@ecryptfs_dir_iops = common dso_local global i32 0, align 4
@ecryptfs_dir_fops = common dso_local global i32 0, align 4
@ecryptfs_dops = common dso_local global i32 0, align 4
@ECRYPTFS_INTERPOSE_FLAG_D_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_interpose(%struct.dentry* %0, %struct.dentry* %1, %struct.super_block* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.super_block*, %struct.super_block** %7, align 8
  %19 = call i64 @ecryptfs_superblock_to_lower(%struct.super_block* %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EXDEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %124

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = call i32 @igrab(%struct.inode* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ESTALE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %124

31:                                               ; preds = %24
  %32 = load %struct.super_block*, %struct.super_block** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = ptrtoint %struct.inode* %33 to i64
  %35 = load i32, i32* @ecryptfs_inode_test, align 4
  %36 = load i32, i32* @ecryptfs_inode_set, align 4
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = call %struct.inode* @iget5_locked(%struct.super_block* %32, i64 %34, i32 %35, i32 %36, %struct.inode* %37)
  store %struct.inode* %38, %struct.inode** %10, align 8
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = icmp ne %struct.inode* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @EACCES, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call i32 @iput(%struct.inode* %44)
  br label %124

46:                                               ; preds = %31
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I_NEW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = call i32 @unlock_new_inode(%struct.inode* %54)
  br label %59

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call i32 @iput(%struct.inode* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @S_ISLNK(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 5
  store i32* @ecryptfs_symlink_iops, i32** %67, align 8
  br label %78

68:                                               ; preds = %59
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @S_ISDIR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 5
  store i32* @ecryptfs_dir_iops, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @S_ISDIR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 4
  store i32* @ecryptfs_dir_fops, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @special_file(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = load %struct.inode*, %struct.inode** %9, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @init_special_inode(%struct.inode* %94, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %87
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  store i32* @ecryptfs_dops, i32** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = call i32 @fsstack_copy_attr_all(%struct.inode* %105, %struct.inode* %106, i32* null)
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = call i32 @fsstack_copy_inode_size(%struct.inode* %108, %struct.inode* %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @ECRYPTFS_INTERPOSE_FLAG_D_ADD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %102
  %116 = load %struct.dentry*, %struct.dentry** %6, align 8
  %117 = load %struct.inode*, %struct.inode** %10, align 8
  %118 = call i32 @d_add(%struct.dentry* %116, %struct.inode* %117)
  br label %123

119:                                              ; preds = %102
  %120 = load %struct.dentry*, %struct.dentry** %6, align 8
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = call i32 @d_instantiate(%struct.dentry* %120, %struct.inode* %121)
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %41, %28, %21
  %125 = load i32, i32* %11, align 4
  ret i32 %125
}

declare dso_local i64 @ecryptfs_superblock_to_lower(%struct.super_block*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @special_file(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @fsstack_copy_attr_all(%struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
