; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_unmap_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_unmap_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i32 }
%struct.s3c_hsotg_ep = type { i64 }
%struct.s3c_hsotg_req = type { i64, %struct.usb_request }
%struct.usb_request = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsotg*, %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_req*)* @s3c_hsotg_unmap_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsotg_unmap_dma(%struct.s3c_hsotg* %0, %struct.s3c_hsotg_ep* %1, %struct.s3c_hsotg_req* %2) #0 {
  %4 = alloca %struct.s3c_hsotg*, align 8
  %5 = alloca %struct.s3c_hsotg_ep*, align 8
  %6 = alloca %struct.s3c_hsotg_req*, align 8
  %7 = alloca %struct.usb_request*, align 8
  %8 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %4, align 8
  store %struct.s3c_hsotg_ep* %1, %struct.s3c_hsotg_ep** %5, align 8
  store %struct.s3c_hsotg_req* %2, %struct.s3c_hsotg_req** %6, align 8
  %9 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %10 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %9, i32 0, i32 1
  store %struct.usb_request* %10, %struct.usb_request** %7, align 8
  %11 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %12 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %8, align 4
  %21 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %22 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %61

27:                                               ; preds = %19
  %28 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %29 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %34 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %37 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %40 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dma_unmap_single(i32 %35, i32 %38, i64 %41, i32 %42)
  %44 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %45 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %46 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %48 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %61

49:                                               ; preds = %27
  %50 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %51 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %54 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %57 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dma_sync_single(i32 %52, i32 %55, i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %26, %49, %32
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_sync_single(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
