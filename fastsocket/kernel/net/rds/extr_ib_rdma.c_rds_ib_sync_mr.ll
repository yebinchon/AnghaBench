; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_sync_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_rdma.c_rds_ib_sync_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, i32, %struct.rds_ib_device* }
%struct.rds_ib_device = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_sync_mr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_ib_mr*, align 8
  %6 = alloca %struct.rds_ib_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rds_ib_mr*
  store %struct.rds_ib_mr* %8, %struct.rds_ib_mr** %5, align 8
  %9 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %10 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %9, i32 0, i32 2
  %11 = load %struct.rds_ib_device*, %struct.rds_ib_device** %10, align 8
  store %struct.rds_ib_device* %11, %struct.rds_ib_device** %6, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %37 [
    i32 129, label %13
    i32 128, label %25
  ]

13:                                               ; preds = %2
  %14 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %15 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %18 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %21 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %24 = call i32 @ib_dma_sync_sg_for_cpu(i32 %16, i32 %19, i32 %22, i32 %23)
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.rds_ib_device*, %struct.rds_ib_device** %6, align 8
  %27 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %30 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %33 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %36 = call i32 @ib_dma_sync_sg_for_device(i32 %28, i32 %31, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %2, %25, %13
  ret void
}

declare dso_local i32 @ib_dma_sync_sg_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ib_dma_sync_sg_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
