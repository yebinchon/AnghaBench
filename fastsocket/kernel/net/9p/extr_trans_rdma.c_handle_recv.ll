; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_handle_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_handle_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, i32 }
%struct.p9_trans_rdma = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.p9_rdma_context = type { i32, i32 }
%struct.p9_req_t = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@REQ_STATUS_RCVD = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"req %p err %d status %d\0A\00", align 1
@P9_RDMA_FLUSHING = common dso_local global i32 0, align 4
@Disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_client*, %struct.p9_trans_rdma*, %struct.p9_rdma_context*, i32, i32)* @handle_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_recv(%struct.p9_client* %0, %struct.p9_trans_rdma* %1, %struct.p9_rdma_context* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.p9_client*, align 8
  %7 = alloca %struct.p9_trans_rdma*, align 8
  %8 = alloca %struct.p9_rdma_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.p9_req_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %6, align 8
  store %struct.p9_trans_rdma* %1, %struct.p9_trans_rdma** %7, align 8
  store %struct.p9_rdma_context* %2, %struct.p9_rdma_context** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store %struct.p9_req_t* null, %struct.p9_req_t** %11, align 8
  %14 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %7, align 8
  %15 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %8, align 8
  %20 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %23 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @ib_dma_unmap_single(i32 %18, i32 %21, i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IB_WC_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %58

31:                                               ; preds = %5
  %32 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %8, align 8
  %33 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @p9_parse_header(i32 %34, i32* null, i32* null, i32* %13, i32 1)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %58

39:                                               ; preds = %31
  %40 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call %struct.p9_req_t* @p9_tag_lookup(%struct.p9_client* %40, i32 %41)
  store %struct.p9_req_t* %42, %struct.p9_req_t** %11, align 8
  %43 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %44 = icmp ne %struct.p9_req_t* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %58

46:                                               ; preds = %39
  %47 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %8, align 8
  %48 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %51 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @REQ_STATUS_RCVD, align 4
  %53 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %54 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %56 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %57 = call i32 @p9_client_cb(%struct.p9_client* %55, %struct.p9_req_t* %56)
  br label %70

58:                                               ; preds = %45, %38, %30
  %59 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %60 = load %struct.p9_req_t*, %struct.p9_req_t** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @P9_DPRINTK(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.p9_req_t* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @P9_RDMA_FLUSHING, align 4
  %65 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %7, align 8
  %66 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @Disconnected, align 4
  %68 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %69 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %58, %46
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @p9_parse_header(i32, i32*, i32*, i32*, i32) #1

declare dso_local %struct.p9_req_t* @p9_tag_lookup(%struct.p9_client*, i32) #1

declare dso_local i32 @p9_client_cb(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_req_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
