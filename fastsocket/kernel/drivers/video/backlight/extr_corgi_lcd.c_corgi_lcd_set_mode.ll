; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_corgi_lcd.c_corgi_lcd_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.fb_videomode = type { i32 }
%struct.corgi_lcd = type { i32 }

@RESCTL_ADRS = common dso_local global i32 0, align 4
@RESCTL_VGA = common dso_local global i32 0, align 4
@RESCTL_QVGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, %struct.fb_videomode*)* @corgi_lcd_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corgi_lcd_set_mode(%struct.lcd_device* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca %struct.fb_videomode*, align 8
  %6 = alloca %struct.corgi_lcd*, align 8
  %7 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %4, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %5, align 8
  %8 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %9 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %8, i32 0, i32 0
  %10 = call %struct.corgi_lcd* @dev_get_drvdata(i32* %9)
  store %struct.corgi_lcd* %10, %struct.corgi_lcd** %6, align 8
  store i32 129, i32* %7, align 4
  %11 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %12 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 640
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %17 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 480
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  store i32 128, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %23 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %48

28:                                               ; preds = %21
  %29 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @lcdtg_set_phadadj(%struct.corgi_lcd* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %39 [
    i32 128, label %33
    i32 129, label %38
  ]

33:                                               ; preds = %28
  %34 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %35 = load i32, i32* @RESCTL_ADRS, align 4
  %36 = load i32, i32* @RESCTL_VGA, align 4
  %37 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %34, i32 %35, i32 %36)
  br label %44

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %28, %38
  %40 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %41 = load i32, i32* @RESCTL_ADRS, align 4
  %42 = load i32, i32* @RESCTL_QVGA, align 4
  %43 = call i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.corgi_lcd*, %struct.corgi_lcd** %6, align 8
  %47 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %27
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.corgi_lcd* @dev_get_drvdata(i32*) #1

declare dso_local i32 @lcdtg_set_phadadj(%struct.corgi_lcd*, i32) #1

declare dso_local i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
