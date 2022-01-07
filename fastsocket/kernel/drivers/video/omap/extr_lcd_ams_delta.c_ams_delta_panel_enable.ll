; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_ams_delta.c_ams_delta_panel_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_ams_delta.c_ams_delta_panel_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }

@AMS_DELTA_LATCH2_LCD_NDISP = common dso_local global i32 0, align 4
@AMS_DELTA_LATCH2_LCD_VBLEN = common dso_local global i32 0, align 4
@OMAP_PWL_CLK_ENABLE = common dso_local global i32 0, align 4
@AMS_DELTA_DEFAULT_CONTRAST = common dso_local global i32 0, align 4
@OMAP_PWL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*)* @ams_delta_panel_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_panel_enable(%struct.lcd_panel* %0) #0 {
  %2 = alloca %struct.lcd_panel*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %2, align 8
  %3 = load i32, i32* @AMS_DELTA_LATCH2_LCD_NDISP, align 4
  %4 = load i32, i32* @AMS_DELTA_LATCH2_LCD_NDISP, align 4
  %5 = call i32 @ams_delta_latch2_write(i32 %3, i32 %4)
  %6 = load i32, i32* @AMS_DELTA_LATCH2_LCD_VBLEN, align 4
  %7 = load i32, i32* @AMS_DELTA_LATCH2_LCD_VBLEN, align 4
  %8 = call i32 @ams_delta_latch2_write(i32 %6, i32 %7)
  %9 = load i32, i32* @OMAP_PWL_CLK_ENABLE, align 4
  %10 = call i32 @omap_writeb(i32 1, i32 %9)
  %11 = load i32, i32* @AMS_DELTA_DEFAULT_CONTRAST, align 4
  %12 = load i32, i32* @OMAP_PWL_ENABLE, align 4
  %13 = call i32 @omap_writeb(i32 %11, i32 %12)
  ret i32 0
}

declare dso_local i32 @ams_delta_latch2_write(i32, i32) #1

declare dso_local i32 @omap_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
