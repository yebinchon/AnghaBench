; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inode: %p dentry: %p rmdir: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @v9fs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_remove(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.v9fs_session_info*, align 8
  %10 = alloca %struct.p9_fid*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @P9_DEBUG_VFS, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @P9_DPRINTK(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.inode* %12, %struct.dentry* %13, i32 %14)
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %19)
  store %struct.v9fs_session_info* %20, %struct.v9fs_session_info** %9, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call %struct.p9_fid* @v9fs_fid_clone(%struct.dentry* %21)
  store %struct.p9_fid* %22, %struct.p9_fid** %10, align 8
  %23 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %24 = call i64 @IS_ERR(%struct.p9_fid* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %28 = call i32 @PTR_ERR(%struct.p9_fid* %27)
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %31 = call i32 @p9_client_remove(%struct.p9_fid* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_clone(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_remove(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
