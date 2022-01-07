; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i32, i32 }
%struct.usba_request = type { i32, i64, i64, i64 }
%struct.usba_ep = type { i64, i64, i32, i64, i64, %struct.TYPE_3__, %struct.usba_udc* }
%struct.TYPE_3__ = type { i32 }
%struct.usba_udc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@DBG_GADGET = common dso_local global i32 0, align 4
@DBG_QUEUE = common dso_local global i32 0, align 4
@DBG_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: queue req %p, len %u\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@DATA_STAGE_IN = common dso_local global i64 0, align 8
@STATUS_STAGE_IN = common dso_local global i64 0, align 8
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_TX_PK_RDY = common dso_local global i32 0, align 4
@USBA_RX_BK_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @usba_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usba_request*, align 8
  %9 = alloca %struct.usba_ep*, align 8
  %10 = alloca %struct.usba_udc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %14 = call %struct.usba_request* @to_usba_req(%struct.usb_request* %13)
  store %struct.usba_request* %14, %struct.usba_request** %8, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %16 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %15)
  store %struct.usba_ep* %16, %struct.usba_ep** %9, align 8
  %17 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %18 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %17, i32 0, i32 6
  %19 = load %struct.usba_udc*, %struct.usba_udc** %18, align 8
  store %struct.usba_udc* %19, %struct.usba_udc** %10, align 8
  %20 = load i32, i32* @DBG_GADGET, align 4
  %21 = load i32, i32* @DBG_QUEUE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DBG_REQ, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %26 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %30 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %31 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DBG(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.usba_request* %29, i32 %32)
  %34 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %35 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %3
  %39 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %40 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %47 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45, %38, %3
  %51 = load i32, i32* @ESHUTDOWN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %134

53:                                               ; preds = %45
  %54 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %55 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %57 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %59 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @EINPROGRESS, align 4
  %61 = sub nsw i32 0, %60
  %62 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %63 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %65 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %67 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %53
  %71 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %72 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %73 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @queue_dma(%struct.usba_udc* %71, %struct.usba_ep* %72, %struct.usba_request* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %134

76:                                               ; preds = %53
  %77 = load i32, i32* @ESHUTDOWN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  %79 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %80 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %79, i32 0, i32 0
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %84 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %76
  %88 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %89 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %88, i32 0, i32 0
  %90 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %91 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %90, i32 0, i32 2
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  %93 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %94 = call i64 @ep_is_control(%struct.usba_ep* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %98 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %96, %87
  %102 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %103 = call i64 @ep_is_control(%struct.usba_ep* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %107 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DATA_STAGE_IN, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %113 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @STATUS_STAGE_IN, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111, %105, %96
  %118 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %119 = load i32, i32* @CTL_ENB, align 4
  %120 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %121 = call i32 @usba_ep_writel(%struct.usba_ep* %118, i32 %119, i32 %120)
  br label %127

122:                                              ; preds = %111, %101
  %123 = load %struct.usba_ep*, %struct.usba_ep** %9, align 8
  %124 = load i32, i32* @CTL_ENB, align 4
  %125 = load i32, i32* @USBA_RX_BK_RDY, align 4
  %126 = call i32 @usba_ep_writel(%struct.usba_ep* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %117
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %76
  %129 = load %struct.usba_udc*, %struct.usba_udc** %10, align 8
  %130 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %129, i32 0, i32 0
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %128, %70, %50
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.usba_request* @to_usba_req(%struct.usb_request*) #1

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @DBG(i32, i8*, i32, %struct.usba_request*, i32) #1

declare dso_local i32 @queue_dma(%struct.usba_udc*, %struct.usba_ep*, %struct.usba_request*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @ep_is_control(%struct.usba_ep*) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
