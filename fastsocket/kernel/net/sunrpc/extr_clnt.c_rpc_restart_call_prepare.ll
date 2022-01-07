; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_restart_call_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_restart_call_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@call_start = common dso_local global i32 0, align 4
@rpc_prepare_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %5 = call i64 @RPC_ASSASSINATED(%struct.rpc_task* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @call_start, align 4
  %10 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load i32, i32* @rpc_prepare_task, align 4
  %20 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %21 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %8
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @RPC_ASSASSINATED(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
