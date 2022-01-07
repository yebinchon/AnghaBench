; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_server = type { i32, i32 }
%struct.nfs_setattrargs = type { i32, i32, i32, %struct.nfs_server*, %struct.iattr*, i32 }
%struct.nfs_setattrres = type { i32, %struct.nfs_server*, %struct.nfs_fattr* }
%struct.rpc_message = type { %struct.rpc_cred*, %struct.nfs_setattrres*, %struct.nfs_setattrargs*, i32* }
%struct.nfs_lockowner = type { i32, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SETATTR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@zero_stateid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.rpc_cred*, %struct.nfs_fattr*, %struct.iattr*, %struct.nfs4_state*)* @_nfs4_do_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_do_setattr(%struct.inode* %0, %struct.rpc_cred* %1, %struct.nfs_fattr* %2, %struct.iattr* %3, %struct.nfs4_state* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.rpc_cred*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca %struct.iattr*, align 8
  %10 = alloca %struct.nfs4_state*, align 8
  %11 = alloca %struct.nfs_server*, align 8
  %12 = alloca %struct.nfs_setattrargs, align 8
  %13 = alloca %struct.nfs_setattrres, align 8
  %14 = alloca %struct.rpc_message, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfs_lockowner, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store %struct.iattr* %3, %struct.iattr** %9, align 8
  store %struct.nfs4_state* %4, %struct.nfs4_state** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %11, align 8
  %20 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 2
  %23 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %24 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 8
  %26 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 3
  %27 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  store %struct.nfs_server* %27, %struct.nfs_server** %26, align 8
  %28 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 4
  %29 = load %struct.iattr*, %struct.iattr** %9, align 8
  store %struct.iattr* %29, %struct.iattr** %28, align 8
  %30 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 5
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @NFS_FH(%struct.inode* %31)
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.nfs_setattrres, %struct.nfs_setattrres* %13, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.nfs_setattrres, %struct.nfs_setattrres* %13, i32 0, i32 1
  %35 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  store %struct.nfs_server* %35, %struct.nfs_server** %34, align 8
  %36 = getelementptr inbounds %struct.nfs_setattrres, %struct.nfs_setattrres* %13, i32 0, i32 2
  %37 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  store %struct.nfs_fattr* %37, %struct.nfs_fattr** %36, align 8
  %38 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  %39 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  store %struct.rpc_cred* %39, %struct.rpc_cred** %38, align 8
  %40 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  store %struct.nfs_setattrres* %13, %struct.nfs_setattrres** %40, align 8
  %41 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  store %struct.nfs_setattrargs* %12, %struct.nfs_setattrargs** %41, align 8
  %42 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 3
  %43 = load i32*, i32** @nfs4_procedures, align 8
  %44 = load i64, i64* @NFSPROC4_CLNT_SETATTR, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %42, align 8
  %46 = load i64, i64* @jiffies, align 8
  store i64 %46, i64* %15, align 8
  %47 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %48 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %47)
  %49 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %50 = icmp ne %struct.nfs4_state* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %5
  %52 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %53 = call i64 @nfs4_valid_open_stateid(%struct.nfs4_state* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nfs_lockowner, %struct.nfs_lockowner* %17, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 4
  %60 = getelementptr inbounds %struct.nfs_lockowner, %struct.nfs_lockowner* %17, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %60, align 4
  %64 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 1
  %65 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %66 = load i32, i32* @FMODE_WRITE, align 4
  %67 = call i32 @nfs4_select_rw_stateid(i32* %64, %struct.nfs4_state* %65, i32 %66, %struct.nfs_lockowner* %17)
  br label %79

68:                                               ; preds = %51, %5
  %69 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 1
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = load i32, i32* @FMODE_WRITE, align 4
  %72 = call i64 @nfs4_copy_delegation_stateid(i32* %69, %struct.inode* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %78

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 1
  %77 = call i32 @nfs4_stateid_copy(i32* %76, i32* @zero_stateid)
  br label %78

78:                                               ; preds = %75, %74
  br label %79

79:                                               ; preds = %78, %55
  %80 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %84 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %12, i32 0, i32 0
  %85 = getelementptr inbounds %struct.nfs_setattrres, %struct.nfs_setattrres* %13, i32 0, i32 0
  %86 = call i32 @nfs4_call_sync(i32 %82, %struct.nfs_server* %83, %struct.rpc_message* %14, i32* %84, i32* %85, i32 1)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load %struct.nfs4_state*, %struct.nfs4_state** %10, align 8
  %91 = icmp ne %struct.nfs4_state* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @renew_lease(%struct.nfs_server* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %89, %79
  %97 = load i32, i32* %16, align 4
  ret i32 %97
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i64 @nfs4_valid_open_stateid(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_select_rw_stateid(i32*, %struct.nfs4_state*, i32, %struct.nfs_lockowner*) #1

declare dso_local i64 @nfs4_copy_delegation_stateid(i32*, %struct.inode*, i32) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @renew_lease(%struct.nfs_server*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
