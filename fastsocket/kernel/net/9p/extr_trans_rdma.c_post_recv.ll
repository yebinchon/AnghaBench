; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_post_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_rdma.c_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_rdma* }
%struct.p9_trans_rdma = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.p9_rdma_context = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_recv_wr = type { i64, i32, %struct.ib_sge*, i32* }
%struct.ib_sge = type { i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_rdma_context*)* @post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_recv(%struct.p9_client* %0, %struct.p9_rdma_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_rdma_context*, align 8
  %6 = alloca %struct.p9_trans_rdma*, align 8
  %7 = alloca %struct.ib_recv_wr, align 8
  %8 = alloca %struct.ib_recv_wr*, align 8
  %9 = alloca %struct.ib_sge, align 4
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_rdma_context* %1, %struct.p9_rdma_context** %5, align 8
  %10 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %11 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %10, i32 0, i32 1
  %12 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %11, align 8
  store %struct.p9_trans_rdma* %12, %struct.p9_trans_rdma** %6, align 8
  %13 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %14 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %19 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %24 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @ib_dma_map_single(i32 %17, i32 %22, i32 %25, i32 %26)
  %28 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %29 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %31 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %36 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ib_dma_mapping_error(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %67

41:                                               ; preds = %2
  %42 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %43 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %47 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %51 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @IB_WC_RECV, align 4
  %56 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %57 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %59 = ptrtoint %struct.p9_rdma_context* %58 to i64
  %60 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 2
  store %struct.ib_sge* %9, %struct.ib_sge** %61, align 8
  %62 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %64 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ib_post_recv(i32 %65, %struct.ib_recv_wr* %7, %struct.ib_recv_wr** %8)
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %40
  %68 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %69 = call i32 @P9_DPRINTK(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %41
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
