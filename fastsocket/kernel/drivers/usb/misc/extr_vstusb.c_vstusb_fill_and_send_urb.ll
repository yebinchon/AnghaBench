; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_vstusb.c_vstusb_fill_and_send_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_vstusb.c_vstusb_fill_and_send_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.completion* }
%struct.usb_device = type { %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.completion = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@PIPE_INTERRUPT = common dso_local global i32 0, align 4
@usb_api_blocking_completion = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.usb_device*, i32, i8*, i32, %struct.completion*)* @vstusb_fill_and_send_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vstusb_fill_and_send_urb(%struct.urb* %0, %struct.usb_device* %1, i32 %2, i8* %3, i32 %4, %struct.completion* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.completion*, align 8
  %14 = alloca %struct.usb_host_endpoint*, align 8
  %15 = alloca %struct.usb_host_endpoint**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %8, align 8
  store %struct.usb_device* %1, %struct.usb_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.completion* %5, %struct.completion** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @usb_pipein(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 1
  %24 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %23, align 8
  br label %29

25:                                               ; preds = %6
  %26 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi %struct.usb_host_endpoint** [ %24, %21 ], [ %28, %25 ]
  store %struct.usb_host_endpoint** %30, %struct.usb_host_endpoint*** %15, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @usb_pipeendpoint(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %15, align 8
  %34 = load i32, i32* %16, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %33, i64 %35
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %36, align 8
  store %struct.usb_host_endpoint* %37, %struct.usb_host_endpoint** %14, align 8
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %39 = icmp ne %struct.usb_host_endpoint* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %29
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %94

46:                                               ; preds = %40
  %47 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %48 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 1073741823
  %58 = load i32, i32* @PIPE_INTERRUPT, align 4
  %59 = shl i32 %58, 30
  %60 = or i32 %57, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.urb*, %struct.urb** %8, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i64, i64* @usb_api_blocking_completion, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %69 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_fill_int_urb(%struct.urb* %61, %struct.usb_device* %62, i32 %63, i8* %64, i32 %65, i32 %67, i32* null, i32 %71)
  br label %82

73:                                               ; preds = %46
  %74 = load %struct.urb*, %struct.urb** %8, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i64, i64* @usb_api_blocking_completion, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @usb_fill_bulk_urb(%struct.urb* %74, %struct.usb_device* %75, i32 %76, i8* %77, i32 %78, i32 %80, i32* null)
  br label %82

82:                                               ; preds = %73, %55
  %83 = load %struct.completion*, %struct.completion** %13, align 8
  %84 = call i32 @init_completion(%struct.completion* %83)
  %85 = load %struct.completion*, %struct.completion** %13, align 8
  %86 = load %struct.urb*, %struct.urb** %8, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 1
  store %struct.completion* %85, %struct.completion** %87, align 8
  %88 = load %struct.urb*, %struct.urb** %8, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.urb*, %struct.urb** %8, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @usb_submit_urb(%struct.urb* %90, i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %82, %43
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
