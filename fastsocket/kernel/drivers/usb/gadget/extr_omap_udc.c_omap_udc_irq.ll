; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_omap_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_omap_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_udc = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UDC_IRQ_SRC = common dso_local global i32 0, align 4
@UDC_DS_CHG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UDC_EP0_RX = common dso_local global i32 0, align 4
@UDC_SETUP = common dso_local global i32 0, align 4
@UDC_EP0_TX = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@UDC_TXN_DONE = common dso_local global i32 0, align 4
@UDC_RXN_CNT = common dso_local global i32 0, align 4
@UDC_RXN_EOT = common dso_local global i32 0, align 4
@UDC_IRQ_SOF = common dso_local global i32 0, align 4
@UDC_EPN_TX = common dso_local global i32 0, align 4
@UDC_EPN_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"udc_irq, unhandled %03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.omap_udc*
  store %struct.omap_udc* %10, %struct.omap_udc** %5, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.omap_udc*, %struct.omap_udc** %5, align 8
  %13 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @UDC_IRQ_SRC, align 4
  %17 = call i32 @omap_readw(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @UDC_DS_CHG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @devstate_irq(i8* %23, i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @UDC_DS_CHG, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %22, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @UDC_EP0_RX, align 4
  %34 = load i32, i32* @UDC_SETUP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UDC_EP0_TX, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ep0_irq(i8* %41, i32 %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @UDC_EP0_RX, align 4
  %46 = load i32, i32* @UDC_SETUP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UDC_EP0_TX, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %40, %31
  %54 = load i64, i64* @use_dma, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @UDC_TXN_DONE, align 4
  %59 = load i32, i32* @UDC_RXN_CNT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @UDC_RXN_EOT, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %56
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dma_irq(i8* %66, i32 %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @UDC_TXN_DONE, align 4
  %71 = load i32, i32* @UDC_RXN_CNT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @UDC_RXN_EOT, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %65, %56, %53
  %79 = load i32, i32* @UDC_IRQ_SOF, align 4
  %80 = load i32, i32* @UDC_EPN_TX, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @UDC_EPN_RX, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %78
  %93 = load %struct.omap_udc*, %struct.omap_udc** %5, align 8
  %94 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %93, i32 0, i32 0
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @devstate_irq(i8*, i32) #1

declare dso_local i32 @ep0_irq(i8*, i32) #1

declare dso_local i32 @dma_irq(i8*, i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
