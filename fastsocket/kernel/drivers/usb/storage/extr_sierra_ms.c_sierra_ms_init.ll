; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sierra_ms.c_sierra_ms_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sierra_ms.c_sierra_ms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { %struct.TYPE_2__*, %struct.usb_device* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.swoc_info = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.scsi_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"SWIMS: sierra_ms_init called\0A\00", align 1
@swi_tru_install = common dso_local global i64 0, align 8
@TRU_FORCE_MODEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"SWIMS: %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Forcing Modem Mode\0A\00", align 1
@SWIMS_SET_MODE_Modem = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"SWIMS: Failed to switch to modem mode.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TRU_FORCE_MS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Forcing Mass Storage Mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Normal SWoC Logic\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Allocation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Failed SWoC query\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Completely failed SWoC query\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Switching to Modem Mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"SWIMS: Failed to switch modem\0A\00", align 1
@dev_attr_truinst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sierra_ms_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.swoc_info*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.scsi_device*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i64 2, i64* %6, align 8
  store i32 3, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %11 = load %struct.us_data*, %struct.us_data** %3, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 1
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %8, align 8
  %14 = load %struct.us_data*, %struct.us_data** %3, align 8
  %15 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %9, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %17 = call %struct.scsi_device* @scsi_get_host_dev(%struct.Scsi_Host* %16)
  store %struct.scsi_device* %17, %struct.scsi_device** %10, align 8
  %18 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @swi_tru_install, align 8
  %20 = load i64, i64* @TRU_FORCE_MODEM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %25 = load i32, i32* @SWIMS_SET_MODE_Modem, align 4
  %26 = call i32 @sierra_set_ms_mode(%struct.usb_device* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %113

34:                                               ; preds = %1
  %35 = load i64, i64* @swi_tru_install, align 8
  %36 = load i64, i64* @TRU_FORCE_MS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %107

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.swoc_info* @kmalloc(i32 4, i32 %42)
  store %struct.swoc_info* %43, %struct.swoc_info** %7, align 8
  %44 = load %struct.swoc_info*, %struct.swoc_info** %7, align 8
  %45 = icmp ne %struct.swoc_info* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %113

50:                                               ; preds = %40
  store i32 3, i32* %5, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  %54 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %55 = load %struct.swoc_info*, %struct.swoc_info** %7, align 8
  %56 = call i32 @sierra_get_swoc_info(%struct.usb_device* %54, %struct.swoc_info* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32, i32* @HZ, align 4
  %62 = mul nsw i32 2, %61
  %63 = call i32 @schedule_timeout_uninterruptible(i32 %62)
  br label %64

64:                                               ; preds = %59, %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %51, label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %78 = load %struct.swoc_info*, %struct.swoc_info** %7, align 8
  %79 = call i32 @kfree(%struct.swoc_info* %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %113

82:                                               ; preds = %73
  %83 = load %struct.swoc_info*, %struct.swoc_info** %7, align 8
  %84 = call i32 @debug_swoc(%struct.swoc_info* %83)
  %85 = load %struct.swoc_info*, %struct.swoc_info** %7, align 8
  %86 = call i32 @containsFullLinuxPackage(%struct.swoc_info* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %82
  %89 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %90 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %91 = load i32, i32* @SWIMS_SET_MODE_Modem, align 4
  %92 = call i32 @sierra_set_ms_mode(%struct.usb_device* %90, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %88
  %98 = load %struct.swoc_info*, %struct.swoc_info** %7, align 8
  %99 = call i32 @kfree(%struct.swoc_info* %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %113

102:                                              ; preds = %82
  %103 = load %struct.swoc_info*, %struct.swoc_info** %7, align 8
  %104 = call i32 @kfree(%struct.swoc_info* %103)
  br label %105

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %38
  %108 = load %struct.us_data*, %struct.us_data** %3, align 8
  %109 = getelementptr inbounds %struct.us_data, %struct.us_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @device_create_file(i32* %111, i32* @dev_attr_truinst)
  store i32 %112, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %107, %97, %76, %46, %31
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.Scsi_Host* @us_to_host(%struct.us_data*) #1

declare dso_local %struct.scsi_device* @scsi_get_host_dev(%struct.Scsi_Host*) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @sierra_set_ms_mode(%struct.usb_device*, i32) #1

declare dso_local %struct.swoc_info* @kmalloc(i32, i32) #1

declare dso_local i32 @sierra_get_swoc_info(%struct.usb_device*, %struct.swoc_info*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @kfree(%struct.swoc_info*) #1

declare dso_local i32 @debug_swoc(%struct.swoc_info*) #1

declare dso_local i32 @containsFullLinuxPackage(%struct.swoc_info*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
