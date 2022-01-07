; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.mipid_device = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcd_panel*)* @mipid_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipid_disable(%struct.lcd_panel* %0) #0 {
  %2 = alloca %struct.lcd_panel*, align 8
  %3 = alloca %struct.mipid_device*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %2, align 8
  %4 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %5 = call %struct.mipid_device* @to_mipid_device(%struct.lcd_panel* %4)
  store %struct.mipid_device* %5, %struct.mipid_device** %3, align 8
  %6 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %7 = call i32 @mipid_esd_stop_check(%struct.mipid_device* %6)
  %8 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %9 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %12 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %17 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %21 = call i32 @mipid_get_bklight_level(%struct.lcd_panel* %20)
  %22 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %23 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.lcd_panel*, %struct.lcd_panel** %2, align 8
  %25 = call i32 @mipid_set_bklight_level(%struct.lcd_panel* %24, i32 0)
  %26 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %27 = call i32 @set_display_state(%struct.mipid_device* %26, i32 0)
  %28 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %29 = call i32 @set_sleep_mode(%struct.mipid_device* %28, i32 1)
  %30 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %31 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.mipid_device*, %struct.mipid_device** %3, align 8
  %33 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %19, %15
  ret void
}

declare dso_local %struct.mipid_device* @to_mipid_device(%struct.lcd_panel*) #1

declare dso_local i32 @mipid_esd_stop_check(%struct.mipid_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mipid_get_bklight_level(%struct.lcd_panel*) #1

declare dso_local i32 @mipid_set_bklight_level(%struct.lcd_panel*, i32) #1

declare dso_local i32 @set_display_state(%struct.mipid_device*, i32) #1

declare dso_local i32 @set_sleep_mode(%struct.mipid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
