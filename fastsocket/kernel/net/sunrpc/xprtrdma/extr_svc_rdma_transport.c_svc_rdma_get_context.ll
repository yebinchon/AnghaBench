; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_get_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_op_ctxt = type { i32*, i64, i32, %struct.svcxprt_rdma* }
%struct.svcxprt_rdma = type { i32 }

@svc_rdma_ctxt_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_rdma_op_ctxt* @svc_rdma_get_context(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svcxprt_rdma*, align 8
  %3 = alloca %struct.svc_rdma_op_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %2, align 8
  br label %4

4:                                                ; preds = %1, %11
  %5 = load i32, i32* @svc_rdma_ctxt_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.svc_rdma_op_ctxt* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.svc_rdma_op_ctxt* %7, %struct.svc_rdma_op_ctxt** %3, align 8
  %8 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %9 = icmp ne %struct.svc_rdma_op_ctxt* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %14

11:                                               ; preds = %4
  %12 = call i32 @msecs_to_jiffies(i32 500)
  %13 = call i32 @schedule_timeout_uninterruptible(i32 %12)
  br label %4

14:                                               ; preds = %10
  %15 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %16 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %16, i32 0, i32 3
  store %struct.svcxprt_rdma* %15, %struct.svcxprt_rdma** %17, align 8
  %18 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %22 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %26 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  ret %struct.svc_rdma_op_ctxt* %28
}

declare dso_local %struct.svc_rdma_op_ctxt* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
