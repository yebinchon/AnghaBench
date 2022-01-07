; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { %struct.TYPE_8__*, %struct.nfs4_state_owner*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nfs4_state_owner = type { i32, i32 }
%struct.nfs_server = type { i32, i32 }
%struct.nfs4_closedata = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__*, i32, %struct.nfs4_state* }
%struct.TYPE_7__ = type { %struct.nfs_server*, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32, i64, i32*, i32, i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32* }
%struct.rpc_task_setup = type { %struct.nfs4_closedata*, i32, i32, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_CLOSE = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global i32 0, align 4
@nfs4_close_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_do_close(%struct.nfs4_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.nfs4_closedata*, align 8
  %12 = alloca %struct.nfs4_state_owner*, align 8
  %13 = alloca %struct.rpc_task*, align 8
  %14 = alloca %struct.rpc_message, align 8
  %15 = alloca %struct.rpc_task_setup, align 8
  %16 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %18 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call %struct.nfs_server* @NFS_SERVER(%struct.TYPE_8__* %19)
  store %struct.nfs_server* %20, %struct.nfs_server** %10, align 8
  %21 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %22 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %21, i32 0, i32 1
  %23 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %22, align 8
  store %struct.nfs4_state_owner* %23, %struct.nfs4_state_owner** %12, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %24, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %25, align 8
  %26 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  %27 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %28 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %27, i32 0, i32 1
  %29 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %28, align 8
  %30 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %26, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 3
  %33 = load i32*, i32** @nfs4_procedures, align 8
  %34 = load i64, i64* @NFSPROC4_CLNT_CLOSE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 0
  store %struct.nfs4_closedata* null, %struct.nfs4_closedata** %36, align 8
  %37 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 1
  %38 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 2
  %40 = load i32, i32* @nfsiod_workqueue, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 3
  store i32* @nfs4_close_ops, i32** %41, align 8
  %42 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 4
  store %struct.rpc_message* %14, %struct.rpc_message** %42, align 8
  %43 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 5
  %44 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %45 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %43, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.nfs4_closedata* @kzalloc(i32 104, i32 %49)
  store %struct.nfs4_closedata* %50, %struct.nfs4_closedata** %11, align 8
  %51 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %52 = icmp eq %struct.nfs4_closedata* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %4
  br label %160

54:                                               ; preds = %4
  %55 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %56 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %59 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = call i32 @nfs41_init_sequence(i32* %57, i32* %60, i32 1)
  %62 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %63 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %66 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %65, i32 0, i32 3
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %66, align 8
  %67 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %68 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %69 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %68, i32 0, i32 5
  store %struct.nfs4_state* %67, %struct.nfs4_state** %69, align 8
  %70 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %71 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @NFS_FH(%struct.TYPE_8__* %72)
  %74 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %75 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %78 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %77, i32 0, i32 2
  %79 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %80 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32* %78, i32** %81, align 8
  %82 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %83 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %82, i32 0, i32 1
  %84 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %83, align 8
  %85 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32* @nfs_alloc_seqid(i32* %85, i32 %86)
  %88 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %89 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32* %87, i32** %90, align 8
  %91 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %92 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %54
  br label %157

97:                                               ; preds = %54
  %98 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %99 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %102 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %105 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %108 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %107, i32 0, i32 4
  %109 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %110 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  store i32* %108, i32** %111, align 8
  %112 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %113 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %117 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32* %115, i32** %118, align 8
  %119 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %120 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %121 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store %struct.nfs_server* %119, %struct.nfs_server** %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %125 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %127 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %126, i32 0, i32 3
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @nfs_sb_active(i32 %130)
  %132 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %133 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  store %struct.TYPE_6__* %133, %struct.TYPE_6__** %134, align 8
  %135 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %136 = getelementptr inbounds %struct.nfs4_closedata, %struct.nfs4_closedata* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %137, align 8
  %138 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %139 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %15, i32 0, i32 0
  store %struct.nfs4_closedata* %138, %struct.nfs4_closedata** %139, align 8
  %140 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %15)
  store %struct.rpc_task* %140, %struct.rpc_task** %13, align 8
  %141 = load %struct.rpc_task*, %struct.rpc_task** %13, align 8
  %142 = call i64 @IS_ERR(%struct.rpc_task* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %97
  %145 = load %struct.rpc_task*, %struct.rpc_task** %13, align 8
  %146 = call i32 @PTR_ERR(%struct.rpc_task* %145)
  store i32 %146, i32* %5, align 4
  br label %174

147:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.rpc_task*, %struct.rpc_task** %13, align 8
  %152 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %151)
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.rpc_task*, %struct.rpc_task** %13, align 8
  %155 = call i32 @rpc_put_task(%struct.rpc_task* %154)
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %5, align 4
  br label %174

157:                                              ; preds = %96
  %158 = load %struct.nfs4_closedata*, %struct.nfs4_closedata** %11, align 8
  %159 = call i32 @kfree(%struct.nfs4_closedata* %158)
  br label %160

160:                                              ; preds = %157, %53
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %165 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = call i32 @pnfs_roc_release(%struct.TYPE_8__* %166)
  br label %168

168:                                              ; preds = %163, %160
  %169 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %170 = call i32 @nfs4_put_open_state(%struct.nfs4_state* %169)
  %171 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %12, align 8
  %172 = call i32 @nfs4_put_state_owner(%struct.nfs4_state_owner* %171)
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %168, %153, %144
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.TYPE_8__*) #1

declare dso_local %struct.nfs4_closedata* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

declare dso_local i32 @NFS_FH(%struct.TYPE_8__*) #1

declare dso_local i32* @nfs_alloc_seqid(i32*, i32) #1

declare dso_local i32 @nfs_sb_active(i32) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wait_for_completion_task(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

declare dso_local i32 @kfree(%struct.nfs4_closedata*) #1

declare dso_local i32 @pnfs_roc_release(%struct.TYPE_8__*) #1

declare dso_local i32 @nfs4_put_open_state(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_put_state_owner(%struct.nfs4_state_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
