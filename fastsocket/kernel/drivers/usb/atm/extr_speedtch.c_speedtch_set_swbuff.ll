; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_speedtch.c_speedtch_set_swbuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_speedtch.c_speedtch_set_swbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.speedtch_instance_data = type { %struct.usbatm_data* }
%struct.usbatm_data = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%sabling SW buffering: usb_control_msg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"speedtch_set_swbuff: %sbled SW buffering\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.speedtch_instance_data*, i32)* @speedtch_set_swbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speedtch_set_swbuff(%struct.speedtch_instance_data* %0, i32 %1) #0 {
  %3 = alloca %struct.speedtch_instance_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbatm_data*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.speedtch_instance_data* %0, %struct.speedtch_instance_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %9 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %8, i32 0, i32 0
  %10 = load %struct.usbatm_data*, %struct.usbatm_data** %9, align 8
  store %struct.usbatm_data* %10, %struct.usbatm_data** %5, align 8
  %11 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %12 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = call i32 @usb_sndctrlpipe(%struct.usb_device* %15, i32 0)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = load i32, i32* @CTRL_TIMEOUT, align 4
  %22 = call i32 @usb_control_msg(%struct.usb_device* %14, i32 %16, i32 50, i32 64, i32 %20, i32 0, i32* null, i32 0, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @usb_warn(%struct.usbatm_data* %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  br label %39

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %33, %25
  ret void
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_warn(%struct.usbatm_data*, i8*, i8*, i32) #1

declare dso_local i32 @dbg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
