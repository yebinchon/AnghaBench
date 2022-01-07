; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rq_comp_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rq_comp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.svcxprt_rdma = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RDMAXPRT_RQ_PENDING = common dso_local global i32 0, align 4
@dto_lock = common dso_local global i32 0, align 4
@dto_xprt_q = common dso_local global i32 0, align 4
@dto_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, i8*)* @rq_comp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rq_comp_handler(%struct.ib_cq* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.svcxprt_rdma*
  store %struct.svcxprt_rdma* %8, %struct.svcxprt_rdma** %5, align 8
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %10 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* @RDMAXPRT_RQ_PENDING, align 4
  %18 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %19 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %18, i32 0, i32 2
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @dto_lock, i64 %21)
  %23 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %24 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %23, i32 0, i32 0
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %29 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %28, i32 0, i32 1
  %30 = call i32 @svc_xprt_get(%struct.TYPE_4__* %29)
  %31 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %32 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %32, i32* @dto_xprt_q)
  br label %34

34:                                               ; preds = %27, %16
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* @dto_lock, i64 %35)
  %37 = call i32 @tasklet_schedule(i32* @dto_tasklet)
  br label %38

38:                                               ; preds = %34, %15
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @svc_xprt_get(%struct.TYPE_4__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
