; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32* }
%struct.dlmfs_inode_private = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"inode %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"we're a directory, ip->ip_dlm = 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @dlmfs_clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlmfs_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlmfs_inode_private*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = icmp ne %struct.inode* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %54

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %13)
  store %struct.dlmfs_inode_private* %14, %struct.dlmfs_inode_private** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @S_ISREG(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %8
  %21 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %4, align 8
  %22 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %21, i32 0, i32 2
  %23 = call i32 @user_dlm_destroy_lock(i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %4, align 8
  %31 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @iput(i32* %32)
  br label %49

34:                                               ; preds = %8
  %35 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %4, align 8
  %36 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %4, align 8
  %40 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %4, align 8
  %45 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @user_dlm_unregister_context(i32* %46)
  br label %48

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %4, align 8
  %51 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %4, align 8
  %53 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %49, %7
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32*) #1

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @user_dlm_destroy_lock(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @iput(i32*) #1

declare dso_local i32 @user_dlm_unregister_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
