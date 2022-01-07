; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_platform_lcd.c_platform_lcd_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_platform_lcd.c_platform_lcd_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.fb_info = type { i64 }
%struct.platform_lcd = type { %struct.TYPE_2__*, %struct.plat_lcd_data* }
%struct.TYPE_2__ = type { i64 }
%struct.plat_lcd_data = type { i32 (%struct.plat_lcd_data*, %struct.fb_info.0*)* }
%struct.fb_info.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, %struct.fb_info*)* @platform_lcd_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_lcd_match(%struct.lcd_device* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.platform_lcd*, align 8
  %7 = alloca %struct.plat_lcd_data*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %9 = call %struct.platform_lcd* @to_our_lcd(%struct.lcd_device* %8)
  store %struct.platform_lcd* %9, %struct.platform_lcd** %6, align 8
  %10 = load %struct.platform_lcd*, %struct.platform_lcd** %6, align 8
  %11 = getelementptr inbounds %struct.platform_lcd, %struct.platform_lcd* %10, i32 0, i32 1
  %12 = load %struct.plat_lcd_data*, %struct.plat_lcd_data** %11, align 8
  store %struct.plat_lcd_data* %12, %struct.plat_lcd_data** %7, align 8
  %13 = load %struct.plat_lcd_data*, %struct.plat_lcd_data** %7, align 8
  %14 = getelementptr inbounds %struct.plat_lcd_data, %struct.plat_lcd_data* %13, i32 0, i32 0
  %15 = load i32 (%struct.plat_lcd_data*, %struct.fb_info.0*)*, i32 (%struct.plat_lcd_data*, %struct.fb_info.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.plat_lcd_data*, %struct.fb_info.0*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.plat_lcd_data*, %struct.plat_lcd_data** %7, align 8
  %19 = getelementptr inbounds %struct.plat_lcd_data, %struct.plat_lcd_data* %18, i32 0, i32 0
  %20 = load i32 (%struct.plat_lcd_data*, %struct.fb_info.0*)*, i32 (%struct.plat_lcd_data*, %struct.fb_info.0*)** %19, align 8
  %21 = load %struct.plat_lcd_data*, %struct.plat_lcd_data** %7, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %23 = bitcast %struct.fb_info* %22 to %struct.fb_info.0*
  %24 = call i32 %20(%struct.plat_lcd_data* %21, %struct.fb_info.0* %23)
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.platform_lcd*, %struct.platform_lcd** %6, align 8
  %27 = getelementptr inbounds %struct.platform_lcd, %struct.platform_lcd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %25, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.platform_lcd* @to_our_lcd(%struct.lcd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
