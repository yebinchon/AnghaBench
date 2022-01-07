; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_sysfs_show_adsl_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_sysfs_show_adsl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usbatm_data = type { %struct.cxacru_data* }
%struct.cxacru_data = type { i32* }

@CXINF_LINE_STARTABLE = common dso_local global i64 0, align 8
@cxacru_sysfs_show_adsl_state.str = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cxacru_sysfs_show_adsl_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_sysfs_show_adsl_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usbatm_data*, align 8
  %10 = alloca %struct.cxacru_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.usb_interface* @to_usb_interface(%struct.device* %12)
  store %struct.usb_interface* %13, %struct.usb_interface** %8, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %15 = call %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface* %14)
  store %struct.usbatm_data* %15, %struct.usbatm_data** %9, align 8
  %16 = load %struct.usbatm_data*, %struct.usbatm_data** %9, align 8
  %17 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %16, i32 0, i32 0
  %18 = load %struct.cxacru_data*, %struct.cxacru_data** %17, align 8
  store %struct.cxacru_data* %18, %struct.cxacru_data** %10, align 8
  %19 = load %struct.cxacru_data*, %struct.cxacru_data** %10, align 8
  %20 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @CXINF_LINE_STARTABLE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cxacru_sysfs_show_adsl_state.str, i64 0, i64 0))
  %27 = icmp sge i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* @cxacru_sysfs_show_adsl_state.str, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
