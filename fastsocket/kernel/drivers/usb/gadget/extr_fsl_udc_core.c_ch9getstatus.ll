; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_ch9getstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_ch9getstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { i32, i32, %struct.fsl_req*, i32, %struct.fsl_ep* }
%struct.fsl_req = type { i32, i64, %struct.TYPE_2__, %struct.fsl_ep* }
%struct.TYPE_2__ = type { i32, i32*, i64, i32, i64 }
%struct.fsl_ep = type { i32, i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@DATA_STATE_XMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*, i32, i32, i32, i32)* @ch9getstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9getstatus(%struct.fsl_udc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fsl_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fsl_req*, align 8
  %13 = alloca %struct.fsl_ep*, align 8
  %14 = alloca %struct.fsl_ep*, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %16 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %15, i32 0, i32 4
  %17 = load %struct.fsl_ep*, %struct.fsl_ep** %16, align 8
  %18 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %17, i64 0
  store %struct.fsl_ep* %18, %struct.fsl_ep** %13, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @USB_RECIP_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %28 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %67

34:                                               ; preds = %5
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @USB_RECIP_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %66

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @USB_RECIP_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @get_pipe_by_windex(i32 %49)
  %51 = call %struct.fsl_ep* @get_ep_by_pipe(%struct.fsl_udc* %48, i32 %50)
  store %struct.fsl_ep* %51, %struct.fsl_ep** %14, align 8
  %52 = load %struct.fsl_ep*, %struct.fsl_ep** %14, align 8
  %53 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %117

57:                                               ; preds = %47
  %58 = load %struct.fsl_ep*, %struct.fsl_ep** %14, align 8
  %59 = call i32 @ep_index(%struct.fsl_ep* %58)
  %60 = load %struct.fsl_ep*, %struct.fsl_ep** %14, align 8
  %61 = call i32 @ep_is_in(%struct.fsl_ep* %60)
  %62 = call i32 @dr_ep_get_stall(i32 %59, i32 %61)
  %63 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %57, %41
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %24
  %68 = load i32, i32* @USB_DIR_IN, align 4
  %69 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %70 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %72 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %71, i32 0, i32 2
  %73 = load %struct.fsl_req*, %struct.fsl_req** %72, align 8
  store %struct.fsl_req* %73, %struct.fsl_req** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @cpu_to_le16(i32 %74)
  %76 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %77 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  store i32 %75, i32* %80, align 4
  %81 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %82 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %83 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %82, i32 0, i32 3
  store %struct.fsl_ep* %81, %struct.fsl_ep** %83, align 8
  %84 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %85 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 2, i32* %86, align 8
  %87 = load i32, i32* @EINPROGRESS, align 4
  %88 = sub nsw i32 0, %87
  %89 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %90 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 8
  %92 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %93 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %96 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %99 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %101 = call i64 @fsl_req_to_dtd(%struct.fsl_req* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %67
  %104 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %105 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %106 = call i32 @fsl_queue_td(%struct.fsl_ep* %104, %struct.fsl_req* %105)
  br label %108

107:                                              ; preds = %67
  br label %117

108:                                              ; preds = %103
  %109 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %110 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %109, i32 0, i32 0
  %111 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %112 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %111, i32 0, i32 0
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  %114 = load i32, i32* @DATA_STATE_XMIT, align 4
  %115 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %116 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %120

117:                                              ; preds = %107, %56
  %118 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %119 = call i32 @ep0stall(%struct.fsl_udc* %118)
  br label %120

120:                                              ; preds = %117, %108
  ret void
}

declare dso_local %struct.fsl_ep* @get_ep_by_pipe(%struct.fsl_udc*, i32) #1

declare dso_local i32 @get_pipe_by_windex(i32) #1

declare dso_local i32 @dr_ep_get_stall(i32, i32) #1

declare dso_local i32 @ep_index(%struct.fsl_ep*) #1

declare dso_local i32 @ep_is_in(%struct.fsl_ep*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @fsl_req_to_dtd(%struct.fsl_req*) #1

declare dso_local i32 @fsl_queue_td(%struct.fsl_ep*, %struct.fsl_req*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ep0stall(%struct.fsl_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
