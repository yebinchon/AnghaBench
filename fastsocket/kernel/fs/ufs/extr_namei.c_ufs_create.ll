; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"BEGIN\0A\00", align 1
@ufs_file_inode_operations = common dso_local global i32 0, align 4
@ufs_file_operations = common dso_local global i32 0, align 4
@ufs_aops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"END: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @ufs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nameidata* %3, %struct.nameidata** %8, align 8
  %11 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.inode* @ufs_new_inode(%struct.inode* %12, i32 %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = call i32 @PTR_ERR(%struct.inode* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = call i32 @IS_ERR(%struct.inode* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  store i32* @ufs_file_inode_operations, i32** %22, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  store i32* @ufs_file_operations, i32** %24, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* @ufs_aops, i32** %28, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call i32 @mark_inode_dirty(%struct.inode* %29)
  %31 = call i32 (...) @lock_kernel()
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call i32 @ufs_add_nondir(%struct.dentry* %32, %struct.inode* %33)
  store i32 %34, i32* %10, align 4
  %35 = call i32 (...) @unlock_kernel()
  br label %36

36:                                               ; preds = %20, %4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.inode* @ufs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ufs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
