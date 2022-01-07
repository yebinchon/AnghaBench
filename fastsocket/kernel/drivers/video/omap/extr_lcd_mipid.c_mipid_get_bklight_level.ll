; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_get_bklight_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_get_bklight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.mipid_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mipid_platform_data* }
%struct.mipid_platform_data = type { i32 (%struct.mipid_platform_data*)* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*)* @mipid_get_bklight_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_get_bklight_level(%struct.lcd_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_panel*, align 8
  %4 = alloca %struct.mipid_device*, align 8
  %5 = alloca %struct.mipid_platform_data*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  %6 = load %struct.lcd_panel*, %struct.lcd_panel** %3, align 8
  %7 = call %struct.mipid_device* @to_mipid_device(%struct.lcd_panel* %6)
  store %struct.mipid_device* %7, %struct.mipid_device** %4, align 8
  %8 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %9 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %12, align 8
  store %struct.mipid_platform_data* %13, %struct.mipid_platform_data** %5, align 8
  %14 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.mipid_platform_data, %struct.mipid_platform_data* %14, i32 0, i32 0
  %16 = load i32 (%struct.mipid_platform_data*)*, i32 (%struct.mipid_platform_data*)** %15, align 8
  %17 = icmp eq i32 (%struct.mipid_platform_data*)* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.mipid_platform_data, %struct.mipid_platform_data* %22, i32 0, i32 0
  %24 = load i32 (%struct.mipid_platform_data*)*, i32 (%struct.mipid_platform_data*)** %23, align 8
  %25 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %5, align 8
  %26 = call i32 %24(%struct.mipid_platform_data* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.mipid_device* @to_mipid_device(%struct.lcd_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
