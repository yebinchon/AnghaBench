; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_2430sdp.c_sdp2430_panel_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_2430sdp.c_sdp2430_panel_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }

@TWL4030_VAUX3_DEDICATED = common dso_local global i32 0, align 4
@ENABLE_VAUX3_DEDICATED = common dso_local global i32 0, align 4
@TWL4030_VAUX3_DEV_GRP = common dso_local global i32 0, align 4
@ENABLE_VAUX3_DEV_GRP = common dso_local global i32 0, align 4
@OMAP3430_REV_ES1_0 = common dso_local global i64 0, align 8
@PM_RECEIVER = common dso_local global i32 0, align 4
@ENABLE_VPLL2_DEDICATED = common dso_local global i32 0, align 4
@TWL4030_VPLL2_DEDICATED = common dso_local global i32 0, align 4
@ENABLE_VPLL2_DEV_GRP = common dso_local global i32 0, align 4
@TWL4030_VPLL2_DEV_GRP = common dso_local global i32 0, align 4
@TWL4030_VAUX2_DEDICATED = common dso_local global i32 0, align 4
@ENABLE_VAUX2_DEDICATED = common dso_local global i32 0, align 4
@TWL4030_VAUX2_DEV_GRP = common dso_local global i32 0, align 4
@ENABLE_VAUX2_DEV_GRP = common dso_local global i32 0, align 4
@enable_gpio = common dso_local global i32 0, align 4
@backlight_gpio = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*)* @sdp2430_panel_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp2430_panel_enable(%struct.lcd_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_panel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  %8 = call i64 (...) @machine_is_omap_3430sdp()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @TWL4030_VAUX3_DEDICATED, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @ENABLE_VAUX3_DEDICATED, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @TWL4030_VAUX3_DEV_GRP, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @ENABLE_VAUX3_DEV_GRP, align 4
  store i32 %14, i32* %6, align 4
  %15 = call i64 (...) @omap_rev()
  %16 = load i64, i64* @OMAP3430_REV_ES1_0, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load i32, i32* @PM_RECEIVER, align 4
  %20 = load i32, i32* @ENABLE_VPLL2_DEDICATED, align 4
  %21 = load i32, i32* @TWL4030_VPLL2_DEDICATED, align 4
  %22 = call i64 @t2_out(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @PM_RECEIVER, align 4
  %24 = load i32, i32* @ENABLE_VPLL2_DEV_GRP, align 4
  %25 = load i32, i32* @TWL4030_VPLL2_DEV_GRP, align 4
  %26 = call i64 @t2_out(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %10
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @TWL4030_VAUX2_DEDICATED, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @ENABLE_VAUX2_DEDICATED, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @TWL4030_VAUX2_DEV_GRP, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ENABLE_VAUX2_DEV_GRP, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* @enable_gpio, align 4
  %35 = call i32 @gpio_set_value(i32 %34, i32 1)
  %36 = load i32, i32* @backlight_gpio, align 4
  %37 = call i32 @gpio_set_value(i32 %36, i32 1)
  %38 = load i32, i32* @PM_RECEIVER, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @t2_out(i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %56

46:                                               ; preds = %33
  %47 = load i32, i32* @PM_RECEIVER, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @t2_out(i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i64 0, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52, %43
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @machine_is_omap_3430sdp(...) #1

declare dso_local i64 @omap_rev(...) #1

declare dso_local i64 @t2_out(i32, i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
