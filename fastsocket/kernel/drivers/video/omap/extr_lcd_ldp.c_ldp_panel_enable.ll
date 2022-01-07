; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_ldp.c_ldp_panel_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_ldp.c_ldp_panel_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }

@PM_RECEIVER = common dso_local global i32 0, align 4
@ENABLE_VPLL2_DEDICATED = common dso_local global i32 0, align 4
@TWL4030_VPLL2_DEDICATED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENABLE_VPLL2_DEV_GRP = common dso_local global i32 0, align 4
@TWL4030_VPLL2_DEV_GRP = common dso_local global i32 0, align 4
@LCD_PANEL_ENABLE_GPIO = common dso_local global i32 0, align 4
@LCD_PANEL_BACKLIGHT_GPIO = common dso_local global i32 0, align 4
@ENABLE_VAUX3_DEDICATED = common dso_local global i32 0, align 4
@TWL4030_VAUX3_DEDICATED = common dso_local global i32 0, align 4
@ENABLE_VAUX3_DEV_GRP = common dso_local global i32 0, align 4
@TWL4030_VAUX3_DEV_GRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*)* @ldp_panel_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldp_panel_enable(%struct.lcd_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_panel*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  %4 = load i32, i32* @PM_RECEIVER, align 4
  %5 = load i32, i32* @ENABLE_VPLL2_DEDICATED, align 4
  %6 = load i32, i32* @TWL4030_VPLL2_DEDICATED, align 4
  %7 = call i64 @t2_out(i32 %4, i32 %5, i32 %6)
  %8 = icmp ne i64 0, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load i32, i32* @PM_RECEIVER, align 4
  %14 = load i32, i32* @ENABLE_VPLL2_DEV_GRP, align 4
  %15 = load i32, i32* @TWL4030_VPLL2_DEV_GRP, align 4
  %16 = call i64 @t2_out(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 0, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %12
  %22 = load i32, i32* @LCD_PANEL_ENABLE_GPIO, align 4
  %23 = call i32 @gpio_direction_output(i32 %22, i32 1)
  %24 = load i32, i32* @LCD_PANEL_BACKLIGHT_GPIO, align 4
  %25 = call i32 @gpio_direction_output(i32 %24, i32 1)
  %26 = load i32, i32* @PM_RECEIVER, align 4
  %27 = load i32, i32* @ENABLE_VAUX3_DEDICATED, align 4
  %28 = load i32, i32* @TWL4030_VAUX3_DEDICATED, align 4
  %29 = call i64 @t2_out(i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 0, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %21
  %35 = load i32, i32* @PM_RECEIVER, align 4
  %36 = load i32, i32* @ENABLE_VAUX3_DEV_GRP, align 4
  %37 = load i32, i32* @TWL4030_VAUX3_DEV_GRP, align 4
  %38 = call i64 @t2_out(i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i64 0, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %31, %18, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @t2_out(i32, i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
