; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_locomolcd.c_locomolcd_set_intensity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_locomolcd.c_locomolcd_set_intensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@locomolcd_flags = common dso_local global i32 0, align 4
@LOCOMOLCD_SUSPENDED = common dso_local global i32 0, align 4
@locomolcd_dev = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@current_intensity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @locomolcd_set_intensity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locomolcd_set_intensity(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* @locomolcd_flags, align 4
  %26 = load i32, i32* @LOCOMOLCD_SUSPENDED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %47 [
    i32 0, label %32
    i32 1, label %35
    i32 2, label %38
    i32 3, label %41
    i32 4, label %44
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @locomolcd_dev, align 4
  %34 = call i32 @locomo_frontlight_set(i32 %33, i32 0, i32 0, i32 161)
  br label %50

35:                                               ; preds = %30
  %36 = load i32, i32* @locomolcd_dev, align 4
  %37 = call i32 @locomo_frontlight_set(i32 %36, i32 117, i32 0, i32 161)
  br label %50

38:                                               ; preds = %30
  %39 = load i32, i32* @locomolcd_dev, align 4
  %40 = call i32 @locomo_frontlight_set(i32 %39, i32 163, i32 0, i32 148)
  br label %50

41:                                               ; preds = %30
  %42 = load i32, i32* @locomolcd_dev, align 4
  %43 = call i32 @locomo_frontlight_set(i32 %42, i32 194, i32 0, i32 161)
  br label %50

44:                                               ; preds = %30
  %45 = load i32, i32* @locomolcd_dev, align 4
  %46 = call i32 @locomo_frontlight_set(i32 %45, i32 194, i32 1, i32 161)
  br label %50

47:                                               ; preds = %30
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %44, %41, %38, %35, %32
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* @current_intensity, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @locomo_frontlight_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
