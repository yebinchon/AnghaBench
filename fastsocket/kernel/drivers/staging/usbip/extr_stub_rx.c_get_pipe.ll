; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_get_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_get_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"no such endpoint?, %d\0A\00", align 1
@USBIP_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"get pipe, epnum %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stub_device*, i32, i32)* @get_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pipe(%struct.stub_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stub_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.stub_device* %0, %struct.stub_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.stub_device*, %struct.stub_device** %5, align 8
  %12 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.TYPE_2__* %13)
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %10, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.usb_host_endpoint* @get_ep_from_epnum(%struct.usb_device* %15, i32 %16)
  store %struct.usb_host_endpoint* %17, %struct.usb_host_endpoint** %9, align 8
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %19 = icmp ne %struct.usb_host_endpoint* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.stub_device*, %struct.stub_device** %5, align 8
  %22 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %30 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %29, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %30, %struct.usb_endpoint_descriptor** %10, align 8
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %32 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @USBIP_DIR_OUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @usb_sndctrlpipe(%struct.usb_device* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %101

42:                                               ; preds = %34
  %43 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %101

46:                                               ; preds = %28
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %48 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @USBIP_DIR_OUT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @usb_sndbulkpipe(%struct.usb_device* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %101

58:                                               ; preds = %50
  %59 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %101

62:                                               ; preds = %46
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %64 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @USBIP_DIR_OUT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @usb_sndintpipe(%struct.usb_device* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %101

74:                                               ; preds = %66
  %75 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @usb_rcvintpipe(%struct.usb_device* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %101

78:                                               ; preds = %62
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %80 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @USBIP_DIR_OUT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @usb_sndisocpipe(%struct.usb_device* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %101

90:                                               ; preds = %82
  %91 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @usb_rcvisocpipe(%struct.usb_device* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %101

94:                                               ; preds = %78
  %95 = load %struct.stub_device*, %struct.stub_device** %5, align 8
  %96 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %94, %90, %86, %74, %70, %58, %54, %42, %38
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.TYPE_2__*) #1

declare dso_local %struct.usb_host_endpoint* @get_ep_from_epnum(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
