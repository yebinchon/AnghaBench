; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_simple_alloc_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_simple_alloc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32 }
%struct.usb_device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@simple_callback = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@INTERRUPT_RATE = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.usb_device*, i32, i64)* @simple_alloc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @simple_alloc_urb(%struct.usb_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.urb*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %9)
  store %struct.urb* %10, %struct.urb** %8, align 8
  %11 = load %struct.urb*, %struct.urb** %8, align 8
  %12 = icmp ne %struct.urb* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %14, %struct.urb** %4, align 8
  br label %72

15:                                               ; preds = %3
  %16 = load %struct.urb*, %struct.urb** %8, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @simple_callback, align 4
  %21 = call i32 @usb_fill_bulk_urb(%struct.urb* %16, %struct.usb_device* %17, i32 %18, i32* null, i64 %19, i32 %20, i32* null)
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_SPEED_HIGH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @INTERRUPT_RATE, align 4
  %29 = shl i32 %28, 3
  br label %32

30:                                               ; preds = %15
  %31 = load i32, i32* @INTERRUPT_RATE, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %29, %27 ], [ %31, %30 ]
  %34 = load %struct.urb*, %struct.urb** %8, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %37 = load %struct.urb*, %struct.urb** %8, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @usb_pipein(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %44 = load %struct.urb*, %struct.urb** %8, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %32
  %49 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.urb*, %struct.urb** %8, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 2
  %54 = call i32 @usb_buffer_alloc(%struct.usb_device* %49, i64 %50, i32 %51, i32* %53)
  %55 = load %struct.urb*, %struct.urb** %8, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.urb*, %struct.urb** %8, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %48
  %62 = load %struct.urb*, %struct.urb** %8, align 8
  %63 = call i32 @usb_free_urb(%struct.urb* %62)
  store %struct.urb* null, %struct.urb** %8, align 8
  br label %70

64:                                               ; preds = %48
  %65 = load %struct.urb*, %struct.urb** %8, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @memset(i32 %67, i32 0, i64 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %71, %struct.urb** %4, align 8
  br label %72

72:                                               ; preds = %70, %13
  %73 = load %struct.urb*, %struct.urb** %4, align 8
  ret %struct.urb* %73
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i64, i32, i32*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i64, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
