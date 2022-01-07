; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_open_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_open_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, i32, i64, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_server = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { i32, i32*, i32*, i32* }
%struct.rpc_task_setup = type { i32, i32, %struct.nfs4_opendata*, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_OPEN_CONFIRM = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs4_open_confirm_ops = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*)* @_nfs4_proc_open_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_message, align 8
  %7 = alloca %struct.rpc_task_setup, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  %9 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %10 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %9, i32 0, i32 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nfs_server* @NFS_SERVER(i32 %13)
  store %struct.nfs_server* %14, %struct.nfs_server** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 0
  %16 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %17 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 1
  %22 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %22, i32 0, i32 6
  store i32* %23, i32** %21, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 2
  %25 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %26 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %25, i32 0, i32 7
  store i32* %26, i32** %24, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %6, i32 0, i32 3
  %28 = load i32*, i32** @nfs4_procedures, align 8
  %29 = load i64, i64* @NFSPROC4_CLNT_OPEN_CONFIRM, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %27, align 8
  %31 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 0
  %32 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 1
  %34 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 2
  %36 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs4_opendata* %36, %struct.nfs4_opendata** %35, align 8
  %37 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 3
  store i32* @nfs4_open_confirm_ops, i32** %37, align 8
  %38 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 4
  store %struct.rpc_message* %6, %struct.rpc_message** %38, align 8
  %39 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 5
  %40 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %39, align 8
  %43 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %44 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %43, i32 0, i32 4
  %45 = call i32 @kref_get(i32* %44)
  %46 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %47 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %49 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %52 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %7)
  store %struct.rpc_task* %53, %struct.rpc_task** %5, align 8
  %54 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %55 = call i64 @IS_ERR(%struct.rpc_task* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %1
  %58 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %59 = call i32 @PTR_ERR(%struct.rpc_task* %58)
  store i32 %59, i32* %2, align 4
  br label %77

60:                                               ; preds = %1
  %61 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %62 = call i32 @nfs4_wait_for_completion_rpc_task(%struct.rpc_task* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %67 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = call i32 (...) @smp_wmb()
  br label %73

69:                                               ; preds = %60
  %70 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %71 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %75 = call i32 @rpc_put_task(%struct.rpc_task* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %57
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @nfs4_wait_for_completion_rpc_task(%struct.rpc_task*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
