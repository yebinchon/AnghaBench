; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_progear_bl.c_progearbl_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_progear_bl.c_progearbl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@PCI_VENDOR_ID_AL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AL_M7101 = common dso_local global i32 0, align 4
@pmu_dev = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"ALI M7101 PMU not found.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AL_M1533 = common dso_local global i32 0, align 4
@sb_dev = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"ALI 1533 SB not found.\0A\00", align 1
@SB_MPS1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"progear-bl\00", align 1
@progearbl_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@HW_LEVEL_MAX = common dso_local global i8* null, align 8
@HW_LEVEL_MIN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @progearbl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @progearbl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @PCI_VENDOR_ID_AL, align 4
  %7 = load i32, i32* @PCI_DEVICE_ID_AL_M7101, align 4
  %8 = call i8* @pci_get_device(i32 %6, i32 %7, i32* null)
  store i8* %8, i8** @pmu_dev, align 8
  %9 = load i8*, i8** @pmu_dev, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load i32, i32* @PCI_VENDOR_ID_AL, align 4
  %17 = load i32, i32* @PCI_DEVICE_ID_AL_M1533, align 4
  %18 = call i8* @pci_get_device(i32 %16, i32 %17, i32* null)
  store i8* %18, i8** @sb_dev, align 8
  %19 = load i8*, i8** @sb_dev, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** @pmu_dev, align 8
  %24 = call i32 @pci_dev_put(i8* %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %15
  %28 = load i8*, i8** @sb_dev, align 8
  %29 = load i32, i32* @SB_MPS1, align 4
  %30 = call i32 @pci_read_config_byte(i8* %28, i32 %29, i32* %4)
  %31 = load i8*, i8** @sb_dev, align 8
  %32 = load i32, i32* @SB_MPS1, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 32
  %35 = call i32 @pci_write_config_byte(i8* %31, i32 %32, i32 %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %37, i32* null, i32* @progearbl_ops)
  store %struct.backlight_device* %38, %struct.backlight_device** %5, align 8
  %39 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %40 = call i64 @IS_ERR(%struct.backlight_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %44 = call i32 @PTR_ERR(%struct.backlight_device* %43)
  store i32 %44, i32* %2, align 4
  br label %73

45:                                               ; preds = %27
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.backlight_device* %47)
  %49 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %50 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %51 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load i8*, i8** @HW_LEVEL_MAX, align 8
  %54 = load i8*, i8** @HW_LEVEL_MIN, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %60 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** @HW_LEVEL_MAX, align 8
  %63 = load i8*, i8** @HW_LEVEL_MIN, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %69 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %72 = call i32 @progearbl_set_intensity(%struct.backlight_device* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %45, %42, %21, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pci_dev_put(i8*) #1

declare dso_local i32 @pci_read_config_byte(i8*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(i8*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @progearbl_set_intensity(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
