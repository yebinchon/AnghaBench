; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_allocate_dmareq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_allocate_dmareq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tusb_omap_dma_ch = type { i32, i32, i32, i32, i64 }

@TUSB_DMA_EP_MAP = common dso_local global i32 0, align 4
@OMAP24XX_DMA_EXT_DMAREQ0 = common dso_local global i32 0, align 4
@OMAP24XX_DMA_EXT_DMAREQ1 = common dso_local global i32 0, align 4
@OMAP242X_DMA_EXT_DMAREQ2 = common dso_local global i32 0, align 4
@OMAP242X_DMA_EXT_DMAREQ3 = common dso_local global i32 0, align 4
@OMAP242X_DMA_EXT_DMAREQ4 = common dso_local global i32 0, align 4
@OMAP242X_DMA_EXT_DMAREQ5 = common dso_local global i32 0, align 4
@MAX_DMAREQ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tusb_omap_dma_ch*)* @tusb_omap_dma_allocate_dmareq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_omap_dma_allocate_dmareq(%struct.tusb_omap_dma_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tusb_omap_dma_ch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.tusb_omap_dma_ch* %0, %struct.tusb_omap_dma_ch** %3, align 8
  %9 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %10 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %13 = call i32 @musb_readl(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* @OMAP24XX_DMA_EXT_DMAREQ0, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @OMAP24XX_DMA_EXT_DMAREQ1, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @OMAP242X_DMA_EXT_DMAREQ2, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @OMAP242X_DMA_EXT_DMAREQ3, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @OMAP242X_DMA_EXT_DMAREQ4, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @OMAP242X_DMA_EXT_DMAREQ5, align 4
  store i32 %25, i32* %24, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %44, %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MAX_DMAREQ, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 5
  %34 = shl i32 15, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 5
  %38 = ashr i32 %35, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %6, align 4
  br label %47

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %26

47:                                               ; preds = %41, %26
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %90

53:                                               ; preds = %47
  %54 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %55 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 5
  %59 = shl i32 %56, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %63 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 %67, 5
  %69 = shl i32 16, %68
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %53
  %73 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %74 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @musb_writel(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %81 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %83 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %89 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %72, %50
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @musb_readl(i32, i32) #1

declare dso_local i32 @musb_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
