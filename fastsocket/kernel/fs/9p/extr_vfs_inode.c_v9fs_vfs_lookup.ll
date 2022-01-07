; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__, %struct.super_block* }
%struct.TYPE_4__ = type { i64 }
%struct.super_block = type { i32 }
%struct.dentry = type { i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.nameidata = type { i32 }
%struct.v9fs_session_info = type { i64 }
%struct.p9_fid = type { %struct.TYPE_4__, %struct.super_block* }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dir: %p dentry: (%s) %p nameidata: %p\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@v9fs_cached_dentry_operations = common dso_local global i32 0, align 4
@v9fs_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @v9fs_vfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @v9fs_vfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.v9fs_session_info*, align 8
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca %struct.p9_fid*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @P9_DEBUG_VFS, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = bitcast %struct.inode* %16 to %struct.p9_fid*
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %24 = call i32 @P9_DPRINTK(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.p9_fid* %17, i64 %21, %struct.dentry* %22, %struct.nameidata* %23)
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = bitcast %struct.inode* %28 to %struct.p9_fid*
  %30 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid* %29)
  store %struct.v9fs_session_info* %30, %struct.v9fs_session_info** %9, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.p9_fid* @v9fs_fid_lookup(i32 %33)
  store %struct.p9_fid* %34, %struct.p9_fid** %10, align 8
  %35 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %36 = call i64 @IS_ERR(%struct.p9_fid* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %40 = call %struct.dentry* @ERR_CAST(%struct.p9_fid* %39)
  store %struct.dentry* %40, %struct.dentry** %4, align 8
  br label %115

41:                                               ; preds = %3
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %13, align 8
  %47 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %48 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %47, i32 1, i8** %13, i32 1)
  store %struct.p9_fid* %48, %struct.p9_fid** %11, align 8
  %49 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %50 = call i64 @IS_ERR(%struct.p9_fid* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %54 = call i32 @PTR_ERR(%struct.p9_fid* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = call i32 @d_add(%struct.dentry* %60, %struct.p9_fid* null)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %115

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = call %struct.dentry* @ERR_PTR(i32 %63)
  store %struct.dentry* %64, %struct.dentry** %4, align 8
  br label %115

65:                                               ; preds = %41
  %66 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %67 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load %struct.super_block*, %struct.super_block** %69, align 8
  %71 = call %struct.p9_fid* @v9fs_inode_from_fid(%struct.v9fs_session_info* %66, %struct.p9_fid* %67, %struct.super_block* %70)
  %72 = bitcast %struct.p9_fid* %71 to %struct.inode*
  store %struct.inode* %72, %struct.inode** %12, align 8
  %73 = load %struct.inode*, %struct.inode** %12, align 8
  %74 = bitcast %struct.inode* %73 to %struct.p9_fid*
  %75 = call i64 @IS_ERR(%struct.p9_fid* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load %struct.inode*, %struct.inode** %12, align 8
  %79 = bitcast %struct.inode* %78 to %struct.p9_fid*
  %80 = call i32 @PTR_ERR(%struct.p9_fid* %79)
  store i32 %80, i32* %14, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  br label %110

81:                                               ; preds = %65
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %84 = call i32 @v9fs_fid_add(%struct.dentry* %82, %struct.p9_fid* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %110

88:                                               ; preds = %81
  %89 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %90 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %96 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.dentry*, %struct.dentry** %6, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 0
  store i32* @v9fs_cached_dentry_operations, i32** %101, align 8
  br label %105

102:                                              ; preds = %94, %88
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 0
  store i32* @v9fs_dentry_operations, i32** %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.dentry*, %struct.dentry** %6, align 8
  %107 = load %struct.inode*, %struct.inode** %12, align 8
  %108 = bitcast %struct.inode* %107 to %struct.p9_fid*
  %109 = call i32 @d_add(%struct.dentry* %106, %struct.p9_fid* %108)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %115

110:                                              ; preds = %87, %77
  %111 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %112 = call i32 @p9_client_clunk(%struct.p9_fid* %111)
  %113 = load i32, i32* %14, align 4
  %114 = call %struct.dentry* @ERR_PTR(i32 %113)
  store %struct.dentry* %114, %struct.dentry** %4, align 8
  br label %115

115:                                              ; preds = %110, %105, %62, %59, %38
  %116 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %116
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_fid*, i64, %struct.dentry*, %struct.nameidata*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.p9_fid* @v9fs_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, %struct.super_block*) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
