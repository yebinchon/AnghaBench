; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rq_cq_reap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rq_cq_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_wc = type { i64, i32, i64 }
%struct.svc_rdma_op_ctxt = type { i64, i32, i32 }

@RDMAXPRT_RQ_PENDING = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@rdma_stat_rq_poll = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"svcrdma: transport closing putting ctxt %p\0A\00", align 1
@XPT_CLOSE = common dso_local global i32 0, align 4
@rdma_stat_rq_prod = common dso_local global i32 0, align 4
@XPT_DATA = common dso_local global i32 0, align 4
@RDMAXPRT_CONN_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svcxprt_rdma*)* @rq_cq_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rq_cq_reap(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svcxprt_rdma*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_wc, align 8
  %5 = alloca %struct.svc_rdma_op_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %2, align 8
  store %struct.svc_rdma_op_ctxt* null, %struct.svc_rdma_op_ctxt** %5, align 8
  %6 = load i32, i32* @RDMAXPRT_RQ_PENDING, align 4
  %7 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %8 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %7, i32 0, i32 1
  %9 = call i32 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %14 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %17 = call i32 @ib_req_notify_cq(i32 %15, i32 %16)
  %18 = call i32 @atomic_inc(i32* @rdma_stat_rq_poll)
  br label %19

19:                                               ; preds = %56, %43, %12
  %20 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %21 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ib_poll_cq(i32 %22, i32 1, %struct.ib_wc* %4)
  store i32 %23, i32* %3, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %4, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.svc_rdma_op_ctxt*
  store %struct.svc_rdma_op_ctxt* %28, %struct.svc_rdma_op_ctxt** %5, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %32 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %36 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %38 = call i32 @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt* %37)
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IB_WC_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %25
  %44 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.svc_rdma_op_ctxt* %44)
  %46 = load i32, i32* @XPT_CLOSE, align 4
  %47 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %48 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %46, i32* %49)
  %51 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %52 = call i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt* %51, i32 1)
  %53 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %54 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %53, i32 0, i32 0
  %55 = call i32 @svc_xprt_put(%struct.TYPE_3__* %54)
  br label %19

56:                                               ; preds = %25
  %57 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %58 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %61 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %60, i32 0, i32 1
  %62 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %63 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %62, i32 0, i32 3
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %66 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %69 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %68, i32 0, i32 0
  %70 = call i32 @svc_xprt_put(%struct.TYPE_3__* %69)
  br label %19

71:                                               ; preds = %19
  %72 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %73 = icmp ne %struct.svc_rdma_op_ctxt* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @atomic_inc(i32* @rdma_stat_rq_prod)
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* @XPT_DATA, align 4
  %78 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %79 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @set_bit(i32 %77, i32* %80)
  %82 = load i32, i32* @RDMAXPRT_CONN_PENDING, align 4
  %83 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %84 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %83, i32 0, i32 1
  %85 = call i32 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %89 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %88, i32 0, i32 0
  %90 = call i32 @svc_xprt_enqueue(%struct.TYPE_3__* %89)
  br label %91

91:                                               ; preds = %11, %87, %76
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.ib_wc*) #1

declare dso_local i32 @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt*) #1

declare dso_local i32 @dprintk(i8*, %struct.svc_rdma_op_ctxt*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt*, i32) #1

declare dso_local i32 @svc_xprt_put(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
