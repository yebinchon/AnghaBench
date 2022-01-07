; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_omap3evm.c_omap3evm_panel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_omap3evm.c_omap3evm_panel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.omapfb_device = type { i32 }

@LCD_PANEL_LR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"LCD lr\00", align 1
@LCD_PANEL_UD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"LCD ud\00", align 1
@LCD_PANEL_INI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"LCD ini\00", align 1
@LCD_PANEL_RESB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"LCD resb\00", align 1
@LCD_PANEL_QVGA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"LCD qvga\00", align 1
@TWL4030_MODULE_LED = common dso_local global i32 0, align 4
@TWL_LED_LEDEN = common dso_local global i32 0, align 4
@TWL4030_MODULE_PWMA = common dso_local global i32 0, align 4
@TWL_PWMA_PWMAON = common dso_local global i32 0, align 4
@TWL_PWMA_PWMAOFF = common dso_local global i32 0, align 4
@bklight_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*, %struct.omapfb_device*)* @omap3evm_panel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3evm_panel_init(%struct.lcd_panel* %0, %struct.omapfb_device* %1) #0 {
  %3 = alloca %struct.lcd_panel*, align 8
  %4 = alloca %struct.omapfb_device*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  store %struct.omapfb_device* %1, %struct.omapfb_device** %4, align 8
  %5 = load i32, i32* @LCD_PANEL_LR, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @LCD_PANEL_UD, align 4
  %8 = call i32 @gpio_request(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @LCD_PANEL_INI, align 4
  %10 = call i32 @gpio_request(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @LCD_PANEL_RESB, align 4
  %12 = call i32 @gpio_request(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32, i32* @LCD_PANEL_QVGA, align 4
  %14 = call i32 @gpio_request(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32, i32* @LCD_PANEL_RESB, align 4
  %16 = call i32 @gpio_direction_output(i32 %15, i32 1)
  %17 = load i32, i32* @LCD_PANEL_INI, align 4
  %18 = call i32 @gpio_direction_output(i32 %17, i32 1)
  %19 = load i32, i32* @LCD_PANEL_QVGA, align 4
  %20 = call i32 @gpio_direction_output(i32 %19, i32 0)
  %21 = load i32, i32* @LCD_PANEL_LR, align 4
  %22 = call i32 @gpio_direction_output(i32 %21, i32 1)
  %23 = load i32, i32* @LCD_PANEL_UD, align 4
  %24 = call i32 @gpio_direction_output(i32 %23, i32 1)
  %25 = load i32, i32* @TWL4030_MODULE_LED, align 4
  %26 = load i32, i32* @TWL_LED_LEDEN, align 4
  %27 = call i32 @twl4030_i2c_write_u8(i32 %25, i32 17, i32 %26)
  %28 = load i32, i32* @TWL4030_MODULE_PWMA, align 4
  %29 = load i32, i32* @TWL_PWMA_PWMAON, align 4
  %30 = call i32 @twl4030_i2c_write_u8(i32 %28, i32 1, i32 %29)
  %31 = load i32, i32* @TWL4030_MODULE_PWMA, align 4
  %32 = load i32, i32* @TWL_PWMA_PWMAOFF, align 4
  %33 = call i32 @twl4030_i2c_write_u8(i32 %31, i32 2, i32 %32)
  store i32 100, i32* @bklight_level, align 4
  ret i32 0
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @twl4030_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
