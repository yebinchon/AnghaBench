; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_fastreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_fastreg_mr = type { %struct.TYPE_6__*, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_send_wr = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32 }

@IB_WR_FAST_REG_MR = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_fastreg(%struct.svcxprt_rdma* %0, %struct.svc_rdma_fastreg_mr* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_fastreg_mr*, align 8
  %5 = alloca %struct.ib_send_wr, align 8
  %6 = alloca i64, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store %struct.svc_rdma_fastreg_mr* %1, %struct.svc_rdma_fastreg_mr** %4, align 8
  %7 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 255
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  %19 = call i32 @ib_update_fast_reg_key(%struct.TYPE_6__* %16, i64 %18)
  %20 = call i32 @memset(%struct.ib_send_wr* %5, i32 0, i32 40)
  %21 = load i32, i32* @IB_WR_FAST_REG_MR, align 4
  %22 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %26 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %32 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  store i32 %33, i32* %36, align 4
  %37 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %38 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %48 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %54 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %60 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %68 = call i32 @svc_rdma_send(%struct.svcxprt_rdma* %67, %struct.ib_send_wr* %5)
  ret i32 %68
}

declare dso_local i32 @ib_update_fast_reg_key(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @memset(%struct.ib_send_wr*, i32, i32) #1

declare dso_local i32 @svc_rdma_send(%struct.svcxprt_rdma*, %struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
