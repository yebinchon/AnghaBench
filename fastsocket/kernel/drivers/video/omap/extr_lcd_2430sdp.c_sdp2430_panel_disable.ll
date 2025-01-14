; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_2430sdp.c_sdp2430_panel_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_2430sdp.c_sdp2430_panel_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }

@enable_gpio = common dso_local global i32 0, align 4
@backlight_gpio = common dso_local global i32 0, align 4
@OMAP3430_REV_ES1_0 = common dso_local global i64 0, align 8
@PM_RECEIVER = common dso_local global i32 0, align 4
@TWL4030_VPLL2_DEDICATED = common dso_local global i32 0, align 4
@TWL4030_VPLL2_DEV_GRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcd_panel*)* @sdp2430_panel_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp2430_panel_disable(%struct.lcd_panel* %0) #0 {
  %2 = alloca %struct.lcd_panel*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %2, align 8
  %3 = load i32, i32* @enable_gpio, align 4
  %4 = call i32 @gpio_set_value(i32 %3, i32 0)
  %5 = load i32, i32* @backlight_gpio, align 4
  %6 = call i32 @gpio_set_value(i32 %5, i32 0)
  %7 = call i64 (...) @omap_rev()
  %8 = load i64, i64* @OMAP3430_REV_ES1_0, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @PM_RECEIVER, align 4
  %12 = load i32, i32* @TWL4030_VPLL2_DEDICATED, align 4
  %13 = call i32 @t2_out(i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* @PM_RECEIVER, align 4
  %15 = load i32, i32* @TWL4030_VPLL2_DEV_GRP, align 4
  %16 = call i32 @t2_out(i32 %14, i32 0, i32 %15)
  %17 = call i32 @msleep(i32 4)
  br label %18

18:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i64 @omap_rev(...) #1

declare dso_local i32 @t2_out(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
