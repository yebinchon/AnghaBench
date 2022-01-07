; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_put_frmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_put_frmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32 }
%struct.svc_rdma_fastreg_mr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_put_frmr(%struct.svcxprt_rdma* %0, %struct.svc_rdma_fastreg_mr* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_fastreg_mr*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store %struct.svc_rdma_fastreg_mr* %1, %struct.svc_rdma_fastreg_mr** %4, align 8
  %5 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %6 = icmp ne %struct.svc_rdma_fastreg_mr* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %9 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %10 = call i32 @frmr_unmap_dma(%struct.svcxprt_rdma* %8, %struct.svc_rdma_fastreg_mr* %9)
  %11 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %12 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %14, i32 0, i32 0
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %22 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %21, i32 0, i32 0
  %23 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %24 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %23, i32 0, i32 1
  %25 = call i32 @list_add(i32* %22, i32* %24)
  %26 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %27 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  br label %29

29:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @frmr_unmap_dma(%struct.svcxprt_rdma*, %struct.svc_rdma_fastreg_mr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
