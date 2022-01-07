; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_saa7134-go7007.c_saa7134_go7007_stream_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_saa7134-go7007.c_saa7134_go7007_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.saa7134_go7007* }
%struct.saa7134_go7007 = type { i8*, i8*, i32, i32, %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL0 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL4 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@HPI_ADDR_VIDEO_BUFFER = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS2 = common dso_local global i32 0, align 4
@GPIO_COMMAND_ADDR = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL = common dso_local global i32 0, align 4
@SAA7134_TS_SERIAL1 = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL_SERIAL = common dso_local global i32 0, align 4
@SAA7134_TS_DMA0 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA1 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA2 = common dso_local global i32 0, align 4
@GPIO_COMMAND_VIDEO = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_MAX = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE5 = common dso_local global i32 0, align 4
@SAA7134_IRQ1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @saa7134_go7007_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_go7007_stream_start(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.saa7134_go7007*, align 8
  %5 = alloca %struct.saa7134_dev*, align 8
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %6 = load %struct.go7007*, %struct.go7007** %3, align 8
  %7 = getelementptr inbounds %struct.go7007, %struct.go7007* %6, i32 0, i32 0
  %8 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %7, align 8
  store %struct.saa7134_go7007* %8, %struct.saa7134_go7007** %4, align 8
  %9 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %10 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %9, i32 0, i32 4
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %5, align 8
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %17 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @virt_to_page(i32 %18)
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %22 = call i8* @dma_map_page(i32* %15, i32 %19, i32 0, i32 %20, i32 %21)
  %23 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %24 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %26 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %125

32:                                               ; preds = %1
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %34 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %38 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @virt_to_page(i32 %39)
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i8* @dma_map_page(i32* %36, i32 %40, i32 0, i32 %41, i32 %42)
  %44 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %45 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %47 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %32
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %52 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %56 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %60 = call i32 @dma_unmap_page(i32* %54, i8* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %125

63:                                               ; preds = %32
  %64 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL0, align 4
  %65 = ashr i32 %64, 2
  %66 = call i32 @saa_writel(i32 %65, i32 -1560236032)
  %67 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL4, align 4
  %68 = ashr i32 %67, 2
  %69 = call i32 @saa_writel(i32 %68, i32 1073742336)
  %70 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %71 = call i32 @saa_writeb(i32 %70, i32 255)
  %72 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %73 = load i32, i32* @HPI_ADDR_VIDEO_BUFFER, align 4
  %74 = call i32 @saa_writeb(i32 %72, i32 %73)
  %75 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %76 = load i32, i32* @GPIO_COMMAND_ADDR, align 4
  %77 = call i32 @saa_writeb(i32 %75, i32 %76)
  %78 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %79 = call i32 @saa_writeb(i32 %78, i32 0)
  %80 = load i32, i32* @SAA7134_TS_PARALLEL, align 4
  %81 = call i32 @saa_writeb(i32 %80, i32 230)
  %82 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %83 = call i32 @saa_setb(i32 %82, i32 1)
  %84 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %85 = call i32 @saa_clearb(i32 %84, i32 1)
  %86 = load i32, i32* @SAA7134_TS_PARALLEL_SERIAL, align 4
  %87 = call i32 @saa_writeb(i32 %86, i32 127)
  %88 = load i32, i32* @SAA7134_TS_DMA0, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = ashr i32 %89, 7
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @saa_writeb(i32 %88, i32 %91)
  %93 = load i32, i32* @SAA7134_TS_DMA1, align 4
  %94 = call i32 @saa_writeb(i32 %93, i32 0)
  %95 = load i32, i32* @SAA7134_TS_DMA2, align 4
  %96 = call i32 @saa_writeb(i32 %95, i32 0)
  %97 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %98 = load i32, i32* @GPIO_COMMAND_VIDEO, align 4
  %99 = call i32 @saa_writeb(i32 %97, i32 %98)
  %100 = call i32 @SAA7134_RS_BA1(i32 5)
  %101 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %102 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @cpu_to_le32(i8* %103)
  %105 = call i32 @saa_writel(i32 %100, i32 %104)
  %106 = call i32 @SAA7134_RS_BA2(i32 5)
  %107 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %108 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @cpu_to_le32(i8* %109)
  %111 = call i32 @saa_writel(i32 %106, i32 %110)
  %112 = call i32 @SAA7134_RS_PITCH(i32 5)
  %113 = call i32 @saa_writel(i32 %112, i32 128)
  %114 = call i32 @SAA7134_RS_CONTROL(i32 5)
  %115 = load i32, i32* @SAA7134_RS_CONTROL_BURST_MAX, align 4
  %116 = call i32 @saa_writel(i32 %114, i32 %115)
  %117 = load i32, i32* @SAA7134_MAIN_CTRL, align 4
  %118 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %119 = call i32 @saa_setl(i32 %117, i32 %118)
  %120 = load i32, i32* @SAA7134_IRQ1, align 4
  %121 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_1, align 4
  %122 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_0, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @saa_setl(i32 %120, i32 %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %63, %50, %29
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i8* @dma_map_page(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i8*, i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @cpu_to_le32(i8*) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @saa_setl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
