; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstat = type { i32 }
%struct.v9fs_session_info = type { i64 }
%struct.p9_fid = type opaque
%struct.p9_wstat = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dentry: %p\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)* @v9fs_vfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v9fs_session_info*, align 8
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca %struct.p9_wstat*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.kstat* %2, %struct.kstat** %7, align 8
  %12 = load i32, i32* @P9_DEBUG_VFS, align 4
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i32 @P9_DPRINTK(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.dentry* %13)
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.TYPE_4__* %19)
  store %struct.v9fs_session_info* %20, %struct.v9fs_session_info** %9, align 8
  %21 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %22 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CACHE_LOOSE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  %28 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CACHE_FSCACHE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %3
  %33 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = load %struct.kstat*, %struct.kstat** %7, align 8
  %36 = call i32 @simple_getattr(%struct.vfsmount* %33, %struct.dentry* %34, %struct.kstat* %35)
  store i32 %36, i32* %4, align 4
  br label %77

37:                                               ; preds = %26
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = call %struct.p9_wstat* @v9fs_fid_lookup(%struct.dentry* %38)
  %40 = bitcast %struct.p9_wstat* %39 to %struct.p9_fid*
  store %struct.p9_fid* %40, %struct.p9_fid** %10, align 8
  %41 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %42 = bitcast %struct.p9_fid* %41 to %struct.p9_wstat*
  %43 = call i64 @IS_ERR(%struct.p9_wstat* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %47 = bitcast %struct.p9_fid* %46 to %struct.p9_wstat*
  %48 = call i32 @PTR_ERR(%struct.p9_wstat* %47)
  store i32 %48, i32* %4, align 4
  br label %77

49:                                               ; preds = %37
  %50 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %51 = bitcast %struct.p9_fid* %50 to %struct.p9_wstat*
  %52 = call %struct.p9_wstat* @p9_client_stat(%struct.p9_wstat* %51)
  store %struct.p9_wstat* %52, %struct.p9_wstat** %11, align 8
  %53 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %54 = call i64 @IS_ERR(%struct.p9_wstat* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %58 = call i32 @PTR_ERR(%struct.p9_wstat* %57)
  store i32 %58, i32* %4, align 4
  br label %77

59:                                               ; preds = %49
  %60 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @v9fs_stat2inode(%struct.p9_wstat* %60, %struct.TYPE_4__* %63, i32 %68)
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.kstat*, %struct.kstat** %7, align 8
  %74 = call i32 @generic_fillattr(%struct.TYPE_4__* %72, %struct.kstat* %73)
  %75 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %76 = call i32 @kfree(%struct.p9_wstat* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %59, %56, %45, %32
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.dentry*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.TYPE_4__*) #1

declare dso_local i32 @simple_getattr(%struct.vfsmount*, %struct.dentry*, %struct.kstat*) #1

declare dso_local %struct.p9_wstat* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_wstat*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_wstat*) #1

declare dso_local %struct.p9_wstat* @p9_client_stat(%struct.p9_wstat*) #1

declare dso_local i32 @v9fs_stat2inode(%struct.p9_wstat*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @generic_fillattr(%struct.TYPE_4__*, %struct.kstat*) #1

declare dso_local i32 @kfree(%struct.p9_wstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
