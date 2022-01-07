; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_setclientid_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_setclientid_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i64, i32, i32 }
%struct.nfs4_setclientid_res = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.rpc_message = type { %struct.rpc_cred*, %struct.nfs_fsinfo*, %struct.nfs4_setclientid_res*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SETCLIENTID_CONFIRM = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_setclientid_confirm(%struct.nfs_client* %0, %struct.nfs4_setclientid_res* %1, %struct.rpc_cred* %2) #0 {
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.nfs4_setclientid_res*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.nfs_fsinfo, align 4
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.nfs4_setclientid_res* %1, %struct.nfs4_setclientid_res** %5, align 8
  store %struct.rpc_cred* %2, %struct.rpc_cred** %6, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  %12 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  store %struct.rpc_cred* %12, %struct.rpc_cred** %11, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  store %struct.nfs_fsinfo* %7, %struct.nfs_fsinfo** %13, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 2
  %15 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %5, align 8
  store %struct.nfs4_setclientid_res* %15, %struct.nfs4_setclientid_res** %14, align 8
  %16 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 3
  %17 = load i32*, i32** @nfs4_procedures, align 8
  %18 = load i64, i64* @NFSPROC4_CLNT_SETCLIENTID_CONFIRM, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %16, align 8
  %20 = load i64, i64* @jiffies, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %25 = call i32 @rpc_call_sync(i32 %23, %struct.rpc_message* %8, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %28, %3
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
