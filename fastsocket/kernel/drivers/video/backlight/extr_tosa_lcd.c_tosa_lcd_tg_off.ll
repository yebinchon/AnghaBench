; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_tg_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_tg_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tosa_lcd_data = type { %struct.spi_device* }
%struct.spi_device = type { i32 }

@TG_PINICTL = common dso_local global i32 0, align 4
@TOSA_GPIO_TG_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tosa_lcd_data*)* @tosa_lcd_tg_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosa_lcd_tg_off(%struct.tosa_lcd_data* %0) #0 {
  %2 = alloca %struct.tosa_lcd_data*, align 8
  %3 = alloca %struct.spi_device*, align 8
  store %struct.tosa_lcd_data* %0, %struct.tosa_lcd_data** %2, align 8
  %4 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %2, align 8
  %5 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %4, i32 0, i32 0
  %6 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  store %struct.spi_device* %6, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = load i32, i32* @TG_PINICTL, align 4
  %9 = call i32 @tosa_tg_send(%struct.spi_device* %7, i32 %8, i32 4)
  %10 = call i32 @mdelay(i32 50)
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = load i32, i32* @TG_PINICTL, align 4
  %13 = call i32 @tosa_tg_send(%struct.spi_device* %11, i32 %12, i32 6)
  %14 = call i32 @mdelay(i32 50)
  %15 = load i32, i32* @TOSA_GPIO_TG_ON, align 4
  %16 = call i32 @gpio_set_value(i32 %15, i32 1)
  %17 = call i32 @mdelay(i32 100)
  ret void
}

declare dso_local i32 @tosa_tg_send(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
