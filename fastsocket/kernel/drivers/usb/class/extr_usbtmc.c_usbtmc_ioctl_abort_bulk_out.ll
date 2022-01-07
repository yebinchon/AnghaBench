; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USBTMC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"INITIATE_ABORT_BULK_OUT returned %x\0A\00", align 1
@USBTMC_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CHECK_ABORT_BULK_OUT returned %x\0A\00", align 1
@USBTMC_STATUS_PENDING = common dso_local global i32 0, align 4
@USBTMC_MAX_READS_TO_CLEAR_BULK_IN = common dso_local global i32 0, align 4
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*)* @usbtmc_ioctl_abort_bulk_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_abort_bulk_out(%struct.usbtmc_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtmc_device_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %3, align 8
  %8 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %9 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 8, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %154

19:                                               ; preds = %1
  %20 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %21 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %24 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_rcvctrlpipe(i32 %25, i32 0)
  %27 = load i32, i32* @USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT, align 4
  %28 = load i32, i32* @USB_DIR_IN, align 4
  %29 = load i32, i32* @USB_TYPE_CLASS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %34 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %37 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(i32 %22, i32 %26, i32 %27, i32 %32, i32 %35, i32 %38, i32* %39, i32 2, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %19
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %150

48:                                               ; preds = %19
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %150

67:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %118, %67
  %69 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %70 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %73 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_rcvctrlpipe(i32 %74, i32 0)
  %76 = load i32, i32* @USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS, align 4
  %77 = load i32, i32* @USB_DIR_IN, align 4
  %78 = load i32, i32* @USB_TYPE_CLASS, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %83 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %87 = call i32 @usb_control_msg(i32 %71, i32 %75, i32 %76, i32 %81, i32 0, i32 %84, i32* %85, i32 8, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %68
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %150

96:                                               ; preds = %68
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %122

108:                                              ; preds = %96
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @USBTMC_STATUS_PENDING, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %68

119:                                              ; preds = %114, %108
  %120 = load i32, i32* @EPERM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %150

122:                                              ; preds = %107
  %123 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %124 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %127 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @usb_sndctrlpipe(i32 %128, i32 0)
  %130 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %131 = load i32, i32* @USB_DIR_OUT, align 4
  %132 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %137 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %138 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %142 = call i32 @usb_control_msg(i32 %125, i32 %129, i32 %130, i32 %135, i32 %136, i32 %139, i32* %140, i32 0, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %122
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @dev_err(%struct.device* %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %150

149:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %149, %145, %119, %92, %59, %44
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @kfree(i32* %151)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %150, %16
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
