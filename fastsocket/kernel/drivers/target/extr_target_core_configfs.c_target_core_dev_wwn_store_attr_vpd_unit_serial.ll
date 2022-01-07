; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_wwn_store_attr_vpd_unit_serial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_wwn_store_attr_vpd_unit_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_wwn = type { %struct.se_device* }
%struct.se_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@INQUIRY_VPD_SERIAL_LEN = common dso_local global i32 0, align 4
@DF_FIRMWARE_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Underlying SCSI device firmware provided VPD Unit Serial, ignoring request\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Emulated VPD Unit Serial exceeds INQUIRY_VPD_SERIAL_LEN: %d\0A\00", align 1
@EOVERFLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"Unable to set VPD Unit Serial while active %d $FABRIC_MOD exports exist\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DF_EMULATED_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Target_Core_ConfigFS: Set emulated VPD Unit Serial: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.t10_wwn*, i8*, i64)* @target_core_dev_wwn_store_attr_vpd_unit_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_core_dev_wwn_store_attr_vpd_unit_serial(%struct.t10_wwn* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.t10_wwn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.t10_wwn* %0, %struct.t10_wwn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.t10_wwn*, %struct.t10_wwn** %5, align 8
  %13 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %12, i32 0, i32 0
  %14 = load %struct.se_device*, %struct.se_device** %13, align 8
  store %struct.se_device* %14, %struct.se_device** %8, align 8
  %15 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.se_device*, %struct.se_device** %8, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DF_FIRMWARE_VPD_UNIT_SERIAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @EOPNOTSUPP, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @EOVERFLOW, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

39:                                               ; preds = %29
  %40 = load %struct.se_device*, %struct.se_device** %8, align 8
  %41 = getelementptr inbounds %struct.se_device, %struct.se_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.se_device*, %struct.se_device** %8, align 8
  %46 = getelementptr inbounds %struct.se_device, %struct.se_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

51:                                               ; preds = %39
  %52 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %53 = call i32 @memset(i8* %18, i32 0, i32 %52)
  %54 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @snprintf(i8* %18, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load %struct.se_device*, %struct.se_device** %8, align 8
  %58 = getelementptr inbounds %struct.se_device, %struct.se_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %62 = call i8* @strstrip(i8* %18)
  %63 = call i32 @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @DF_EMULATED_VPD_UNIT_SERIAL, align 4
  %65 = load %struct.se_device*, %struct.se_device** %8, align 8
  %66 = getelementptr inbounds %struct.se_device, %struct.se_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.se_device*, %struct.se_device** %8, align 8
  %70 = getelementptr inbounds %struct.se_device, %struct.se_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %51, %44, %34, %25
  %76 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strstrip(i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
