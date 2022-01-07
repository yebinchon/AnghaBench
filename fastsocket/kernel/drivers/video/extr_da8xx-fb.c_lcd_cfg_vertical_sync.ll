; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_cfg_vertical_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_cfg_vertical_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_RASTER_TIMING_1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @lcd_cfg_vertical_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_cfg_vertical_sync(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @LCD_RASTER_TIMING_1_REG, align 4
  %9 = call i32 @lcdc_read(i32 %8)
  %10 = and i32 %9, 1023
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = shl i32 %12, 24
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 255
  %16 = shl i32 %15, 16
  %17 = or i32 %13, %16
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 63
  %20 = shl i32 %19, 10
  %21 = or i32 %17, %20
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @LCD_RASTER_TIMING_1_REG, align 4
  %26 = call i32 @lcdc_write(i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
