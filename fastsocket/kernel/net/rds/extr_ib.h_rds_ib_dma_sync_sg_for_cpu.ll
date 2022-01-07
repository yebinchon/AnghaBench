; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib.h_rds_ib_dma_sync_sg_for_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib.h_rds_ib_dma_sync_sg_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.scatterlist*, i32, i32)* @rds_ib_dma_sync_sg_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_dma_sync_sg_for_cpu(%struct.ib_device* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %30, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i64 %19
  %21 = call i32 @ib_sg_dma_address(%struct.ib_device* %16, %struct.scatterlist* %20)
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i64 %25
  %27 = call i32 @ib_sg_dma_len(%struct.ib_device* %22, %struct.scatterlist* %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %15, i32 %21, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %10

33:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @ib_sg_dma_address(%struct.ib_device*, %struct.scatterlist*) #1

declare dso_local i32 @ib_sg_dma_len(%struct.ib_device*, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
