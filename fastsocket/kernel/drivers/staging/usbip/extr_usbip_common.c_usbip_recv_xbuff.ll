; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_recv_xbuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_recv_xbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_device = type { i64, i32 }
%struct.urb = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@USBIP_STUB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"recv xbuf, %d\0A\00", align 1
@SDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@VDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_recv_xbuff(%struct.usbip_device* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbip_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbip_device* %0, %struct.usbip_device** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %9 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USBIP_STUB, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @usb_pipein(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %77

20:                                               ; preds = %13
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @usb_pipeout(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %77

31:                                               ; preds = %24
  %32 = load %struct.urb*, %struct.urb** %5, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %20
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %77

39:                                               ; preds = %35
  %40 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %41 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @usbip_xmit(i32 0, i32 %42, i8* %46, i32 %47, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %39
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %60 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USBIP_STUB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %66 = load i32, i32* @SDEV_EVENT_ERROR_TCP, align 4
  %67 = call i32 @usbip_event_add(%struct.usbip_device* %65, i32 %66)
  br label %74

68:                                               ; preds = %52
  %69 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %70 = load i32, i32* @VDEV_EVENT_ERROR_TCP, align 4
  %71 = call i32 @usbip_event_add(%struct.usbip_device* %69, i32 %70)
  %72 = load i32, i32* @EPIPE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %68, %38, %30, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @usbip_xmit(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usbip_event_add(%struct.usbip_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
