; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32 }
%struct.tusb_omap_dma_ch = type { %struct.tusb_omap_dma* }
%struct.tusb_omap_dma = type { i32, i32, i32, i32 }

@MUSB_DMA_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @tusb_omap_dma_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_omap_dma_abort(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca %struct.tusb_omap_dma_ch*, align 8
  %4 = alloca %struct.tusb_omap_dma*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = call %struct.tusb_omap_dma_ch* @to_chdat(%struct.dma_channel* %5)
  store %struct.tusb_omap_dma_ch* %6, %struct.tusb_omap_dma_ch** %3, align 8
  %7 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %8 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %7, i32 0, i32 0
  %9 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %8, align 8
  store %struct.tusb_omap_dma* %9, %struct.tusb_omap_dma** %4, align 8
  %10 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %4, align 8
  %11 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %4, align 8
  %16 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %4, align 8
  %21 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @omap_stop_dma(i32 %22)
  %24 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %4, align 8
  %25 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @omap_free_dma(i32 %26)
  %28 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %4, align 8
  %29 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  br label %30

30:                                               ; preds = %19, %14
  %31 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %4, align 8
  %32 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = load %struct.tusb_omap_dma*, %struct.tusb_omap_dma** %4, align 8
  %34 = getelementptr inbounds %struct.tusb_omap_dma, %struct.tusb_omap_dma* %33, i32 0, i32 2
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %1
  %36 = load i32, i32* @MUSB_DMA_STATUS_FREE, align 4
  %37 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %38 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret i32 0
}

declare dso_local %struct.tusb_omap_dma_ch* @to_chdat(%struct.dma_channel*) #1

declare dso_local i32 @omap_stop_dma(i32) #1

declare dso_local i32 @omap_free_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
