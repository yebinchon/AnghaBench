; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_lh7a40x_handle_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_lh7a40x_handle_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lh7a40x_udc = type { %struct.lh7a40x_ep* }
%struct.lh7a40x_ep = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"GET_STATUS: USB_RECIP_INTERFACE\0A\00", align 1
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GET_STATUS: USB_RECIP_DEVICE\0A\00", align 1
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"GET_STATUS: USB_RECIP_ENDPOINT (%d), ctrl->wLength = %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EP0_SEND_STALL = common dso_local global i32 0, align 4
@USB_IN_CSR1_SEND_STALL = common dso_local global i32 0, align 4
@USB_OUT_CSR1_SEND_STALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"GET_STATUS, ep: %d (%x), val = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown REQ TYPE: %d\0A\00", align 1
@EP0_CLR_OUT = common dso_local global i32 0, align 4
@USB_EP0_CSR = common dso_local global i32 0, align 4
@EP0_IN_PKT_RDY = common dso_local global i32 0, align 4
@EP0_DATA_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lh7a40x_udc*, %struct.usb_ctrlrequest*)* @lh7a40x_handle_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lh7a40x_handle_get_status(%struct.lh7a40x_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lh7a40x_udc*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.lh7a40x_ep*, align 8
  %7 = alloca %struct.lh7a40x_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lh7a40x_udc* %0, %struct.lh7a40x_udc** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %11 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %12 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %11, i32 0, i32 0
  %13 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %12, align 8
  %14 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %13, i64 0
  store %struct.lh7a40x_ep* %14, %struct.lh7a40x_ep** %6, align 8
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @USB_RECIP_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @DEBUG_SETUP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %136

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @DEBUG_SETUP(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %135

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %33
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @USB_DIR_IN, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %46 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @DEBUG_SETUP(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %56, label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 3
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %37
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %147

59:                                               ; preds = %53
  %60 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %61 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %60, i32 0, i32 0
  %62 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %62, i64 %64
  store %struct.lh7a40x_ep* %65, %struct.lh7a40x_ep** %7, align 8
  %66 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %7, align 8
  %67 = call i32 @ep_is_in(%struct.lh7a40x_ep* %66)
  %68 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %69 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @USB_DIR_IN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = icmp ne i32 %67, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %59
  %78 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %7, align 8
  %79 = call i64 @ep_index(%struct.lh7a40x_ep* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %147

84:                                               ; preds = %77, %59
  %85 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %7, align 8
  %86 = call i64 @ep_index(%struct.lh7a40x_ep* %85)
  %87 = call i32 @usb_set_index(i64 %86)
  %88 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %7, align 8
  %89 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %121 [
    i32 129, label %91
    i32 131, label %101
    i32 128, label %101
    i32 130, label %111
  ]

91:                                               ; preds = %84
  %92 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %7, align 8
  %93 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_read(i32 %94)
  %96 = load i32, i32* @EP0_SEND_STALL, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @EP0_SEND_STALL, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %9, align 4
  br label %121

101:                                              ; preds = %84, %84
  %102 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %7, align 8
  %103 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @usb_read(i32 %104)
  %106 = load i32, i32* @USB_IN_CSR1_SEND_STALL, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @USB_IN_CSR1_SEND_STALL, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %9, align 4
  br label %121

111:                                              ; preds = %84
  %112 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %7, align 8
  %113 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @usb_read(i32 %114)
  %116 = load i32, i32* @USB_OUT_CSR1_SEND_STALL, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @USB_OUT_CSR1_SEND_STALL, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %84, %111, %101, %91
  %122 = call i32 @usb_set_index(i64 0)
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %125 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 (i8*, ...) @DEBUG_SETUP(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %123, i32 %126, i32 %127)
  br label %134

129:                                              ; preds = %33
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i8*, ...) @DEBUG_SETUP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EOPNOTSUPP, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %147

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %29
  br label %136

136:                                              ; preds = %135, %23
  %137 = load i32, i32* @EP0_CLR_OUT, align 4
  %138 = load i32, i32* @USB_EP0_CSR, align 4
  %139 = call i32 @usb_set(i32 %137, i32 %138)
  %140 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %6, align 8
  %141 = call i32 @lh7a40x_fifo_write(%struct.lh7a40x_ep* %140, i32* %9, i32 4)
  %142 = load i32, i32* @EP0_IN_PKT_RDY, align 4
  %143 = load i32, i32* @EP0_DATA_END, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @USB_EP0_CSR, align 4
  %146 = call i32 @usb_set(i32 %144, i32 %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %136, %129, %81, %56
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @DEBUG_SETUP(i8*, ...) #1

declare dso_local i32 @ep_is_in(%struct.lh7a40x_ep*) #1

declare dso_local i64 @ep_index(%struct.lh7a40x_ep*) #1

declare dso_local i32 @usb_set_index(i64) #1

declare dso_local i32 @usb_read(i32) #1

declare dso_local i32 @usb_set(i32, i32) #1

declare dso_local i32 @lh7a40x_fifo_write(%struct.lh7a40x_ep*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
