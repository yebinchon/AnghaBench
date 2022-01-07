; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_use_shared_dmareq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_use_shared_dmareq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tusb_omap_dma_ch = type { i32, i32, i64 }

@TUSB_DMA_EP_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ep%i dmareq0 is busy for ep%i\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tusb_omap_dma_ch*)* @tusb_omap_use_shared_dmareq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_omap_use_shared_dmareq(%struct.tusb_omap_dma_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tusb_omap_dma_ch*, align 8
  %4 = alloca i32, align 4
  store %struct.tusb_omap_dma_ch* %0, %struct.tusb_omap_dma_ch** %3, align 8
  %5 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %6 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %9 = call i32 @musb_readl(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %14 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 15
  %18 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %1
  %22 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %23 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %28 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 16, %29
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %33 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %37 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @musb_writel(i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @musb_readl(i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32) #1

declare dso_local i32 @musb_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
