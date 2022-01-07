; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_check_lease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_check_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfs4_state_maintenance_ops* }
%struct.nfs4_state_maintenance_ops = type { i32 (%struct.nfs_client*, %struct.rpc_cred*)*, %struct.rpc_cred* (%struct.nfs_client*)* }
%struct.rpc_cred = type { i32 }

@NFS4ERR_EXPIRED = common dso_local global i32 0, align 4
@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_check_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_check_lease(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.rpc_cred*, align 8
  %5 = alloca %struct.nfs4_state_maintenance_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %7 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nfs4_state_maintenance_ops*, %struct.nfs4_state_maintenance_ops** %10, align 8
  store %struct.nfs4_state_maintenance_ops* %11, %struct.nfs4_state_maintenance_ops** %5, align 8
  %12 = load i32, i32* @NFS4ERR_EXPIRED, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %15 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.nfs4_state_maintenance_ops*, %struct.nfs4_state_maintenance_ops** %5, align 8
  %25 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, %struct.nfs4_state_maintenance_ops* %24, i32 0, i32 1
  %26 = load %struct.rpc_cred* (%struct.nfs_client*)*, %struct.rpc_cred* (%struct.nfs_client*)** %25, align 8
  %27 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %28 = call %struct.rpc_cred* %26(%struct.nfs_client* %27)
  store %struct.rpc_cred* %28, %struct.rpc_cred** %4, align 8
  %29 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %33 = icmp eq %struct.rpc_cred* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %20
  %35 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %36 = call %struct.rpc_cred* @nfs4_get_setclientid_cred(%struct.nfs_client* %35)
  store %struct.rpc_cred* %36, %struct.rpc_cred** %4, align 8
  %37 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %38 = icmp eq %struct.rpc_cred* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %50

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.nfs4_state_maintenance_ops*, %struct.nfs4_state_maintenance_ops** %5, align 8
  %43 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, %struct.nfs4_state_maintenance_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.nfs_client*, %struct.rpc_cred*)*, i32 (%struct.nfs_client*, %struct.rpc_cred*)** %43, align 8
  %45 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %46 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %47 = call i32 %44(%struct.nfs_client* %45, %struct.rpc_cred* %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %49 = call i32 @put_rpccred(%struct.rpc_cred* %48)
  br label %50

50:                                               ; preds = %41, %39
  %51 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @nfs4_recovery_handle_error(%struct.nfs_client* %51, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.rpc_cred* @nfs4_get_setclientid_cred(%struct.nfs_client*) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @nfs4_recovery_handle_error(%struct.nfs_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
