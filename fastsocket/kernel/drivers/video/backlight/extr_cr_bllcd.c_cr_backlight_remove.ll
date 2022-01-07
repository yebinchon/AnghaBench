; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_backlight_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_backlight_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cr_panel = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@lpc_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cr_backlight_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_backlight_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cr_panel*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.cr_panel* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.cr_panel* %5, %struct.cr_panel** %3, align 8
  %6 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %7 = load %struct.cr_panel*, %struct.cr_panel** %3, align 8
  %8 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %6, i32* %11, align 8
  %12 = load %struct.cr_panel*, %struct.cr_panel** %3, align 8
  %13 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.cr_panel*, %struct.cr_panel** %3, align 8
  %18 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.cr_panel*, %struct.cr_panel** %3, align 8
  %23 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @cr_backlight_set_intensity(%struct.TYPE_5__* %24)
  %26 = load %struct.cr_panel*, %struct.cr_panel** %3, align 8
  %27 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %30 = call i32 @cr_lcd_set_power(i32 %28, i32 %29)
  %31 = load %struct.cr_panel*, %struct.cr_panel** %3, align 8
  %32 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @backlight_device_unregister(%struct.TYPE_5__* %33)
  %35 = load %struct.cr_panel*, %struct.cr_panel** %3, align 8
  %36 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @lcd_device_unregister(i32 %37)
  %39 = load i32, i32* @lpc_dev, align 4
  %40 = call i32 @pci_dev_put(i32 %39)
  ret i32 0
}

declare dso_local %struct.cr_panel* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cr_backlight_set_intensity(%struct.TYPE_5__*) #1

declare dso_local i32 @cr_lcd_set_power(i32, i32) #1

declare dso_local i32 @backlight_device_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @lcd_device_unregister(i32) #1

declare dso_local i32 @pci_dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
