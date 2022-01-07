; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_config_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_config_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfin_bf54xfb_info = type { i64 }

@CH_EPPI0 = common dso_local global i32 0, align 4
@DIR_READ = common dso_local global i32 0, align 4
@DMA_FLOW_AUTO = common dso_local global i32 0, align 4
@INTR_DISABLE = common dso_local global i32 0, align 4
@DIMENSION_2D = common dso_local global i32 0, align 4
@DATA_SIZE_32 = common dso_local global i32 0, align 4
@DMA_NOSYNC_KEEP_DMA_BUF = common dso_local global i32 0, align 4
@LCD_X_RES = common dso_local global i32 0, align 4
@LCD_BPP = common dso_local global i32 0, align 4
@DMA_BUS_SIZE = common dso_local global i32 0, align 4
@LCD_Y_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfin_bf54xfb_info*)* @config_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_dma(%struct.bfin_bf54xfb_info* %0) #0 {
  %2 = alloca %struct.bfin_bf54xfb_info*, align 8
  store %struct.bfin_bf54xfb_info* %0, %struct.bfin_bf54xfb_info** %2, align 8
  %3 = load i32, i32* @CH_EPPI0, align 4
  %4 = load i32, i32* @DIR_READ, align 4
  %5 = load i32, i32* @DMA_FLOW_AUTO, align 4
  %6 = load i32, i32* @INTR_DISABLE, align 4
  %7 = load i32, i32* @DIMENSION_2D, align 4
  %8 = load i32, i32* @DATA_SIZE_32, align 4
  %9 = load i32, i32* @DMA_NOSYNC_KEEP_DMA_BUF, align 4
  %10 = call i32 @set_bfin_dma_config(i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = call i32 @set_dma_config(i32 %3, i32 %10)
  %12 = load i32, i32* @CH_EPPI0, align 4
  %13 = load i32, i32* @LCD_X_RES, align 4
  %14 = load i32, i32* @LCD_BPP, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* @DMA_BUS_SIZE, align 4
  %17 = sdiv i32 %15, %16
  %18 = call i32 @set_dma_x_count(i32 %12, i32 %17)
  %19 = load i32, i32* @CH_EPPI0, align 4
  %20 = load i32, i32* @DMA_BUS_SIZE, align 4
  %21 = sdiv i32 %20, 8
  %22 = call i32 @set_dma_x_modify(i32 %19, i32 %21)
  %23 = load i32, i32* @CH_EPPI0, align 4
  %24 = load i32, i32* @LCD_Y_RES, align 4
  %25 = call i32 @set_dma_y_count(i32 %23, i32 %24)
  %26 = load i32, i32* @CH_EPPI0, align 4
  %27 = load i32, i32* @DMA_BUS_SIZE, align 4
  %28 = sdiv i32 %27, 8
  %29 = call i32 @set_dma_y_modify(i32 %26, i32 %28)
  %30 = load i32, i32* @CH_EPPI0, align 4
  %31 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %2, align 8
  %32 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @set_dma_start_addr(i32 %30, i64 %33)
  ret i32 0
}

declare dso_local i32 @set_dma_config(i32, i32) #1

declare dso_local i32 @set_bfin_dma_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_dma_x_count(i32, i32) #1

declare dso_local i32 @set_dma_x_modify(i32, i32) #1

declare dso_local i32 @set_dma_y_count(i32, i32) #1

declare dso_local i32 @set_dma_y_modify(i32, i32) #1

declare dso_local i32 @set_dma_start_addr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
