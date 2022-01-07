; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_davinci.c_musb_platform_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_davinci.c_musb_platform_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32 }

@DAVINCI_USB_INT_MASK_CLR_REG = common dso_local global i32 0, align 4
@DAVINCI_USB_USBINT_MASK = common dso_local global i32 0, align 4
@DAVINCI_USB_TXINT_MASK = common dso_local global i32 0, align 4
@DAVINCI_USB_RXINT_MASK = common dso_local global i32 0, align 4
@MUSB_DEVCTL = common dso_local global i32 0, align 4
@DAVINCI_USB_EOI_REG = common dso_local global i32 0, align 4
@dma_off = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dma still active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_platform_disable(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %3 = load %struct.musb*, %struct.musb** %2, align 8
  %4 = getelementptr inbounds %struct.musb, %struct.musb* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DAVINCI_USB_INT_MASK_CLR_REG, align 4
  %7 = load i32, i32* @DAVINCI_USB_USBINT_MASK, align 4
  %8 = load i32, i32* @DAVINCI_USB_TXINT_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DAVINCI_USB_RXINT_MASK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @musb_writel(i32 %5, i32 %6, i32 %11)
  %13 = load %struct.musb*, %struct.musb** %2, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MUSB_DEVCTL, align 4
  %17 = call i32 @musb_writeb(i32 %15, i32 %16, i32 0)
  %18 = load %struct.musb*, %struct.musb** %2, align 8
  %19 = getelementptr inbounds %struct.musb, %struct.musb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DAVINCI_USB_EOI_REG, align 4
  %22 = call i32 @musb_writel(i32 %20, i32 %21, i32 0)
  %23 = call i64 (...) @is_dma_capable()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @dma_off, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 @WARNING(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25, %1
  ret void
}

declare dso_local i32 @musb_writel(i32, i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i64 @is_dma_capable(...) #1

declare dso_local i32 @WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
