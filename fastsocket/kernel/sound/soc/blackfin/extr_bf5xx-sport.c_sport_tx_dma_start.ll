; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_tx_dma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_tx_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_device = type { %struct.TYPE_2__*, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__* }

@DMAFLOW_LARGE = common dso_local global i32 0, align 4
@NDSIZE_9 = common dso_local global i32 0, align 4
@WDSIZE_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sport_device*, i32)* @sport_tx_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sport_tx_dma_start(%struct.sport_device* %0, i32 %1) #0 {
  %3 = alloca %struct.sport_device*, align 8
  %4 = alloca i32, align 4
  store %struct.sport_device* %0, %struct.sport_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %9 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %12 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %16 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %19 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %18, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %22 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %25 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %24, i32 0, i32 0
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  br label %26

26:                                               ; preds = %20, %7
  %27 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %28 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %31 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @set_dma_next_desc_addr(i32 %29, %struct.TYPE_2__* %32)
  %34 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %35 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @set_dma_x_count(i32 %36, i32 0)
  %38 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %39 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @set_dma_x_modify(i32 %40, i32 0)
  %42 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %43 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DMAFLOW_LARGE, align 4
  %46 = load i32, i32* @NDSIZE_9, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @WDSIZE_32, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @set_dma_config(i32 %44, i32 %49)
  %51 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %52 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sport_device*, %struct.sport_device** %3, align 8
  %55 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @set_dma_curr_addr(i32 %53, i32 %58)
  %60 = call i32 (...) @SSYNC()
  ret i32 0
}

declare dso_local i32 @set_dma_next_desc_addr(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @set_dma_x_count(i32, i32) #1

declare dso_local i32 @set_dma_x_modify(i32, i32) #1

declare dso_local i32 @set_dma_config(i32, i32) #1

declare dso_local i32 @set_dma_curr_addr(i32, i32) #1

declare dso_local i32 @SSYNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
