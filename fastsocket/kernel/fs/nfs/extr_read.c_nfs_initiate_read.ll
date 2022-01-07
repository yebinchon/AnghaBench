; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_initiate_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_initiate_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_read_data = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.inode* }
%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { i32, i32*, %struct.TYPE_9__* }
%struct.rpc_task_setup = type { i32, i32, %struct.nfs_read_data*, %struct.rpc_call_ops*, %struct.rpc_message*, %struct.rpc_clnt*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 (%struct.nfs_read_data*, %struct.rpc_message*)* }

@NFS_RPC_SWAPFLAGS = common dso_local global i32 0, align 4
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"NFS: %5u initiated read call (req %s/%lld, %u bytes @ offset %llu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_initiate_read(%struct.rpc_clnt* %0, %struct.nfs_read_data* %1, %struct.rpc_call_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.nfs_read_data*, align 8
  %7 = alloca %struct.rpc_call_ops*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_task*, align 8
  %11 = alloca %struct.rpc_message, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store %struct.nfs_read_data* %1, %struct.nfs_read_data** %6, align 8
  store %struct.rpc_call_ops* %2, %struct.rpc_call_ops** %7, align 8
  %13 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call i64 @IS_SWAPFILE(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @NFS_RPC_SWAPFLAGS, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %9, align 4
  %26 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  %27 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %28 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %26, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 1
  %33 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %33, i32 0, i32 3
  store i32* %34, i32** %32, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 2
  %36 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %36, i32 0, i32 0
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %35, align 8
  %38 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  %39 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %38, align 8
  %42 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %43 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %45 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  store %struct.nfs_read_data* %45, %struct.nfs_read_data** %44, align 8
  %46 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  %47 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %7, align 8
  store %struct.rpc_call_ops* %47, %struct.rpc_call_ops** %46, align 8
  %48 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  store %struct.rpc_message* %11, %struct.rpc_message** %48, align 8
  %49 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 5
  %50 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %50, %struct.rpc_clnt** %49, align 8
  %51 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 6
  %52 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %52, i32 0, i32 1
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %51, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call %struct.TYPE_10__* @NFS_PROTO(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32 (%struct.nfs_read_data*, %struct.rpc_message*)*, i32 (%struct.nfs_read_data*, %struct.rpc_message*)** %56, align 8
  %58 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %59 = call i32 %57(%struct.nfs_read_data* %58, %struct.rpc_message* %11)
  %60 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %61 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i64 @NFS_FILEID(%struct.inode* %69)
  %71 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %72 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nfs_read_data*, %struct.nfs_read_data** %6, align 8
  %76 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dprintk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %68, i64 %70, i32 %74, i64 %78)
  %80 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %80, %struct.rpc_task** %10, align 8
  %81 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %82 = call i64 @IS_ERR(%struct.rpc_task* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %24
  %85 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %86 = call i32 @PTR_ERR(%struct.rpc_task* %85)
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %24
  %88 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %89 = call i32 @rpc_put_task(%struct.rpc_task* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i32, i64) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
