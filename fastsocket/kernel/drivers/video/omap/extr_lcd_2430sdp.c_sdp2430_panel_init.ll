; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_2430sdp.c_sdp2430_panel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_2430sdp.c_sdp2430_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.omapfb_device = type { i32 }

@SDP3430_LCD_PANEL_ENABLE_GPIO = common dso_local global i32 0, align 4
@enable_gpio = common dso_local global i32 0, align 4
@SDP3430_LCD_PANEL_BACKLIGHT_GPIO = common dso_local global i32 0, align 4
@backlight_gpio = common dso_local global i32 0, align 4
@SDP2430_LCD_PANEL_ENABLE_GPIO = common dso_local global i32 0, align 4
@SDP2430_LCD_PANEL_BACKLIGHT_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"LCD enable\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"LCD bl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*, %struct.omapfb_device*)* @sdp2430_panel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp2430_panel_init(%struct.lcd_panel* %0, %struct.omapfb_device* %1) #0 {
  %3 = alloca %struct.lcd_panel*, align 8
  %4 = alloca %struct.omapfb_device*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  store %struct.omapfb_device* %1, %struct.omapfb_device** %4, align 8
  %5 = call i64 (...) @machine_is_omap_3430sdp()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @SDP3430_LCD_PANEL_ENABLE_GPIO, align 4
  store i32 %8, i32* @enable_gpio, align 4
  %9 = load i32, i32* @SDP3430_LCD_PANEL_BACKLIGHT_GPIO, align 4
  store i32 %9, i32* @backlight_gpio, align 4
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @SDP2430_LCD_PANEL_ENABLE_GPIO, align 4
  store i32 %11, i32* @enable_gpio, align 4
  %12 = load i32, i32* @SDP2430_LCD_PANEL_BACKLIGHT_GPIO, align 4
  store i32 %12, i32* @backlight_gpio, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @enable_gpio, align 4
  %15 = call i32 @gpio_request(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @backlight_gpio, align 4
  %17 = call i32 @gpio_request(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @enable_gpio, align 4
  %19 = call i32 @gpio_direction_output(i32 %18, i32 0)
  %20 = load i32, i32* @backlight_gpio, align 4
  %21 = call i32 @gpio_direction_output(i32 %20, i32 0)
  ret i32 0
}

declare dso_local i64 @machine_is_omap_3430sdp(...) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
