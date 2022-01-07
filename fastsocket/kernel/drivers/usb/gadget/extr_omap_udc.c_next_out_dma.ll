; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_next_out_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_next_out_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_req = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@USB_W2FC_RX0 = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S8 = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_ELEMENT = common dso_local global i32 0, align 4
@UDC_RXN_TC = common dso_local global i64 0, align 8
@OMAP_DMA_DATA_TYPE_S16 = common dso_local global i32 0, align 4
@OMAP_DMA_PORT_EMIFF = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_POST_INC = common dso_local global i32 0, align 4
@UDC_RXN_STOP = common dso_local global i32 0, align 4
@UDC_DMA_IRQ_EN = common dso_local global i32 0, align 4
@UDC_EP_NUM = common dso_local global i32 0, align 4
@UDC_SET_FIFO_EN = common dso_local global i32 0, align 4
@UDC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_ep*, %struct.omap_req*)* @next_out_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_out_dma(%struct.omap_ep* %0, %struct.omap_req* %1) #0 {
  %3 = alloca %struct.omap_ep*, align 8
  %4 = alloca %struct.omap_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %3, align 8
  store %struct.omap_req* %1, %struct.omap_req** %4, align 8
  %8 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %9 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %13 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %11, %15
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = call i64 (...) @cpu_is_omap24xx()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @USB_W2FC_RX0, align 4
  %21 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %22 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @OMAP24XX_DMA(i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = call i64 (...) @cpu_is_omap24xx()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %31 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %36 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OMAP_DMA_DATA_TYPE_S8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @omap_set_dma_transfer_params(i32 %37, i32 %38, i32 %39, i32 1, i32 %40, i32 %41, i32 0)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %45 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %79

46:                                               ; preds = %28, %25
  %47 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %48 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = udiv i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* @UDC_RXN_TC, align 8
  %55 = trunc i64 %54 to i32
  %56 = add i32 %55, 1
  %57 = call i32 @min(i32 %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %60 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %58, %62
  %64 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %65 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %67 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OMAP_DMA_DATA_TYPE_S16, align 4
  %70 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %71 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = lshr i32 %73, 1
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @omap_set_dma_transfer_params(i32 %68, i32 %69, i32 %74, i32 %75, i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %46, %34
  %80 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %81 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @OMAP_DMA_PORT_EMIFF, align 4
  %84 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %85 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %86 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %90 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %88, %92
  %94 = call i32 @omap_set_dma_dest_params(i32 %82, i32 %83, i32 %84, i32 %93, i32 0, i32 0)
  %95 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %96 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @omap_get_dma_dst_pos(i32 %97)
  %99 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %100 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @UDC_RXN_STOP, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sub i32 %102, 1
  %104 = or i32 %101, %103
  %105 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %106 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @UDC_RXDMA(i32 %107)
  %109 = call i32 @omap_writew(i32 %104, i32 %108)
  %110 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %111 = call i32 @omap_readw(i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %113 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @UDC_RX_EOT_IE(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %120 = call i32 @omap_writew(i32 %118, i32 %119)
  %121 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %122 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 15
  %125 = load i32, i32* @UDC_EP_NUM, align 4
  %126 = call i32 @omap_writew(i32 %124, i32 %125)
  %127 = load i32, i32* @UDC_SET_FIFO_EN, align 4
  %128 = load i32, i32* @UDC_CTRL, align 4
  %129 = call i32 @omap_writew(i32 %127, i32 %128)
  %130 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %131 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @omap_start_dma(i32 %132)
  ret void
}

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i32 @OMAP24XX_DMA(i32, i32) #1

declare dso_local i32 @omap_set_dma_transfer_params(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @omap_set_dma_dest_params(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @omap_get_dma_dst_pos(i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @UDC_RXDMA(i32) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @UDC_RX_EOT_IE(i32) #1

declare dso_local i32 @omap_start_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
