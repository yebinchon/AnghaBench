; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_fifo_bcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_fifo_bcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ep_struct = type { %struct.imx_udc_struct* }
%struct.imx_udc_struct = type { i64 }

@EPSTAT_BCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_fifo_bcount(%struct.imx_ep_struct* %0) #0 {
  %2 = alloca %struct.imx_ep_struct*, align 8
  %3 = alloca %struct.imx_udc_struct*, align 8
  store %struct.imx_ep_struct* %0, %struct.imx_ep_struct** %2, align 8
  %4 = load %struct.imx_ep_struct*, %struct.imx_ep_struct** %2, align 8
  %5 = getelementptr inbounds %struct.imx_ep_struct, %struct.imx_ep_struct* %4, i32 0, i32 0
  %6 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %5, align 8
  store %struct.imx_udc_struct* %6, %struct.imx_udc_struct** %3, align 8
  %7 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %3, align 8
  %8 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.imx_ep_struct*, %struct.imx_ep_struct** %2, align 8
  %11 = call i32 @EP_NO(%struct.imx_ep_struct* %10)
  %12 = call i64 @USB_EP_STAT(i32 %11)
  %13 = add nsw i64 %9, %12
  %14 = call i32 @__raw_readl(i64 %13)
  %15 = load i32, i32* @EPSTAT_BCOUNT, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 16
  ret i32 %17
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @USB_EP_STAT(i32) #1

declare dso_local i32 @EP_NO(%struct.imx_ep_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
