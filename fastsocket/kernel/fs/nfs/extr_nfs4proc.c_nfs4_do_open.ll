; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_exception = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_EXEC = common dso_local global i32 0, align 4
@NFS4ERR_BAD_SEQID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"NFS: v4 server %s  returned a bad sequence-id error!\0A\00", align 1
@NFS4ERR_BAD_STATEID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_state* (%struct.inode*, %struct.dentry*, i32, i32, %struct.iattr*, %struct.rpc_cred*)* @nfs4_do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_state* @nfs4_do_open(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3, %struct.iattr* %4, %struct.rpc_cred* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr*, align 8
  %12 = alloca %struct.rpc_cred*, align 8
  %13 = alloca %struct.nfs_server*, align 8
  %14 = alloca %struct.nfs4_exception, align 4
  %15 = alloca %struct.nfs4_state*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.iattr* %4, %struct.iattr** %11, align 8
  store %struct.rpc_cred* %5, %struct.rpc_cred** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %17)
  store %struct.nfs_server* %18, %struct.nfs_server** %13, align 8
  %19 = bitcast %struct.nfs4_exception* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load i32, i32* @FMODE_READ, align 4
  %21 = load i32, i32* @FMODE_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FMODE_EXEC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %77, %6
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.iattr*, %struct.iattr** %11, align 8
  %33 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %34 = call i32 @_nfs4_do_open(%struct.inode* %28, %struct.dentry* %29, i32 %30, i32 %31, %struct.iattr* %32, %struct.rpc_cred* %33, %struct.nfs4_state** %15)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %81

38:                                               ; preds = %27
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @NFS4ERR_BAD_SEQID, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %14, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %77

52:                                               ; preds = %38
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @NFS4ERR_BAD_STATEID, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %14, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %77

59:                                               ; preds = %52
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %14, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %77

66:                                               ; preds = %59
  %67 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i64 @nfs4_clear_cap_atomic_open_v1(%struct.nfs_server* %67, i32 %68, %struct.nfs4_exception* %14)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %77

72:                                               ; preds = %66
  %73 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @nfs4_handle_exception(%struct.nfs_server* %73, i32 %74, %struct.nfs4_exception* %14)
  %76 = call %struct.nfs4_state* @ERR_PTR(i32 %75)
  store %struct.nfs4_state* %76, %struct.nfs4_state** %15, align 8
  br label %77

77:                                               ; preds = %72, %71, %64, %57, %43
  %78 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %14, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %27, label %81

81:                                               ; preds = %77, %37
  %82 = load %struct.nfs4_state*, %struct.nfs4_state** %15, align 8
  ret %struct.nfs4_state* %82
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_nfs4_do_open(%struct.inode*, %struct.dentry*, i32, i32, %struct.iattr*, %struct.rpc_cred*, %struct.nfs4_state**) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i64 @nfs4_clear_cap_atomic_open_v1(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local %struct.nfs4_state* @ERR_PTR(i32) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
