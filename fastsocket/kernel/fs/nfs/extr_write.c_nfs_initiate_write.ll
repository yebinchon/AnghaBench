; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_initiate_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_initiate_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_write_data = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.inode* }
%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { i32, i32*, %struct.TYPE_9__* }
%struct.rpc_task_setup = type { i32, i32, i32, %struct.nfs_write_data*, %struct.rpc_call_ops*, %struct.rpc_message*, %struct.TYPE_7__*, %struct.rpc_clnt* }
%struct.TYPE_10__ = type { i32 (%struct.nfs_write_data*, %struct.rpc_message*)* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"NFS: %5u initiated write call (req %s/%lld, %u bytes @ offset %llu)\0A\00", align 1
@FLUSH_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_initiate_write(%struct.rpc_clnt* %0, %struct.nfs_write_data* %1, %struct.rpc_call_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.nfs_write_data*, align 8
  %7 = alloca %struct.rpc_call_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpc_task*, align 8
  %12 = alloca %struct.rpc_message, align 8
  %13 = alloca %struct.rpc_task_setup, align 8
  %14 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store %struct.nfs_write_data* %1, %struct.nfs_write_data** %6, align 8
  store %struct.rpc_call_ops* %2, %struct.rpc_call_ops** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @flush_task_priority(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  %23 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %22, align 8
  %28 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 1
  %29 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %29, i32 0, i32 3
  store i32* %30, i32** %28, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 2
  %32 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %32, i32 0, i32 0
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %31, align 8
  %34 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 0
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 1
  %37 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 2
  %39 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 3
  %41 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  store %struct.nfs_write_data* %41, %struct.nfs_write_data** %40, align 8
  %42 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 4
  %43 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %7, align 8
  store %struct.rpc_call_ops* %43, %struct.rpc_call_ops** %42, align 8
  %44 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 5
  store %struct.rpc_message* %12, %struct.rpc_message** %44, align 8
  %45 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 6
  %46 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %47 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %46, i32 0, i32 1
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %45, align 8
  %48 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 7
  %49 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %49, %struct.rpc_clnt** %48, align 8
  store i32 0, i32* %14, align 4
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call %struct.TYPE_10__* @NFS_PROTO(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32 (%struct.nfs_write_data*, %struct.rpc_message*)*, i32 (%struct.nfs_write_data*, %struct.rpc_message*)** %52, align 8
  %54 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %55 = call i32 %53(%struct.nfs_write_data* %54, %struct.rpc_message* %12)
  %56 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %57 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i64 @NFS_FILEID(%struct.inode* %65)
  %67 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %68 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nfs_write_data*, %struct.nfs_write_data** %6, align 8
  %72 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %64, i64 %66, i32 %70, i64 %74)
  %76 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %13)
  store %struct.rpc_task* %76, %struct.rpc_task** %11, align 8
  %77 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %78 = call i64 @IS_ERR(%struct.rpc_task* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %4
  %81 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %82 = call i32 @PTR_ERR(%struct.rpc_task* %81)
  store i32 %82, i32* %14, align 4
  br label %101

83:                                               ; preds = %4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @FLUSH_SYNC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %90 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %95 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %83
  %99 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %100 = call i32 @rpc_put_task(%struct.rpc_task* %99)
  br label %101

101:                                              ; preds = %98, %80
  %102 = load i32, i32* %14, align 4
  ret i32 %102
}

declare dso_local i32 @flush_task_priority(i32) #1

declare dso_local %struct.TYPE_10__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i32, i64) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wait_for_completion_task(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
