; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_backlight_set_intensity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_backlight_set_intensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@gpio_bar = common dso_local global i64 0, align 8
@CRVML_PANEL_PORT = common dso_local global i64 0, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@CRVML_BACKLIGHT_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @cr_backlight_set_intensity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_backlight_set_intensity(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @gpio_bar, align 8
  %11 = load i64, i64* @CRVML_PANEL_PORT, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @inl(i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %16 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %25 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %34 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %43 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i64, i64* @CRVML_BACKLIGHT_OFF, align 8
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %5, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @outl(i64 %59, i64 %60)
  br label %74

62:                                               ; preds = %50
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i64, i64* @CRVML_BACKLIGHT_OFF, align 8
  %68 = load i64, i64* %5, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @outl(i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %54
  ret i32 0
}

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @outl(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
