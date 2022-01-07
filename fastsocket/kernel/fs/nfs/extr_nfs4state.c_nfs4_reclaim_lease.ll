; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_reclaim_lease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_reclaim_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.rpc_cred*, %struct.TYPE_2__* }
%struct.rpc_cred = type { i32 }
%struct.TYPE_2__ = type { %struct.nfs4_state_recovery_ops* }
%struct.nfs4_state_recovery_ops = type { i32 (%struct.nfs_client*, %struct.rpc_cred*)*, %struct.rpc_cred* (%struct.nfs_client*)* }

@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NFS4ERR_MINOR_VERS_MISMATCH = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_reclaim_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_reclaim_lease(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca %struct.rpc_cred*, align 8
  %4 = alloca %struct.nfs4_state_recovery_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %6 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %9, align 8
  store %struct.nfs4_state_recovery_ops* %10, %struct.nfs4_state_recovery_ops** %4, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %4, align 8
  %14 = getelementptr inbounds %struct.nfs4_state_recovery_ops, %struct.nfs4_state_recovery_ops* %13, i32 0, i32 1
  %15 = load %struct.rpc_cred* (%struct.nfs_client*)*, %struct.rpc_cred* (%struct.nfs_client*)** %14, align 8
  %16 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %17 = call %struct.rpc_cred* %15(%struct.nfs_client* %16)
  store %struct.rpc_cred* %17, %struct.rpc_cred** %3, align 8
  %18 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %19 = icmp ne %struct.rpc_cred* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %1
  %21 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %4, align 8
  %22 = getelementptr inbounds %struct.nfs4_state_recovery_ops, %struct.nfs4_state_recovery_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.nfs_client*, %struct.rpc_cred*)*, i32 (%struct.nfs_client*, %struct.rpc_cred*)** %22, align 8
  %24 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %25 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %26 = call i32 %23(%struct.nfs_client* %24, %struct.rpc_cred* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %28 = call i32 @put_rpccred(%struct.rpc_cred* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %20
  %34 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %35 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %35, i32 0, i32 0
  %37 = load %struct.rpc_cred*, %struct.rpc_cred** %36, align 8
  %38 = icmp eq %struct.rpc_cred* %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %41 = call i32 @nfs4_clear_machine_cred(%struct.nfs_client* %40)
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %33, %20
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NFS4ERR_MINOR_VERS_MISMATCH, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EPROTONOSUPPORT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @nfs4_clear_machine_cred(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
