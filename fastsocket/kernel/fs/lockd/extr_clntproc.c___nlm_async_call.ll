; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c___nlm_async_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c___nlm_async_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nlm_rqst = type { %struct.nlm_host* }
%struct.nlm_host = type { i32 }
%struct.rpc_message = type { i32* }
%struct.rpc_call_ops = type { i32 (%struct.nlm_rqst*)* }
%struct.rpc_clnt = type { i32* }
%struct.rpc_task_setup = type { %struct.rpc_clnt*, i32, %struct.nlm_rqst*, %struct.rpc_call_ops*, %struct.rpc_message* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"lockd: call procedure %d on %s (async)\0A\00", align 1
@ENOLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_task* (%struct.nlm_rqst*, i64, %struct.rpc_message*, %struct.rpc_call_ops*)* @__nlm_async_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_task* @__nlm_async_call(%struct.nlm_rqst* %0, i64 %1, %struct.rpc_message* %2, %struct.rpc_call_ops* %3) #0 {
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.nlm_rqst*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rpc_message*, align 8
  %9 = alloca %struct.rpc_call_ops*, align 8
  %10 = alloca %struct.nlm_host*, align 8
  %11 = alloca %struct.rpc_clnt*, align 8
  %12 = alloca %struct.rpc_task_setup, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.rpc_message* %2, %struct.rpc_message** %8, align 8
  store %struct.rpc_call_ops* %3, %struct.rpc_call_ops** %9, align 8
  %13 = load %struct.nlm_rqst*, %struct.nlm_rqst** %6, align 8
  %14 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %13, i32 0, i32 0
  %15 = load %struct.nlm_host*, %struct.nlm_host** %14, align 8
  store %struct.nlm_host* %15, %struct.nlm_host** %10, align 8
  %16 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %16, align 8
  %17 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 1
  %18 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 2
  %20 = load %struct.nlm_rqst*, %struct.nlm_rqst** %6, align 8
  store %struct.nlm_rqst* %20, %struct.nlm_rqst** %19, align 8
  %21 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 3
  %22 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %9, align 8
  store %struct.rpc_call_ops* %22, %struct.rpc_call_ops** %21, align 8
  %23 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 4
  %24 = load %struct.rpc_message*, %struct.rpc_message** %8, align 8
  store %struct.rpc_message* %24, %struct.rpc_message** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  %28 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  %32 = call %struct.rpc_clnt* @nlm_bind_host(%struct.nlm_host* %31)
  store %struct.rpc_clnt* %32, %struct.rpc_clnt** %11, align 8
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %34 = icmp eq %struct.rpc_clnt* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %47

36:                                               ; preds = %4
  %37 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %38 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load %struct.rpc_message*, %struct.rpc_message** %8, align 8
  %43 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  %45 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  store %struct.rpc_clnt* %44, %struct.rpc_clnt** %45, align 8
  %46 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %12)
  store %struct.rpc_task* %46, %struct.rpc_task** %5, align 8
  br label %56

47:                                               ; preds = %35
  %48 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %9, align 8
  %49 = getelementptr inbounds %struct.rpc_call_ops, %struct.rpc_call_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.nlm_rqst*)*, i32 (%struct.nlm_rqst*)** %49, align 8
  %51 = load %struct.nlm_rqst*, %struct.nlm_rqst** %6, align 8
  %52 = call i32 %50(%struct.nlm_rqst* %51)
  %53 = load i32, i32* @ENOLCK, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.rpc_task* @ERR_PTR(i32 %54)
  store %struct.rpc_task* %55, %struct.rpc_task** %5, align 8
  br label %56

56:                                               ; preds = %47, %36
  %57 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  ret %struct.rpc_task* %57
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local %struct.rpc_clnt* @nlm_bind_host(%struct.nlm_host*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local %struct.rpc_task* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
