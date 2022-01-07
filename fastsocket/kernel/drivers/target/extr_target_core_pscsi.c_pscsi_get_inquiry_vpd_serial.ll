; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_get_inquiry_vpd_serial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_get_inquiry_vpd_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.t10_wwn = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@INQUIRY_VPD_SERIAL_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DF_FIRMWARE_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.t10_wwn*)* @pscsi_get_inquiry_vpd_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pscsi_get_inquiry_vpd_serial(%struct.scsi_device* %0, %struct.t10_wwn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.t10_wwn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.t10_wwn* %1, %struct.t10_wwn** %5, align 8
  %11 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %25 = call i32 @memset(i8* %14, i32 0, i32 %24)
  %26 = load i8, i8* @INQUIRY, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %26, i8* %27, align 16
  %28 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 1, i8* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 -128, i8* %29, align 2
  %30 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, i8* %14, i64 3
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, i8* %14, i64 4
  store i8 %37, i8* %38, align 4
  %39 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %43 = load i32, i32* @HZ, align 4
  %44 = call i32 @scsi_execute_req(%struct.scsi_device* %39, i8* %14, i32 %40, i8* %41, i32 %42, i32* null, i32 %43, i32 1, i32* null)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  br label %66

48:                                               ; preds = %23
  %49 = load %struct.t10_wwn*, %struct.t10_wwn** %5, align 8
  %50 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* @INQUIRY_VPD_SERIAL_LEN, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = call i32 @snprintf(i32* %52, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @DF_FIRMWARE_VPD_UNIT_SERIAL, align 4
  %58 = load %struct.t10_wwn*, %struct.t10_wwn** %5, align 8
  %59 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @kfree(i8* %64)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

66:                                               ; preds = %47
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i32, i32* @EPERM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %66, %48, %20
  %72 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
