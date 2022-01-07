; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmfs.c_dlmfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_protocol_version = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.qstr }
%struct.qstr = type { i64, i32 }
%struct.dlmfs_inode_private = type { %struct.dlm_ctxt* }
%struct.dlm_ctxt = type { i32 }

@user_locking_protocol = common dso_local global %struct.dlm_protocol_version zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"mkdir %.*s\0A\00", align 1
@O2NM_MAX_NAME_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid domain name for directory.\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Error %d could not register domain \22%.*s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @dlmfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.dlmfs_inode_private*, align 8
  %11 = alloca %struct.dlm_ctxt*, align 8
  %12 = alloca %struct.dlm_protocol_version, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  store %struct.qstr* %14, %struct.qstr** %9, align 8
  %15 = bitcast %struct.dlm_protocol_version* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.dlm_protocol_version* @user_locking_protocol to i8*), i64 4, i1 false)
  %16 = load %struct.qstr*, %struct.qstr** %9, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.qstr*, %struct.qstr** %9, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %21)
  %23 = load %struct.qstr*, %struct.qstr** %9, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @O2NM_MAX_NAME_LEN, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @ML_ERROR, align 4
  %32 = call i32 (i32, i8*, ...) @mlog(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %78

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @S_IFDIR, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.inode* @dlmfs_get_inode(%struct.inode* %34, %struct.dentry* %35, i32 %38)
  store %struct.inode* %39, %struct.inode** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = icmp ne %struct.inode* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %78

47:                                               ; preds = %33
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %48)
  store %struct.dlmfs_inode_private* %49, %struct.dlmfs_inode_private** %10, align 8
  %50 = load %struct.qstr*, %struct.qstr** %9, align 8
  %51 = call %struct.dlm_ctxt* @user_dlm_register_context(%struct.qstr* %50, %struct.dlm_protocol_version* %12)
  store %struct.dlm_ctxt* %51, %struct.dlm_ctxt** %11, align 8
  %52 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %53 = call i64 @IS_ERR(%struct.dlm_ctxt* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %57 = call i32 @PTR_ERR(%struct.dlm_ctxt* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @ML_ERROR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.qstr*, %struct.qstr** %9, align 8
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.qstr*, %struct.qstr** %9, align 8
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @mlog(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %59, i64 %62, i32 %65)
  br label %78

67:                                               ; preds = %47
  %68 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %69 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %70 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %69, i32 0, i32 0
  store %struct.dlm_ctxt* %68, %struct.dlm_ctxt** %70, align 8
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call i32 @inc_nlink(%struct.inode* %71)
  %73 = load %struct.dentry*, %struct.dentry** %5, align 8
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i32 @d_instantiate(%struct.dentry* %73, %struct.inode* %74)
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = call i32 @dget(%struct.dentry* %76)
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %67, %55, %42, %28
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i32 @iput(%struct.inode* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mlog(i32, i8*, ...) #2

declare dso_local %struct.inode* @dlmfs_get_inode(%struct.inode*, %struct.dentry*, i32) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #2

declare dso_local %struct.dlm_ctxt* @user_dlm_register_context(%struct.qstr*, %struct.dlm_protocol_version*) #2

declare dso_local i64 @IS_ERR(%struct.dlm_ctxt*) #2

declare dso_local i32 @PTR_ERR(%struct.dlm_ctxt*) #2

declare dso_local i32 @inc_nlink(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @dget(%struct.dentry*) #2

declare dso_local i32 @iput(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
