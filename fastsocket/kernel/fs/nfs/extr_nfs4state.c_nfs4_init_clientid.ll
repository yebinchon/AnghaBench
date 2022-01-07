; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_init_clientid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_init_clientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rpc_cred = type { i32 }
%struct.nfs4_setclientid_res = type { i32, i32 }

@NFS4CLNT_LEASE_CONFIRM = common dso_local global i32 0, align 4
@nfs_callback_tcpport = common dso_local global i16 0, align 2
@AF_INET6 = common dso_local global i64 0, align 8
@nfs_callback_tcpport6 = common dso_local global i16 0, align 2
@NFS4_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_init_clientid(%struct.nfs_client* %0, %struct.rpc_cred* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.rpc_cred*, align 8
  %5 = alloca %struct.nfs4_setclientid_res, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 0
  %9 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 1
  %13 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @NFS4CLNT_LEASE_CONFIRM, align 4
  %17 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %54

22:                                               ; preds = %2
  %23 = load i16, i16* @nfs_callback_tcpport, align 2
  store i16 %23, i16* %6, align 2
  %24 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i16, i16* @nfs_callback_tcpport6, align 2
  store i16 %31, i16* %6, align 2
  br label %32

32:                                               ; preds = %30, %22
  %33 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %34 = load i32, i32* @NFS4_CALLBACK, align 4
  %35 = load i16, i16* %6, align 2
  %36 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %37 = call i32 @nfs4_proc_setclientid(%struct.nfs_client* %33, i32 %34, i16 zeroext %35, %struct.rpc_cred* %36, %struct.nfs4_setclientid_res* %5)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %68

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %49 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @NFS4CLNT_LEASE_CONFIRM, align 4
  %51 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %52 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %41, %21
  %55 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %56 = load %struct.rpc_cred*, %struct.rpc_cred** %4, align 8
  %57 = call i32 @nfs4_proc_setclientid_confirm(%struct.nfs_client* %55, %struct.nfs4_setclientid_res* %5, %struct.rpc_cred* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %68

61:                                               ; preds = %54
  %62 = load i32, i32* @NFS4CLNT_LEASE_CONFIRM, align 4
  %63 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %64 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %67 = call i32 @nfs4_schedule_state_renewal(%struct.nfs_client* %66)
  br label %68

68:                                               ; preds = %61, %60, %40
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_proc_setclientid(%struct.nfs_client*, i32, i16 zeroext, %struct.rpc_cred*, %struct.nfs4_setclientid_res*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs4_proc_setclientid_confirm(%struct.nfs_client*, %struct.nfs4_setclientid_res*, %struct.rpc_cred*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nfs4_schedule_state_renewal(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
