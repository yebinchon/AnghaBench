; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_unmap_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_unmap_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_op_ctxt = type { i32, i32, %struct.TYPE_4__*, %struct.svcxprt_rdma* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.svcxprt_rdma = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt* %0) #0 {
  %2 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_rdma_op_ctxt* %0, %struct.svc_rdma_op_ctxt** %2, align 8
  %5 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %2, align 8
  %6 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %5, i32 0, i32 3
  %7 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  store %struct.svcxprt_rdma* %7, %struct.svcxprt_rdma** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %2, align 8
  %11 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %2, align 8
  %16 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %14, %8
  %25 = phi i1 [ false, %8 ], [ %23, %14 ]
  br i1 %25, label %26, label %72

26:                                               ; preds = %24
  %27 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %2, align 8
  %28 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %36 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %26
  %40 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %41 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %40, i32 0, i32 2
  %42 = call i32 @atomic_dec(i32* %41)
  %43 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %44 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %2, align 8
  %49 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %2, align 8
  %57 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %2, align 8
  %65 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ib_dma_unmap_page(i32 %47, i32 %55, i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %39, %26
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %8

72:                                               ; preds = %24
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_dma_unmap_page(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
