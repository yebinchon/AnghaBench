; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__, i32, %struct.inode* }
%struct.TYPE_2__ = type { i64 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }
%struct.p9_wstat = type { i8*, i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"old dir and new dir are different\0A\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @v9fs_vfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.v9fs_session_info*, align 8
  %12 = alloca %struct.p9_fid*, align 8
  %13 = alloca %struct.p9_fid*, align 8
  %14 = alloca %struct.p9_fid*, align 8
  %15 = alloca %struct.p9_wstat, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %17 = load i32, i32* @P9_DEBUG_VFS, align 4
  %18 = call i32 @P9_DPRINTK(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 2
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %22)
  store %struct.v9fs_session_info* %23, %struct.v9fs_session_info** %11, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %24)
  store %struct.p9_fid* %25, %struct.p9_fid** %12, align 8
  %26 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %27 = call i64 @IS_ERR(%struct.p9_fid* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %31 = call i32 @PTR_ERR(%struct.p9_fid* %30)
  store i32 %31, i32* %5, align 4
  br label %88

32:                                               ; preds = %4
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.p9_fid* @v9fs_fid_clone(i32 %35)
  store %struct.p9_fid* %36, %struct.p9_fid** %13, align 8
  %37 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %38 = call i64 @IS_ERR(%struct.p9_fid* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %42 = call i32 @PTR_ERR(%struct.p9_fid* %41)
  store i32 %42, i32* %16, align 4
  br label %86

43:                                               ; preds = %32
  %44 = load %struct.dentry*, %struct.dentry** %9, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.p9_fid* @v9fs_fid_clone(i32 %46)
  store %struct.p9_fid* %47, %struct.p9_fid** %14, align 8
  %48 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %49 = call i64 @IS_ERR(%struct.p9_fid* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %53 = call i32 @PTR_ERR(%struct.p9_fid* %52)
  store i32 %53, i32* %16, align 4
  br label %83

54:                                               ; preds = %43
  %55 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %56 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %55, i32 0, i32 0
  %57 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %58 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %57, i32 0, i32 0
  %59 = call i64 @memcmp(i32* %56, i32* %58, i32 4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %63 = call i32 @P9_DPRINTK(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EXDEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %16, align 4
  br label %80

66:                                               ; preds = %54
  %67 = call i32 @v9fs_blank_wstat(%struct.p9_wstat* %15)
  %68 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %69 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %15, i32 0, i32 1
  store i32 %70, i32* %71, align 8
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %15, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %79 = call i32 @p9_client_wstat(%struct.p9_fid* %78, %struct.p9_wstat* %15)
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %66, %61
  %81 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %82 = call i32 @p9_client_clunk(%struct.p9_fid* %81)
  br label %83

83:                                               ; preds = %80, %51
  %84 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %85 = call i32 @p9_client_clunk(%struct.p9_fid* %84)
  br label %86

86:                                               ; preds = %83, %40
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %29
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_clone(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @v9fs_blank_wstat(%struct.p9_wstat*) #1

declare dso_local i32 @p9_client_wstat(%struct.p9_fid*, %struct.p9_wstat*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
