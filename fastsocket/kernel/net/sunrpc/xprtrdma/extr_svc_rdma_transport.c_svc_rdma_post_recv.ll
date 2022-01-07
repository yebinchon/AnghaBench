; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_post_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_recv_wr = type { i32, i64, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.svc_rdma_op_ctxt = type { i32, %struct.TYPE_4__*, %struct.page**, i32 }
%struct.page = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_post_recv(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.ib_recv_wr, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  %12 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %13 = call %struct.svc_rdma_op_ctxt* @svc_rdma_get_context(%struct.svcxprt_rdma* %12)
  store %struct.svc_rdma_op_ctxt* %13, %struct.svc_rdma_op_ctxt** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %15 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %16 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %96, %1
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %20 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %99

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %26 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = call %struct.page* (...) @svc_rdma_get_page()
  store %struct.page* %31, %struct.page** %7, align 8
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %34 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %33, i32 0, i32 2
  %35 = load %struct.page**, %struct.page*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 %37
  store %struct.page* %32, %struct.page** %38, align 8
  %39 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %40 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %39, i32 0, i32 6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @ib_dma_map_page(i32 %43, %struct.page* %44, i32 0, i64 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %49 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %48, i32 0, i32 6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @ib_dma_mapping_error(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %23
  br label %132

57:                                               ; preds = %23
  %58 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %59 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %58, i32 0, i32 5
  %60 = call i32 @atomic_inc(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %63 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %61, i32* %68, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %71 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i64 %69, i64* %76, align 8
  %77 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %78 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %81 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %90 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %57
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %17

99:                                               ; preds = %17
  %100 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %4, i32 0, i32 3
  store i32* null, i32** %100, align 8
  %101 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %102 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %4, i32 0, i32 2
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %105, align 8
  %106 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %107 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %4, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  %110 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %111 = ptrtoint %struct.svc_rdma_op_ctxt* %110 to i64
  %112 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %4, i32 0, i32 1
  store i64 %111, i64* %112, align 8
  %113 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %114 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %113, i32 0, i32 2
  %115 = call i32 @svc_xprt_get(i32* %114)
  %116 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %117 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ib_post_recv(i32 %118, %struct.ib_recv_wr* %4, %struct.ib_recv_wr** %5)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %99
  %123 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %124 = call i32 @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt* %123)
  %125 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %126 = call i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt* %125, i32 1)
  %127 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %128 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %127, i32 0, i32 2
  %129 = call i32 @svc_xprt_put(i32* %128)
  br label %130

130:                                              ; preds = %122, %99
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %2, align 4
  br label %139

132:                                              ; preds = %56
  %133 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %134 = call i32 @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt* %133)
  %135 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %6, align 8
  %136 = call i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt* %135, i32 1)
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %132, %130
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.svc_rdma_op_ctxt* @svc_rdma_get_context(%struct.svcxprt_rdma*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @svc_rdma_get_page(...) #1

declare dso_local i32 @ib_dma_map_page(i32, %struct.page*, i32, i64, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @svc_xprt_get(i32*) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @svc_rdma_unmap_dma(%struct.svc_rdma_op_ctxt*) #1

declare dso_local i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt*, i32) #1

declare dso_local i32 @svc_xprt_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
