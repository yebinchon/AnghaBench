; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_mkspecial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_mkspecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }

@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"not extended\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@P9_OREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i8*)* @v9fs_vfs_mkspecial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_mkspecial(%struct.inode* %0, %struct.dentry* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v9fs_session_info*, align 8
  %12 = alloca %struct.p9_fid*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %13)
  store %struct.v9fs_session_info* %14, %struct.v9fs_session_info** %11, align 8
  %15 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %16 = call i32 @v9fs_extended(%struct.v9fs_session_info* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %20 = call i32 @P9_DPRINTK(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %43

23:                                               ; preds = %4
  %24 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @P9_OREAD, align 4
  %33 = call %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info* %27, %struct.inode* %28, %struct.dentry* %29, i8* %30, i32 %31, i32 %32)
  store %struct.p9_fid* %33, %struct.p9_fid** %12, align 8
  %34 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %35 = call i64 @IS_ERR(%struct.p9_fid* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %39 = call i32 @PTR_ERR(%struct.p9_fid* %38)
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %23
  %41 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %42 = call i32 @p9_client_clunk(%struct.p9_fid* %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %37, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info*, %struct.inode*, %struct.dentry*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
