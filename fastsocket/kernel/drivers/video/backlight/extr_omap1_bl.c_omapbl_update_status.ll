; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_omap1_bl.c_omapbl_update_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_omap1_bl.c_omapbl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.omap_backlight = type { i64, i64 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @omapbl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapbl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.omap_backlight*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %4 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %5 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %4, i32 0, i32 1
  %6 = call %struct.omap_backlight* @dev_get_drvdata(i32* %5)
  store %struct.omap_backlight* %6, %struct.omap_backlight** %3, align 8
  %7 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %8 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %11 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %17 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %23 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @omapbl_send_intensity(i64 %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %29 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %33 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %36 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.omap_backlight*, %struct.omap_backlight** %3, align 8
  %40 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %45 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %46 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @omapbl_set_power(%struct.backlight_device* %44, i64 %48)
  br label %50

50:                                               ; preds = %43, %34
  ret i32 0
}

declare dso_local %struct.omap_backlight* @dev_get_drvdata(i32*) #1

declare dso_local i32 @omapbl_send_intensity(i64) #1

declare dso_local i32 @omapbl_set_power(%struct.backlight_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
