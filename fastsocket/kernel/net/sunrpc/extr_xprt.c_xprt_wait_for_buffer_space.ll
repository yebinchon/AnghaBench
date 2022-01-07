; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_wait_for_buffer_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_wait_for_buffer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_wait_for_buffer_space(%struct.rpc_task* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 1
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  store %struct.rpc_rqst* %9, %struct.rpc_rqst** %5, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 1
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %11, align 8
  store %struct.rpc_xprt* %12, %struct.rpc_xprt** %6, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = call i64 @RPC_IS_SOFT(%struct.rpc_task* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  %23 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %25, i32 0, i32 0
  %27 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rpc_sleep_on(i32* %26, %struct.rpc_task* %27, i32 %28)
  ret void
}

declare dso_local i64 @RPC_IS_SOFT(%struct.rpc_task*) #1

declare dso_local i32 @rpc_sleep_on(i32*, %struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
