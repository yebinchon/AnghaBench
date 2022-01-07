; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_async_renew.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_async_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32 }
%struct.rpc_cred = type { i32 }
%struct.rpc_message = type { %struct.rpc_cred*, %struct.nfs_client*, i32* }
%struct.nfs4_renewdata = type { i32, %struct.nfs_client* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_RENEW = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@nfs4_renew_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, %struct.rpc_cred*, i32)* @nfs4_proc_async_renew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_async_renew(%struct.nfs_client* %0, %struct.rpc_cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_client*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca %struct.nfs4_renewdata*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %5, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  %11 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  store %struct.rpc_cred* %11, %struct.rpc_cred** %10, align 8
  %12 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  %13 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  store %struct.nfs_client* %13, %struct.nfs_client** %12, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 2
  %15 = load i32*, i32** @nfs4_procedures, align 8
  %16 = load i64, i64* @NFSPROC4_CLNT_RENEW, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 1
  %24 = call i32 @atomic_inc_not_zero(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %50

29:                                               ; preds = %21
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.nfs4_renewdata* @kmalloc(i32 16, i32 %30)
  store %struct.nfs4_renewdata* %31, %struct.nfs4_renewdata** %9, align 8
  %32 = load %struct.nfs4_renewdata*, %struct.nfs4_renewdata** %9, align 8
  %33 = icmp eq %struct.nfs4_renewdata* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %29
  %38 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %39 = load %struct.nfs4_renewdata*, %struct.nfs4_renewdata** %9, align 8
  %40 = getelementptr inbounds %struct.nfs4_renewdata, %struct.nfs4_renewdata* %39, i32 0, i32 1
  store %struct.nfs_client* %38, %struct.nfs_client** %40, align 8
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.nfs4_renewdata*, %struct.nfs4_renewdata** %9, align 8
  %43 = getelementptr inbounds %struct.nfs4_renewdata, %struct.nfs4_renewdata* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RPC_TASK_SOFT, align 4
  %48 = load %struct.nfs4_renewdata*, %struct.nfs4_renewdata** %9, align 8
  %49 = call i32 @rpc_call_async(i32 %46, %struct.rpc_message* %8, i32 %47, i32* @nfs4_renew_ops, %struct.nfs4_renewdata* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %37, %34, %26, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local %struct.nfs4_renewdata* @kmalloc(i32, i32) #1

declare dso_local i32 @rpc_call_async(i32, %struct.rpc_message*, i32, i32*, %struct.nfs4_renewdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
