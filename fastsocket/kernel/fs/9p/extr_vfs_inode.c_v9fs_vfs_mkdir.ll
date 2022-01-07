; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"name %s\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@P9_OREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @v9fs_vfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v9fs_session_info*, align 8
  %10 = alloca %struct.p9_fid*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @P9_DEBUG_VFS, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @P9_DPRINTK(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %17)
  store %struct.v9fs_session_info* %18, %struct.v9fs_session_info** %9, align 8
  %19 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @P9_OREAD, align 4
  %29 = call %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info* %24, %struct.inode* %25, %struct.dentry* %26, i32* null, i32 %27, i32 %28)
  store %struct.p9_fid* %29, %struct.p9_fid** %10, align 8
  %30 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %31 = call i64 @IS_ERR(%struct.p9_fid* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.p9_fid* %34)
  store i32 %35, i32* %7, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %10, align 8
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %38 = icmp ne %struct.p9_fid* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %41 = call i32 @p9_client_clunk(%struct.p9_fid* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info*, %struct.inode*, %struct.dentry*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
