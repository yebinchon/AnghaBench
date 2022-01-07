; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.usba_ep = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.usba_udc* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.usba_udc = type { i32 }
%struct.usba_request = type { i32, i64 }

@DBG_GADGET = common dso_local global i32 0, align 4
@DBG_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ep_dequeue: %s, req %p\0A\00", align 1
@STATUS = common dso_local global i32 0, align 4
@USBA_DMA_CH_EN = common dso_local global i32 0, align 4
@EPT_RST = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*)* @usba_ep_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_dequeue(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usba_ep*, align 8
  %6 = alloca %struct.usba_udc*, align 8
  %7 = alloca %struct.usba_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %10 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %11 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %10)
  store %struct.usba_ep* %11, %struct.usba_ep** %5, align 8
  %12 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %13 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %12, i32 0, i32 4
  %14 = load %struct.usba_udc*, %struct.usba_udc** %13, align 8
  store %struct.usba_udc* %14, %struct.usba_udc** %6, align 8
  %15 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %16 = call %struct.usba_request* @to_usba_req(%struct.usb_request* %15)
  store %struct.usba_request* %16, %struct.usba_request** %7, align 8
  %17 = load i32, i32* @DBG_GADGET, align 4
  %18 = load i32, i32* @DBG_QUEUE, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %21 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.usba_request*, %struct.usba_request** %7, align 8
  %25 = call i32 @DBG(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.usba_request* %24)
  %26 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %27 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.usba_request*, %struct.usba_request** %7, align 8
  %31 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %2
  %35 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %36 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.usba_request*, %struct.usba_request** %7, align 8
  %40 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %39, i32 0, i32 0
  %41 = icmp eq i32* %38, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %34
  %43 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %44 = load i32, i32* @STATUS, align 4
  %45 = call i32 @usba_dma_readl(%struct.usba_ep* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @USBA_DMA_CH_EN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %52 = call i32 @stop_dma(%struct.usba_ep* %51, i32* %9)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %55 = load i32, i32* @EPT_RST, align 4
  %56 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %57 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 1, %58
  %60 = call i32 @usba_writel(%struct.usba_udc* %54, i32 %55, i32 %59)
  %61 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %62 = load %struct.usba_request*, %struct.usba_request** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @usba_update_req(%struct.usba_ep* %61, %struct.usba_request* %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %34
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.usba_request*, %struct.usba_request** %7, align 8
  %68 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %67, i32 0, i32 0
  %69 = call i32 @list_del_init(i32* %68)
  %70 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %71 = load %struct.usba_request*, %struct.usba_request** %7, align 8
  %72 = load i32, i32* @ECONNRESET, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @request_complete(%struct.usba_ep* %70, %struct.usba_request* %71, i32 %73)
  %75 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %76 = call i32 @submit_next_request(%struct.usba_ep* %75)
  %77 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %78 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %77, i32 0, i32 0
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  ret i32 0
}

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local %struct.usba_request* @to_usba_req(%struct.usb_request*) #1

declare dso_local i32 @DBG(i32, i8*, i32, %struct.usba_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usba_dma_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @stop_dma(%struct.usba_ep*, i32*) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @usba_update_req(%struct.usba_ep*, %struct.usba_request*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @request_complete(%struct.usba_ep*, %struct.usba_request*, i32) #1

declare dso_local i32 @submit_next_request(%struct.usba_ep*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
