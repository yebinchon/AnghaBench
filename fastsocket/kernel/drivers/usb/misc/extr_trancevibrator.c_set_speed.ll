; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_trancevibrator.c_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_trancevibrator.c_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.trancevibrator = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"speed = %d\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_speed(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.trancevibrator*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.usb_interface* @to_usb_interface(%struct.device* %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %10, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %18 = call %struct.trancevibrator* @usb_get_intfdata(%struct.usb_interface* %17)
  store %struct.trancevibrator* %18, %struct.trancevibrator** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i32* null, i32 10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp sgt i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 255, i32* %12, align 4
  br label %29

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %31 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %35 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %37 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %41 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %45 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %48 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %49, i32 0)
  %51 = load i32, i32* @USB_DIR_IN, align 4
  %52 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @USB_RECIP_OTHER, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %57 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %60 = call i32 @usb_control_msg(%struct.TYPE_3__* %46, i32 %50, i32 1, i32 %55, i32 %58, i32 0, i32* null, i32 0, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %29
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %66 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %68 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %77

74:                                               ; preds = %29
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %63
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.trancevibrator* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
