; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_vfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }
%struct.p9_wstat = type { i32, i32, i32, i32, i32, i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @v9fs_vfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v9fs_session_info*, align 8
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca %struct.p9_wstat, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load i32, i32* @P9_DEBUG_VFS, align 4
  %11 = call i32 @P9_DPRINTK(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(i32 %16)
  store %struct.v9fs_session_info* %17, %struct.v9fs_session_info** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %18)
  store %struct.p9_fid* %19, %struct.p9_fid** %8, align 8
  %20 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %21 = call i64 @IS_ERR(%struct.p9_fid* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %25 = call i32 @PTR_ERR(%struct.p9_fid* %24)
  store i32 %25, i32* %3, align 4
  br label %121

26:                                               ; preds = %2
  %27 = call i32 @v9fs_blank_wstat(%struct.p9_wstat* %9)
  %28 = load %struct.iattr*, %struct.iattr** %5, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATTR_MODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %36 = load %struct.iattr*, %struct.iattr** %5, align 8
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %35, i32 %38)
  %40 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %26
  %42 = load %struct.iattr*, %struct.iattr** %5, align 8
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATTR_MTIME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.iattr*, %struct.iattr** %5, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.iattr*, %struct.iattr** %5, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATTR_ATIME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.iattr*, %struct.iattr** %5, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.iattr*, %struct.iattr** %5, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATTR_SIZE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.iattr*, %struct.iattr** %5, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %81 = call i64 @v9fs_extended(%struct.v9fs_session_info* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %79
  %84 = load %struct.iattr*, %struct.iattr** %5, align 8
  %85 = getelementptr inbounds %struct.iattr, %struct.iattr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATTR_UID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.iattr*, %struct.iattr** %5, align 8
  %92 = getelementptr inbounds %struct.iattr, %struct.iattr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.iattr*, %struct.iattr** %5, align 8
  %97 = getelementptr inbounds %struct.iattr, %struct.iattr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ATTR_GID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.iattr*, %struct.iattr** %5, align 8
  %104 = getelementptr inbounds %struct.iattr, %struct.iattr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %95
  br label %108

108:                                              ; preds = %107, %79
  %109 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %110 = call i32 @p9_client_wstat(%struct.p9_fid* %109, %struct.p9_wstat* %9)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.dentry*, %struct.dentry** %4, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iattr*, %struct.iattr** %5, align 8
  %118 = call i32 @inode_setattr(i32 %116, %struct.iattr* %117)
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %23
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(i32) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_blank_wstat(%struct.p9_wstat*) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local i64 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local i32 @p9_client_wstat(%struct.p9_fid*, %struct.p9_wstat*) #1

declare dso_local i32 @inode_setattr(i32, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
