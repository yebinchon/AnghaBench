; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_frmr_unmap_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_frmr_unmap_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_fastreg_mr = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svcxprt_rdma*, %struct.svc_rdma_fastreg_mr*)* @frmr_unmap_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frmr_unmap_dma(%struct.svcxprt_rdma* %0, %struct.svc_rdma_fastreg_mr* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_fastreg_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store %struct.svc_rdma_fastreg_mr* %1, %struct.svc_rdma_fastreg_mr** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %10 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %24 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @ib_dma_mapping_error(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  br label %47

32:                                               ; preds = %13
  %33 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %34 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %33, i32 0, i32 0
  %35 = call i32 @atomic_dec(i32* %34)
  %36 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %37 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load %struct.svc_rdma_fastreg_mr*, %struct.svc_rdma_fastreg_mr** %4, align 8
  %44 = getelementptr inbounds %struct.svc_rdma_fastreg_mr, %struct.svc_rdma_fastreg_mr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ib_dma_unmap_page(i32 %40, i32 %41, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %32, %31
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %7

50:                                               ; preds = %7
  ret void
}

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
