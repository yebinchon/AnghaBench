; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_run_open_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_run_open_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.nfs_openres, %struct.nfs_openargs, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_openres = type { i32 }
%struct.nfs_openargs = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { i32, %struct.nfs_openres*, %struct.nfs_openargs*, i32* }
%struct.rpc_task_setup = type { i32, i32, %struct.nfs4_opendata*, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_OPEN = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs4_open_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*, i32)* @nfs4_run_open_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_run_open_task(%struct.nfs4_opendata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_opendata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.nfs_openargs*, align 8
  %9 = alloca %struct.nfs_openres*, align 8
  %10 = alloca %struct.rpc_task*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  %13 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %14, i32 0, i32 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %19)
  store %struct.nfs_server* %20, %struct.nfs_server** %7, align 8
  %21 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %22 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %21, i32 0, i32 7
  store %struct.nfs_openargs* %22, %struct.nfs_openargs** %8, align 8
  %23 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %23, i32 0, i32 6
  store %struct.nfs_openres* %24, %struct.nfs_openres** %9, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %27 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %25, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  %32 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  store %struct.nfs_openres* %32, %struct.nfs_openres** %31, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %34 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  store %struct.nfs_openargs* %34, %struct.nfs_openargs** %33, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 3
  %36 = load i32*, i32** @nfs4_procedures, align 8
  %37 = load i64, i64* @NFSPROC4_CLNT_OPEN, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %35, align 8
  %39 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  %40 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %42 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %44 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  store %struct.nfs4_opendata* %44, %struct.nfs4_opendata** %43, align 8
  %45 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  store i32* @nfs4_open_ops, i32** %45, align 8
  %46 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  store %struct.rpc_message* %11, %struct.rpc_message** %46, align 8
  %47 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 5
  %48 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %47, align 8
  %51 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  %52 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %51, i32 0, i32 0
  %53 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %54 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %53, i32 0, i32 0
  %55 = call i32 @nfs41_init_sequence(i32* %52, i32* %54, i32 1)
  %56 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %57 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %56, i32 0, i32 4
  %58 = call i32 @kref_get(i32* %57)
  %59 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %60 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %62 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %64 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %66 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %2
  %70 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  %71 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %70, i32 0, i32 0
  %72 = call i32 @nfs4_set_sequence_privileged(i32* %71)
  %73 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %74 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %2
  %76 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %76, %struct.rpc_task** %10, align 8
  %77 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %78 = call i64 @IS_ERR(%struct.rpc_task* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %82 = call i32 @PTR_ERR(%struct.rpc_task* %81)
  store i32 %82, i32* %3, align 4
  br label %100

83:                                               ; preds = %75
  %84 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %85 = call i32 @nfs4_wait_for_completion_rpc_task(%struct.rpc_task* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %90 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = call i32 (...) @smp_wmb()
  br label %96

92:                                               ; preds = %83
  %93 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %94 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %98 = call i32 @rpc_put_task(%struct.rpc_task* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %80
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @nfs4_set_sequence_privileged(i32*) #1

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
