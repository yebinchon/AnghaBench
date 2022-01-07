; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_unlck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_unlck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.file_lock = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.nfs4_lock_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_seqid = type { i32 }
%struct.nfs4_unlockdata = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rpc_message = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32* }
%struct.rpc_task_setup = type { %struct.nfs4_unlockdata*, i32, i32, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LOCKU = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs4_locku_ops = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_task* (%struct.file_lock*, %struct.nfs_open_context*, %struct.nfs4_lock_state*, %struct.nfs_seqid*)* @nfs4_do_unlck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_task* @nfs4_do_unlck(%struct.file_lock* %0, %struct.nfs_open_context* %1, %struct.nfs4_lock_state* %2, %struct.nfs_seqid* %3) #0 {
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.nfs4_lock_state*, align 8
  %9 = alloca %struct.nfs_seqid*, align 8
  %10 = alloca %struct.nfs4_unlockdata*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  store %struct.file_lock* %0, %struct.file_lock** %6, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %7, align 8
  store %struct.nfs4_lock_state* %2, %struct.nfs4_lock_state** %8, align 8
  store %struct.nfs_seqid* %3, %struct.nfs_seqid** %9, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %16 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 3
  %20 = load i32*, i32** @nfs4_procedures, align 8
  %21 = load i64, i64* @NFSPROC4_CLNT_LOCKU, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.nfs4_unlockdata* null, %struct.nfs4_unlockdata** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %25 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %27 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  store i32* @nfs4_locku_ops, i32** %28, align 8
  %29 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  store %struct.rpc_message* %11, %struct.rpc_message** %29, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 5
  %31 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %32 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NFS_CLIENT(i32 %35)
  store i32 %36, i32* %30, align 8
  %37 = load i32, i32* @F_UNLCK, align 4
  %38 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %41 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %42 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %43 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %44 = call %struct.nfs4_unlockdata* @nfs4_alloc_unlockdata(%struct.file_lock* %40, %struct.nfs_open_context* %41, %struct.nfs4_lock_state* %42, %struct.nfs_seqid* %43)
  store %struct.nfs4_unlockdata* %44, %struct.nfs4_unlockdata** %10, align 8
  %45 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %46 = icmp eq %struct.nfs4_unlockdata* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %49 = call i32 @nfs_free_seqid(%struct.nfs_seqid* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.rpc_task* @ERR_PTR(i32 %51)
  store %struct.rpc_task* %52, %struct.rpc_task** %5, align 8
  br label %70

53:                                               ; preds = %4
  %54 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %55 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %58 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @nfs41_init_sequence(i32* %56, i32* %59, i32 1)
  %61 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %62 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %65 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %68 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.nfs4_unlockdata* %67, %struct.nfs4_unlockdata** %68, align 8
  %69 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %69, %struct.rpc_task** %5, align 8
  br label %70

70:                                               ; preds = %53, %47
  %71 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  ret %struct.rpc_task* %71
}

declare dso_local i32 @NFS_CLIENT(i32) #1

declare dso_local %struct.nfs4_unlockdata* @nfs4_alloc_unlockdata(%struct.file_lock*, %struct.nfs_open_context*, %struct.nfs4_lock_state*, %struct.nfs_seqid*) #1

declare dso_local i32 @nfs_free_seqid(%struct.nfs_seqid*) #1

declare dso_local %struct.rpc_task* @ERR_PTR(i32) #1

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
