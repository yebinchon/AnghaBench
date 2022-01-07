; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_omap3beagle.c_omap3beagle_panel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_omap3beagle.c_omap3beagle_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.omapfb_device = type { i32 }

@LCD_PANEL_ENABLE_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"LCD enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*, %struct.omapfb_device*)* @omap3beagle_panel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3beagle_panel_init(%struct.lcd_panel* %0, %struct.omapfb_device* %1) #0 {
  %3 = alloca %struct.lcd_panel*, align 8
  %4 = alloca %struct.omapfb_device*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  store %struct.omapfb_device* %1, %struct.omapfb_device** %4, align 8
  %5 = load i32, i32* @LCD_PANEL_ENABLE_GPIO, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @gpio_request(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
