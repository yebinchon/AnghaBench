; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_request_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_ep = type { %struct.TYPE_5__, i64, %struct.usba_udc* }
%struct.TYPE_5__ = type { i32 }
%struct.usba_udc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usba_request = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)*, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@DBG_GADGET = common dso_local global i32 0, align 4
@DBG_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: req %p complete: status %d, actual %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usba_ep*, %struct.usba_request*, i32)* @request_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_complete(%struct.usba_ep* %0, %struct.usba_request* %1, i32 %2) #0 {
  %4 = alloca %struct.usba_ep*, align 8
  %5 = alloca %struct.usba_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usba_udc*, align 8
  store %struct.usba_ep* %0, %struct.usba_ep** %4, align 8
  store %struct.usba_request* %1, %struct.usba_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %9 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %8, i32 0, i32 2
  %10 = load %struct.usba_udc*, %struct.usba_udc** %9, align 8
  store %struct.usba_udc* %10, %struct.usba_udc** %7, align 8
  %11 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %12 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %11, i32 0, i32 2
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %19 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EINPROGRESS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %28 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %32 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %37 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %41 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %45 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %49 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %56

54:                                               ; preds = %35
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @dma_unmap_single(i32* %39, i32 %43, i32 %47, i32 %57)
  %59 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %60 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %61 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %64 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %30
  %66 = load i32, i32* @DBG_GADGET, align 4
  %67 = load i32, i32* @DBG_REQ, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %70 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %74 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %75 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %79 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DBG(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %72, %struct.usba_request* %73, i32 %77, i32 %81)
  %83 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %84 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %87 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)** %88, align 8
  %90 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %91 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %90, i32 0, i32 0
  %92 = load %struct.usba_request*, %struct.usba_request** %5, align 8
  %93 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %92, i32 0, i32 0
  %94 = call i32 %89(%struct.TYPE_5__* %91, %struct.TYPE_6__* %93)
  %95 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %96 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, %struct.usba_request*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
