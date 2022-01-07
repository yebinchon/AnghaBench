; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_send_unmap_rdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_send_unmap_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rm_rdma_op = type { i64, i64, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_iw_connection*, %struct.rm_rdma_op*)* @rds_iw_send_unmap_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_send_unmap_rdma(%struct.rds_iw_connection* %0, %struct.rm_rdma_op* %1) #0 {
  %3 = alloca %struct.rds_iw_connection*, align 8
  %4 = alloca %struct.rm_rdma_op*, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %3, align 8
  store %struct.rm_rdma_op* %1, %struct.rm_rdma_op** %4, align 8
  %5 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %4, align 8
  %6 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %11 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %4, align 8
  %16 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %4, align 8
  %19 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %4, align 8
  %22 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %29

27:                                               ; preds = %9
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @ib_dma_unmap_sg(i32 %14, i32 %17, i32 %20, i32 %30)
  %32 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %4, align 8
  %33 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @ib_dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
