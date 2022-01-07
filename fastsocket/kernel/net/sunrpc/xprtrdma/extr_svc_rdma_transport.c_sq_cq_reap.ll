; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_sq_cq_reap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_sq_cq_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { %struct.TYPE_2__, i32, i32, %struct.ib_cq*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_cq = type { i32 }
%struct.svc_rdma_op_ctxt = type { i32 }
%struct.ib_wc = type { i64, i64 }

@RDMAXPRT_SQ_PENDING = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@rdma_stat_sq_poll = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@XPT_CLOSE = common dso_local global i32 0, align 4
@rdma_stat_sq_prod = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svcxprt_rdma*)* @sq_cq_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sq_cq_reap(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svcxprt_rdma*, align 8
  %3 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %4 = alloca %struct.ib_wc, align 8
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %2, align 8
  store %struct.svc_rdma_op_ctxt* null, %struct.svc_rdma_op_ctxt** %3, align 8
  %7 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %8 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %7, i32 0, i32 3
  %9 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  store %struct.ib_cq* %9, %struct.ib_cq** %5, align 8
  %10 = load i32, i32* @RDMAXPRT_SQ_PENDING, align 4
  %11 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %12 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %11, i32 0, i32 4
  %13 = call i32 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %18 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %17, i32 0, i32 3
  %19 = load %struct.ib_cq*, %struct.ib_cq** %18, align 8
  %20 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %21 = call i32 @ib_req_notify_cq(%struct.ib_cq* %19, i32 %20)
  %22 = call i32 @atomic_inc(i32* @rdma_stat_sq_poll)
  br label %23

23:                                               ; preds = %54, %16
  %24 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %25 = call i32 @ib_poll_cq(%struct.ib_cq* %24, i32 1, %struct.ib_wc* %4)
  store i32 %25, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_WC_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @XPT_CLOSE, align 4
  %34 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %35 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %33, i32* %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %40 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %39, i32 0, i32 2
  %41 = call i32 @atomic_dec(i32* %40)
  %42 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %43 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %42, i32 0, i32 1
  %44 = call i32 @wake_up(i32* %43)
  %45 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %4, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.svc_rdma_op_ctxt*
  store %struct.svc_rdma_op_ctxt* %47, %struct.svc_rdma_op_ctxt** %3, align 8
  %48 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %49 = icmp ne %struct.svc_rdma_op_ctxt* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %52 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %53 = call i32 @process_context(%struct.svcxprt_rdma* %51, %struct.svc_rdma_op_ctxt* %52)
  br label %54

54:                                               ; preds = %50, %38
  %55 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %56 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %55, i32 0, i32 0
  %57 = call i32 @svc_xprt_put(%struct.TYPE_2__* %56)
  br label %23

58:                                               ; preds = %23
  %59 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %3, align 8
  %60 = icmp ne %struct.svc_rdma_op_ctxt* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @atomic_inc(i32* @rdma_stat_sq_prod)
  br label %63

63:                                               ; preds = %15, %61, %58
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ib_req_notify_cq(%struct.ib_cq*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @process_context(%struct.svcxprt_rdma*, %struct.svc_rdma_op_ctxt*) #1

declare dso_local i32 @svc_xprt_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
