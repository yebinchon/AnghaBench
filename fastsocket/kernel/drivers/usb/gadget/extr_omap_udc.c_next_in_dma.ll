; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_next_in_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_next_in_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_req = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@OMAP_DMA_SYNC_FRAME = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_ELEMENT = common dso_local global i32 0, align 4
@USB_W2FC_TX0 = common dso_local global i32 0, align 4
@UDC_TXN_TSC = common dso_local global i32 0, align 4
@UDC_TXN_EOT = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S8 = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S16 = common dso_local global i32 0, align 4
@OMAP_DMA_PORT_EMIFF = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_POST_INC = common dso_local global i32 0, align 4
@UDC_DMA_IRQ_EN = common dso_local global i32 0, align 4
@UDC_TXN_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_ep*, %struct.omap_req*)* @next_in_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_in_dma(%struct.omap_ep* %0, %struct.omap_req* %1) #0 {
  %3 = alloca %struct.omap_ep*, align 8
  %4 = alloca %struct.omap_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %3, align 8
  store %struct.omap_req* %1, %struct.omap_req** %4, align 8
  %10 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %11 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %15 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = call i64 (...) @cpu_is_omap15xx()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = call i64 (...) @cpu_is_omap24xx()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @USB_W2FC_TX0, align 4
  %31 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %32 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @OMAP24XX_DMA(i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = call i64 (...) @cpu_is_omap16xx()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @UDC_TXN_TSC, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %60, label %42

42:                                               ; preds = %38, %35
  %43 = call i64 (...) @cpu_is_omap24xx()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %48 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %45, %42
  %52 = call i64 (...) @cpu_is_omap15xx()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %57 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54, %45, %38
  %61 = load i32, i32* @UDC_TXN_EOT, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %65 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OMAP_DMA_DATA_TYPE_S8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @omap_set_dma_transfer_params(i32 %66, i32 %67, i32 %68, i32 1, i32 %69, i32 %70, i32 0)
  br label %100

72:                                               ; preds = %54, %51
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %75 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = udiv i32 %73, %76
  %78 = load i32, i32* @UDC_TXN_TSC, align 4
  %79 = add i32 %78, 1
  %80 = call i32 @min(i32 %77, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %5, align 4
  %82 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %83 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @OMAP_DMA_DATA_TYPE_S16, align 4
  %86 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %87 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 1
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @omap_set_dma_transfer_params(i32 %84, i32 %85, i32 %90, i32 %91, i32 %92, i32 %93, i32 0)
  %95 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %96 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = mul i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %72, %60
  %101 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %102 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @OMAP_DMA_PORT_EMIFF, align 4
  %105 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %106 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %107 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %111 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %109, %114
  %116 = call i32 @omap_set_dma_src_params(i32 %103, i32 %104, i32 %105, i64 %115, i32 0, i32 0)
  %117 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %118 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @omap_start_dma(i32 %119)
  %121 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %122 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @omap_get_dma_src_pos(i32 %123)
  %125 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %126 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %128 = call i32 @omap_readw(i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %130 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @UDC_TX_DONE_IE(i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %137 = call i32 @omap_writew(i32 %135, i32 %136)
  %138 = load i32, i32* @UDC_TXN_START, align 4
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %142 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @UDC_TXDMA(i32 %143)
  %145 = call i32 @omap_writew(i32 %140, i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %148 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  ret void
}

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i32 @OMAP24XX_DMA(i32, i32) #1

declare dso_local i64 @cpu_is_omap16xx(...) #1

declare dso_local i32 @omap_set_dma_transfer_params(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @omap_set_dma_src_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @omap_start_dma(i32) #1

declare dso_local i32 @omap_get_dma_src_pos(i32) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @UDC_TX_DONE_IE(i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @UDC_TXDMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
