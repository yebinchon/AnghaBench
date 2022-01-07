; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_set_bklight_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_set_bklight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.mipid_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mipid_platform_data* }
%struct.mipid_platform_data = type { i32 (%struct.mipid_platform_data*)*, i32 (%struct.mipid_platform_data*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*, i32)* @mipid_set_bklight_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_set_bklight_level(%struct.lcd_panel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mipid_device*, align 8
  %7 = alloca %struct.mipid_platform_data*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lcd_panel*, %struct.lcd_panel** %4, align 8
  %9 = call %struct.mipid_device* @to_mipid_device(%struct.lcd_panel* %8)
  store %struct.mipid_device* %9, %struct.mipid_device** %6, align 8
  %10 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %11 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %14, align 8
  store %struct.mipid_platform_data* %15, %struct.mipid_platform_data** %7, align 8
  %16 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %7, align 8
  %17 = getelementptr inbounds %struct.mipid_platform_data, %struct.mipid_platform_data* %16, i32 0, i32 0
  %18 = load i32 (%struct.mipid_platform_data*)*, i32 (%struct.mipid_platform_data*)** %17, align 8
  %19 = icmp eq i32 (%struct.mipid_platform_data*)* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %7, align 8
  %22 = getelementptr inbounds %struct.mipid_platform_data, %struct.mipid_platform_data* %21, i32 0, i32 1
  %23 = load i32 (%struct.mipid_platform_data*, i32)*, i32 (%struct.mipid_platform_data*, i32)** %22, align 8
  %24 = icmp eq i32 (%struct.mipid_platform_data*, i32)* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %7, align 8
  %31 = getelementptr inbounds %struct.mipid_platform_data, %struct.mipid_platform_data* %30, i32 0, i32 0
  %32 = load i32 (%struct.mipid_platform_data*)*, i32 (%struct.mipid_platform_data*)** %31, align 8
  %33 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %7, align 8
  %34 = call i32 %32(%struct.mipid_platform_data* %33)
  %35 = icmp ugt i32 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %28
  %40 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %41 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %47 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %55

48:                                               ; preds = %39
  %49 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %7, align 8
  %50 = getelementptr inbounds %struct.mipid_platform_data, %struct.mipid_platform_data* %49, i32 0, i32 1
  %51 = load i32 (%struct.mipid_platform_data*, i32)*, i32 (%struct.mipid_platform_data*, i32)** %50, align 8
  %52 = load %struct.mipid_platform_data*, %struct.mipid_platform_data** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 %51(%struct.mipid_platform_data* %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %48, %44, %36, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.mipid_device* @to_mipid_device(%struct.lcd_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
