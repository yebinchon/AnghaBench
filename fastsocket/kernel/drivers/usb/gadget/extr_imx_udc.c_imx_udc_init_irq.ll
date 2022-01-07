; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_udc_init_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_udc_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_udc_struct = type { i64 }

@USB_MASK = common dso_local global i64 0, align 8
@USB_INTR = common dso_local global i64 0, align 8
@IMX_USB_NB_EP = common dso_local global i32 0, align 4
@INTR_MSOF = common dso_local global i32 0, align 4
@INTR_FRAME_MATCH = common dso_local global i32 0, align 4
@EPINTR_DEVREQ = common dso_local global i32 0, align 4
@EPINTR_MDEVREQ = common dso_local global i32 0, align 4
@EPINTR_EOT = common dso_local global i32 0, align 4
@EPINTR_EOF = common dso_local global i32 0, align 4
@EPINTR_FIFO_EMPTY = common dso_local global i32 0, align 4
@EPINTR_FIFO_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_udc_init_irq(%struct.imx_udc_struct* %0) #0 {
  %2 = alloca %struct.imx_udc_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.imx_udc_struct* %0, %struct.imx_udc_struct** %2, align 8
  %4 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %5 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_MASK, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_writel(i32 -1, i64 %8)
  %10 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %11 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_INTR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @__raw_writel(i32 -1, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IMX_USB_NB_EP, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %22 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @USB_EP_MASK(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @__raw_writel(i32 511, i64 %26)
  %28 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %29 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @USB_EP_INTR(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @__raw_writel(i32 511, i64 %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* @INTR_MSOF, align 4
  %40 = load i32, i32* @INTR_FRAME_MATCH, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %43 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USB_MASK, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @__raw_writel(i32 %41, i64 %46)
  %48 = load i32, i32* @EPINTR_DEVREQ, align 4
  %49 = load i32, i32* @EPINTR_MDEVREQ, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @EPINTR_EOT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EPINTR_EOF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @EPINTR_FIFO_EMPTY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @EPINTR_FIFO_FULL, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = and i32 511, %59
  %61 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %62 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @USB_EP_MASK(i32 0)
  %65 = add nsw i64 %63, %64
  %66 = call i32 @__raw_writel(i32 %60, i64 %65)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @USB_EP_MASK(i32) #1

declare dso_local i64 @USB_EP_INTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
