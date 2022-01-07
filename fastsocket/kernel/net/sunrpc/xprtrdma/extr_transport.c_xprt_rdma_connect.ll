; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.rpc_xprt = type { i32 }
%struct.rpcrdma_xprt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @xprt_rdma_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_connect(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpcrdma_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rpc_xprt*
  store %struct.rpc_xprt* %8, %struct.rpc_xprt** %3, align 8
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %10 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %9)
  store %struct.rpcrdma_xprt* %10, %struct.rpcrdma_xprt** %4, align 8
  %11 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %1
  %17 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %17, i32 0, i32 0
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @schedule_delayed_work(i32* %18, i32 %21)
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 30, %30
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %16
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 30, %34
  %36 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %51

38:                                               ; preds = %16
  %39 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 5, %42
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 5, %46
  %48 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %49 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %38
  br label %51

51:                                               ; preds = %50, %33
  br label %62

52:                                               ; preds = %1
  %53 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %54 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %53, i32 0, i32 0
  %55 = call i32 @schedule_delayed_work(i32* %54, i32 0)
  %56 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %57 = call i32 @RPC_IS_ASYNC(%struct.rpc_task* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = call i32 (...) @flush_scheduled_work()
  br label %61

61:                                               ; preds = %59, %52
  br label %62

62:                                               ; preds = %61, %51
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @RPC_IS_ASYNC(%struct.rpc_task*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
