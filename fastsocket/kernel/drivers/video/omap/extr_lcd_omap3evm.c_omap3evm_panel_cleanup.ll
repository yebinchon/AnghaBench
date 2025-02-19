; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_omap3evm.c_omap3evm_panel_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_omap3evm.c_omap3evm_panel_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }

@LCD_PANEL_QVGA = common dso_local global i32 0, align 4
@LCD_PANEL_RESB = common dso_local global i32 0, align 4
@LCD_PANEL_INI = common dso_local global i32 0, align 4
@LCD_PANEL_UD = common dso_local global i32 0, align 4
@LCD_PANEL_LR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcd_panel*)* @omap3evm_panel_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap3evm_panel_cleanup(%struct.lcd_panel* %0) #0 {
  %2 = alloca %struct.lcd_panel*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %2, align 8
  %3 = load i32, i32* @LCD_PANEL_QVGA, align 4
  %4 = call i32 @gpio_free(i32 %3)
  %5 = load i32, i32* @LCD_PANEL_RESB, align 4
  %6 = call i32 @gpio_free(i32 %5)
  %7 = load i32, i32* @LCD_PANEL_INI, align 4
  %8 = call i32 @gpio_free(i32 %7)
  %9 = load i32, i32* @LCD_PANEL_UD, align 4
  %10 = call i32 @gpio_free(i32 %9)
  %11 = load i32, i32* @LCD_PANEL_LR, align 4
  %12 = call i32 @gpio_free(i32 %11)
  ret void
}

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
