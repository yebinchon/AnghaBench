; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_atm_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_atm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { %struct.usb_interface*, %struct.cxacru_data* }
%struct.usb_interface = type { i32 }
%struct.cxacru_data = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.atm_dev = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"cxacru_atm_start\00", align 1
@CM_REQUEST_CARD_GET_MAC_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cxacru_atm_start: CARD_GET_MAC_ADDRESS returned %d\0A\00", align 1
@CREATE = common dso_local global i32 0, align 4
@CM_REQUEST_CHIP_ADSL_LINE_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"cxacru_atm_start: CHIP_ADSL_LINE_START returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"cxacru_atm_start: device_create_file failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.atm_dev*)* @cxacru_atm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_atm_start(%struct.usbatm_data* %0, %struct.atm_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbatm_data*, align 8
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca %struct.cxacru_data*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %4, align 8
  store %struct.atm_dev* %1, %struct.atm_dev** %5, align 8
  %10 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %11 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %10, i32 0, i32 1
  %12 = load %struct.cxacru_data*, %struct.cxacru_data** %11, align 8
  store %struct.cxacru_data* %12, %struct.cxacru_data** %6, align 8
  %13 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %14 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %13, i32 0, i32 0
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %7, align 8
  store i32 1, i32* %9, align 4
  %16 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %18 = load i32, i32* @CM_REQUEST_CARD_GET_MAC_ADDRESS, align 4
  %19 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %20 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @cxacru_cm(%struct.cxacru_data* %17, i32 %18, i32* null, i32 0, i32* %21, i32 8)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @atm_err(%struct.usbatm_data* %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %2
  %31 = load i32, i32* @CREATE, align 4
  %32 = call i32 @CXACRU_ALL_FILES(i32 %31)
  %33 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %34 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %37 = load i32, i32* @CM_REQUEST_CHIP_ADSL_LINE_START, align 4
  %38 = call i32 @cxacru_cm(%struct.cxacru_data* %36, i32 %37, i32* null, i32 0, i32* null, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @atm_err(%struct.usbatm_data* %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %47 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %46, i32 0, i32 3
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %50 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %59 [
    i32 129, label %52
    i32 128, label %55
    i32 131, label %58
    i32 130, label %58
  ]

52:                                               ; preds = %45
  %53 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %54 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %53, i32 0, i32 0
  store i32 131, i32* %54, align 4
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %57 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %56, i32 0, i32 0
  store i32 131, i32* %57, align 4
  br label %58

58:                                               ; preds = %45, %45, %55
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %45, %52
  %60 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %61 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %60, i32 0, i32 3
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %64 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %63, i32 0, i32 2
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %70 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @cxacru_poll_status(i32* %71)
  br label %73

73:                                               ; preds = %68, %59
  store i32 0, i32* %3, align 4
  br label %82

74:                                               ; No predecessors!
  %75 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @usb_err(%struct.usbatm_data* %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %79 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %80 = call i32 @cxacru_remove_device_files(%struct.usbatm_data* %78, %struct.atm_dev* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %74, %73, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @cxacru_cm(%struct.cxacru_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @atm_err(%struct.usbatm_data*, i8*, i32) #1

declare dso_local i32 @CXACRU_ALL_FILES(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cxacru_poll_status(i32*) #1

declare dso_local i32 @usb_err(%struct.usbatm_data*, i8*, i32) #1

declare dso_local i32 @cxacru_remove_device_files(%struct.usbatm_data*, %struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
