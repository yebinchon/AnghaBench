; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_file_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { i32* }
%struct.dlmfs_inode_private = type { i32 }
%struct.dlmfs_filp_private = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"close called on inode %lu\0A\00", align 1
@LKM_IVMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dlmfs_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmfs_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlmfs_inode_private*, align 8
  %8 = alloca %struct.dlmfs_filp_private*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %9)
  store %struct.dlmfs_inode_private* %10, %struct.dlmfs_inode_private** %7, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.dlmfs_filp_private*
  store %struct.dlmfs_filp_private* %14, %struct.dlmfs_filp_private** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %6, align 4
  %27 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %8, align 8
  %28 = icmp ne %struct.dlmfs_filp_private* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %8, align 8
  %31 = getelementptr inbounds %struct.dlmfs_filp_private, %struct.dlmfs_filp_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LKM_IVMODE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %7, align 8
  %38 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @user_dlm_cluster_unlock(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.dlmfs_filp_private*, %struct.dlmfs_filp_private** %8, align 8
  %43 = call i32 @kfree(%struct.dlmfs_filp_private* %42)
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %41, %22
  ret i32 0
}

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @user_dlm_cluster_unlock(i32*, i32) #1

declare dso_local i32 @kfree(%struct.dlmfs_filp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
