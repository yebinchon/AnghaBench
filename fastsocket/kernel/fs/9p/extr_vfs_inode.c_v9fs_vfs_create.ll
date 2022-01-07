; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { %struct.p9_fid* }
%struct.file = type { %struct.file* }

@LOOKUP_OPEN = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@v9fs_open_created = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @v9fs_vfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v9fs_session_info*, align 8
  %14 = alloca %struct.p9_fid*, align 8
  %15 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %16)
  store %struct.v9fs_session_info* %17, %struct.v9fs_session_info** %13, align 8
  %18 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %22 = icmp ne %struct.nameidata* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LOOKUP_OPEN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %39

37:                                               ; preds = %23, %4
  %38 = load i32, i32* @O_RDWR, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %46 = call i32 @v9fs_extended(%struct.v9fs_session_info* %45)
  %47 = call i32 @v9fs_uflags2omode(i32 %44, i32 %46)
  %48 = call %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info* %40, %struct.inode* %41, %struct.dentry* %42, i32* null, i32 %43, i32 %47)
  store %struct.p9_fid* %48, %struct.p9_fid** %14, align 8
  %49 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %50 = call i64 @IS_ERR(%struct.p9_fid* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %54 = call i32 @PTR_ERR(%struct.p9_fid* %53)
  store i32 %54, i32* %10, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  br label %88

55:                                               ; preds = %39
  %56 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %57 = icmp ne %struct.nameidata* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LOOKUP_OPEN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  %68 = load i32, i32* @v9fs_open_created, align 4
  %69 = call %struct.p9_fid* @lookup_instantiate_filp(%struct.nameidata* %66, %struct.dentry* %67, i32 %68)
  %70 = bitcast %struct.p9_fid* %69 to %struct.file*
  store %struct.file* %70, %struct.file** %15, align 8
  %71 = load %struct.file*, %struct.file** %15, align 8
  %72 = bitcast %struct.file* %71 to %struct.p9_fid*
  %73 = call i64 @IS_ERR(%struct.p9_fid* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.file*, %struct.file** %15, align 8
  %77 = bitcast %struct.file* %76 to %struct.p9_fid*
  %78 = call i32 @PTR_ERR(%struct.p9_fid* %77)
  store i32 %78, i32* %10, align 4
  br label %88

79:                                               ; preds = %65
  %80 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %81 = bitcast %struct.p9_fid* %80 to %struct.file*
  %82 = load %struct.file*, %struct.file** %15, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 0
  store %struct.file* %81, %struct.file** %83, align 8
  br label %87

84:                                               ; preds = %58, %55
  %85 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %86 = call i32 @p9_client_clunk(%struct.p9_fid* %85)
  br label %87

87:                                               ; preds = %84, %79
  store i32 0, i32* %5, align 4
  br label %96

88:                                               ; preds = %75, %52
  %89 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %90 = icmp ne %struct.p9_fid* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %93 = call i32 @p9_client_clunk(%struct.p9_fid* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %87
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info*, %struct.inode*, %struct.dentry*, i32*, i32, i32) #1

declare dso_local i32 @v9fs_uflags2omode(i32, i32) #1

declare dso_local i32 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @lookup_instantiate_filp(%struct.nameidata*, %struct.dentry*, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
