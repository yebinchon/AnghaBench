; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_recv_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_recv_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_device = type { i64, i32 }
%struct.urb = type { i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usbip_iso_packet_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"recv iso_frame_descriptor, %d\0A\00", align 1
@USBIP_STUB = common dso_local global i64 0, align 8
@SDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@VDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_recv_iso(%struct.usbip_device* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbip_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usbip_iso_packet_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbip_device* %0, %struct.usbip_device** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %12 = load %struct.urb*, %struct.urb** %5, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @usb_pipeisoc(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %102

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %102

38:                                               ; preds = %29
  %39 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %40 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @usbip_xmit(i32 0, i32 %41, i8* %42, i32 %43, i32 0)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %38
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %58 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USBIP_STUB, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %64 = load i32, i32* @SDEV_EVENT_ERROR_TCP, align 4
  %65 = call i32 @usbip_event_add(%struct.usbip_device* %63, i32 %64)
  br label %70

66:                                               ; preds = %48
  %67 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %68 = load i32, i32* @VDEV_EVENT_ERROR_TCP, align 4
  %69 = call i32 @usbip_event_add(%struct.usbip_device* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @EPIPE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %102

73:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %95, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = getelementptr i8, i8* %79, i64 %82
  %84 = bitcast i8* %83 to %struct.usbip_iso_packet_descriptor*
  store %struct.usbip_iso_packet_descriptor* %84, %struct.usbip_iso_packet_descriptor** %7, align 8
  %85 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %7, align 8
  %86 = call i32 @usbip_iso_pakcet_correct_endian(%struct.usbip_iso_packet_descriptor* %85, i32 0)
  %87 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %7, align 8
  %88 = load %struct.urb*, %struct.urb** %5, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor* %87, i32* %93, i32 0)
  br label %95

95:                                               ; preds = %78
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %74

98:                                               ; preds = %74
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %70, %35, %28, %24
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @usb_pipeisoc(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_xmit(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usbip_event_add(%struct.usbip_device*, i32) #1

declare dso_local i32 @usbip_iso_pakcet_correct_endian(%struct.usbip_iso_packet_descriptor*, i32) #1

declare dso_local i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
