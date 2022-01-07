; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_send_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpcrdma_msg = type { i32 }
%struct.ib_send_wr = type { i64, i32, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.svc_rdma_op_ctxt = type { i32, %struct.TYPE_4__*, i8*, %struct.page**, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i8* null, align 8
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"svcrdma: Error %d posting send for protocol error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_send_error(%struct.svcxprt_rdma* %0, %struct.rpcrdma_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.svcxprt_rdma*, align 8
  %5 = alloca %struct.rpcrdma_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_send_wr, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %4, align 8
  store %struct.rpcrdma_msg* %1, %struct.rpcrdma_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call %struct.page* (...) @svc_rdma_get_page()
  store %struct.page* %13, %struct.page** %8, align 8
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = call i32* @page_address(%struct.page* %14)
  store i32* %15, i32** %10, align 8
  %16 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %17 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @svc_rdma_xdr_encode_error(%struct.svcxprt_rdma* %16, %struct.rpcrdma_msg* %17, i32 %18, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %22 = call %struct.svc_rdma_op_ctxt* @svc_rdma_get_context(%struct.svcxprt_rdma* %21)
  store %struct.svc_rdma_op_ctxt* %22, %struct.svc_rdma_op_ctxt** %9, align 8
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %25 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %27 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %30 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %29, i32 0, i32 3
  %31 = load %struct.page**, %struct.page*** %30, align 8
  %32 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 0
  store %struct.page* %28, %struct.page** %32, align 8
  %33 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %34 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @ib_dma_map_page(i32 %37, %struct.page* %38, i32 0, i32 %39, i32 %40)
  %42 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %43 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %41, i32* %46, align 4
  %47 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %48 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %53 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ib_dma_mapping_error(i32 %51, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %3
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = call i32 @put_page(%struct.page* %61)
  %63 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %64 = call i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt* %63, i32 1)
  br label %110

65:                                               ; preds = %3
  %66 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %67 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %66, i32 0, i32 1
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %70 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %73 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %79 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  %83 = call i32 @memset(%struct.ib_send_wr* %7, i32 0, i32 32)
  %84 = load i8*, i8** @IB_WR_SEND, align 8
  %85 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %86 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %88 = ptrtoint %struct.svc_rdma_op_ctxt* %87 to i64
  %89 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %91 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 4
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %93, align 8
  %94 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  store i32 1, i32* %94, align 8
  %95 = load i8*, i8** @IB_WR_SEND, align 8
  %96 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 3
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %98 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %100 = call i32 @svc_rdma_send(%struct.svcxprt_rdma* %99, %struct.ib_send_wr* %7)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %65
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %107 = call i32 @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt* %106)
  %108 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %9, align 8
  %109 = call i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt* %108, i32 1)
  br label %110

110:                                              ; preds = %60, %103, %65
  ret void
}

declare dso_local %struct.page* @svc_rdma_get_page(...) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @svc_rdma_xdr_encode_error(%struct.svcxprt_rdma*, %struct.rpcrdma_msg*, i32, i32*) #1

declare dso_local %struct.svc_rdma_op_ctxt* @svc_rdma_get_context(%struct.svcxprt_rdma*) #1

declare dso_local i32 @ib_dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.ib_send_wr*, i32, i32) #1

declare dso_local i32 @svc_rdma_send(%struct.svcxprt_rdma*, %struct.ib_send_wr*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
