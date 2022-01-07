; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_super.c_v9fs_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_super.c_v9fs_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }
%struct.super_block = type { i32, %struct.dentry* }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, %struct.dentry* }
%struct.v9fs_session_info = type { i32, %struct.dentry* }
%struct.p9_wstat = type { i32, %struct.dentry* }
%struct.p9_fid = type { i32, %struct.dentry* }

@S_IRWXUGO = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v9fs_set_super = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c" simple set mount, return 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @v9fs_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.v9fs_session_info*, align 8
  %16 = alloca %struct.p9_wstat*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.p9_fid*, align 8
  %19 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  store %struct.super_block* null, %struct.super_block** %12, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  store %struct.dentry* null, %struct.dentry** %14, align 8
  store %struct.v9fs_session_info* null, %struct.v9fs_session_info** %15, align 8
  store %struct.p9_wstat* null, %struct.p9_wstat** %16, align 8
  %20 = load i32, i32* @S_IRWXUGO, align 4
  %21 = load i32, i32* @S_ISVTX, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* @P9_DEBUG_VFS, align 4
  %24 = call i32 @P9_DPRINTK(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.v9fs_session_info* @kzalloc(i32 16, i32 %25)
  store %struct.v9fs_session_info* %26, %struct.v9fs_session_info** %15, align 8
  %27 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %28 = icmp ne %struct.v9fs_session_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %170

32:                                               ; preds = %5
  %33 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call %struct.v9fs_session_info* @v9fs_session_init(%struct.v9fs_session_info* %33, i8* %34, i8* %35)
  %37 = bitcast %struct.v9fs_session_info* %36 to %struct.p9_fid*
  store %struct.p9_fid* %37, %struct.p9_fid** %18, align 8
  %38 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %39 = bitcast %struct.p9_fid* %38 to %struct.v9fs_session_info*
  %40 = call i64 @IS_ERR(%struct.v9fs_session_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %44 = bitcast %struct.p9_fid* %43 to %struct.v9fs_session_info*
  %45 = call i32 @PTR_ERR(%struct.v9fs_session_info* %44)
  store i32 %45, i32* %19, align 4
  br label %153

46:                                               ; preds = %32
  %47 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %48 = bitcast %struct.p9_fid* %47 to %struct.v9fs_session_info*
  %49 = call %struct.v9fs_session_info* @p9_client_stat(%struct.v9fs_session_info* %48)
  %50 = bitcast %struct.v9fs_session_info* %49 to %struct.p9_wstat*
  store %struct.p9_wstat* %50, %struct.p9_wstat** %16, align 8
  %51 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %52 = bitcast %struct.p9_wstat* %51 to %struct.v9fs_session_info*
  %53 = call i64 @IS_ERR(%struct.v9fs_session_info* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %57 = bitcast %struct.p9_wstat* %56 to %struct.v9fs_session_info*
  %58 = call i32 @PTR_ERR(%struct.v9fs_session_info* %57)
  store i32 %58, i32* %19, align 4
  br label %149

59:                                               ; preds = %46
  %60 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %61 = load i32, i32* @v9fs_set_super, align 4
  %62 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %63 = call %struct.v9fs_session_info* @sget(%struct.file_system_type* %60, i32* null, i32 %61, %struct.v9fs_session_info* %62)
  %64 = bitcast %struct.v9fs_session_info* %63 to %struct.super_block*
  store %struct.super_block* %64, %struct.super_block** %12, align 8
  %65 = load %struct.super_block*, %struct.super_block** %12, align 8
  %66 = bitcast %struct.super_block* %65 to %struct.v9fs_session_info*
  %67 = call i64 @IS_ERR(%struct.v9fs_session_info* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.super_block*, %struct.super_block** %12, align 8
  %71 = bitcast %struct.super_block* %70 to %struct.v9fs_session_info*
  %72 = call i32 @PTR_ERR(%struct.v9fs_session_info* %71)
  store i32 %72, i32* %19, align 4
  br label %142

73:                                               ; preds = %59
  %74 = load %struct.super_block*, %struct.super_block** %12, align 8
  %75 = bitcast %struct.super_block* %74 to %struct.v9fs_session_info*
  %76 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @v9fs_fill_super(%struct.v9fs_session_info* %75, %struct.v9fs_session_info* %76, i32 %77, i8* %78)
  %80 = load %struct.super_block*, %struct.super_block** %12, align 8
  %81 = bitcast %struct.super_block* %80 to %struct.v9fs_session_info*
  %82 = load i32, i32* @S_IFDIR, align 4
  %83 = load i32, i32* %17, align 4
  %84 = or i32 %82, %83
  %85 = call %struct.v9fs_session_info* @v9fs_get_inode(%struct.v9fs_session_info* %81, i32 %84)
  %86 = bitcast %struct.v9fs_session_info* %85 to %struct.inode*
  store %struct.inode* %86, %struct.inode** %13, align 8
  %87 = load %struct.inode*, %struct.inode** %13, align 8
  %88 = bitcast %struct.inode* %87 to %struct.v9fs_session_info*
  %89 = call i64 @IS_ERR(%struct.v9fs_session_info* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %73
  %92 = load %struct.inode*, %struct.inode** %13, align 8
  %93 = bitcast %struct.inode* %92 to %struct.v9fs_session_info*
  %94 = call i32 @PTR_ERR(%struct.v9fs_session_info* %93)
  store i32 %94, i32* %19, align 4
  br label %159

95:                                               ; preds = %73
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = bitcast %struct.inode* %96 to %struct.v9fs_session_info*
  %98 = call %struct.dentry* @d_alloc_root(%struct.v9fs_session_info* %97)
  store %struct.dentry* %98, %struct.dentry** %14, align 8
  %99 = load %struct.dentry*, %struct.dentry** %14, align 8
  %100 = icmp ne %struct.dentry* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %13, align 8
  %103 = bitcast %struct.inode* %102 to %struct.v9fs_session_info*
  %104 = call i32 @iput(%struct.v9fs_session_info* %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %19, align 4
  br label %159

107:                                              ; preds = %95
  %108 = load %struct.dentry*, %struct.dentry** %14, align 8
  %109 = load %struct.super_block*, %struct.super_block** %12, align 8
  %110 = getelementptr inbounds %struct.super_block, %struct.super_block* %109, i32 0, i32 1
  store %struct.dentry* %108, %struct.dentry** %110, align 8
  %111 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %112 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %111, i32 0, i32 0
  %113 = call i32 @v9fs_qid2ino(i32* %112)
  %114 = load %struct.dentry*, %struct.dentry** %14, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %119 = bitcast %struct.p9_wstat* %118 to %struct.v9fs_session_info*
  %120 = load %struct.dentry*, %struct.dentry** %14, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load %struct.super_block*, %struct.super_block** %12, align 8
  %124 = bitcast %struct.super_block* %123 to %struct.v9fs_session_info*
  %125 = call i32 @v9fs_stat2inode(%struct.v9fs_session_info* %119, %struct.TYPE_2__* %122, %struct.v9fs_session_info* %124)
  %126 = load %struct.dentry*, %struct.dentry** %14, align 8
  %127 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %128 = bitcast %struct.p9_fid* %127 to %struct.v9fs_session_info*
  %129 = call i32 @v9fs_fid_add(%struct.dentry* %126, %struct.v9fs_session_info* %128)
  %130 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %131 = bitcast %struct.p9_wstat* %130 to %struct.v9fs_session_info*
  %132 = call i32 @p9stat_free(%struct.v9fs_session_info* %131)
  %133 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %134 = bitcast %struct.p9_wstat* %133 to %struct.v9fs_session_info*
  %135 = call i32 @kfree(%struct.v9fs_session_info* %134)
  %136 = load i32, i32* @P9_DEBUG_VFS, align 4
  %137 = call i32 @P9_DPRINTK(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %138 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %139 = load %struct.super_block*, %struct.super_block** %12, align 8
  %140 = bitcast %struct.super_block* %139 to %struct.v9fs_session_info*
  %141 = call i32 @simple_set_mnt(%struct.vfsmount* %138, %struct.v9fs_session_info* %140)
  store i32 0, i32* %6, align 4
  br label %170

142:                                              ; preds = %69
  %143 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %144 = bitcast %struct.p9_wstat* %143 to %struct.v9fs_session_info*
  %145 = call i32 @p9stat_free(%struct.v9fs_session_info* %144)
  %146 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %147 = bitcast %struct.p9_wstat* %146 to %struct.v9fs_session_info*
  %148 = call i32 @kfree(%struct.v9fs_session_info* %147)
  br label %149

149:                                              ; preds = %142, %55
  %150 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %151 = bitcast %struct.p9_fid* %150 to %struct.v9fs_session_info*
  %152 = call i32 @p9_client_clunk(%struct.v9fs_session_info* %151)
  br label %153

153:                                              ; preds = %149, %42
  %154 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %155 = call i32 @v9fs_session_close(%struct.v9fs_session_info* %154)
  %156 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %157 = call i32 @kfree(%struct.v9fs_session_info* %156)
  %158 = load i32, i32* %19, align 4
  store i32 %158, i32* %6, align 4
  br label %170

159:                                              ; preds = %101, %91
  %160 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %161 = bitcast %struct.p9_wstat* %160 to %struct.v9fs_session_info*
  %162 = call i32 @p9stat_free(%struct.v9fs_session_info* %161)
  %163 = load %struct.p9_wstat*, %struct.p9_wstat** %16, align 8
  %164 = bitcast %struct.p9_wstat* %163 to %struct.v9fs_session_info*
  %165 = call i32 @kfree(%struct.v9fs_session_info* %164)
  %166 = load %struct.super_block*, %struct.super_block** %12, align 8
  %167 = bitcast %struct.super_block* %166 to %struct.v9fs_session_info*
  %168 = call i32 @deactivate_locked_super(%struct.v9fs_session_info* %167)
  %169 = load i32, i32* %19, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %159, %153, %107, %29
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local %struct.v9fs_session_info* @kzalloc(i32, i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_session_init(%struct.v9fs_session_info*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.v9fs_session_info*) #1

declare dso_local i32 @PTR_ERR(%struct.v9fs_session_info*) #1

declare dso_local %struct.v9fs_session_info* @p9_client_stat(%struct.v9fs_session_info*) #1

declare dso_local %struct.v9fs_session_info* @sget(%struct.file_system_type*, i32*, i32, %struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_fill_super(%struct.v9fs_session_info*, %struct.v9fs_session_info*, i32, i8*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_get_inode(%struct.v9fs_session_info*, i32) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.v9fs_session_info*) #1

declare dso_local i32 @iput(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_qid2ino(i32*) #1

declare dso_local i32 @v9fs_stat2inode(%struct.v9fs_session_info*, %struct.TYPE_2__*, %struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.v9fs_session_info*) #1

declare dso_local i32 @p9stat_free(%struct.v9fs_session_info*) #1

declare dso_local i32 @kfree(%struct.v9fs_session_info*) #1

declare dso_local i32 @simple_set_mnt(%struct.vfsmount*, %struct.v9fs_session_info*) #1

declare dso_local i32 @p9_client_clunk(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_session_close(%struct.v9fs_session_info*) #1

declare dso_local i32 @deactivate_locked_super(%struct.v9fs_session_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
