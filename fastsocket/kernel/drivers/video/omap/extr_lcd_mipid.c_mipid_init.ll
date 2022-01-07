; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.omapfb_device = type { i32 }
%struct.mipid_device = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32*, %struct.omapfb_device* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mipid_esd\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't create ESD workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mipid_esd_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*, %struct.omapfb_device*)* @mipid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_init(%struct.lcd_panel* %0, %struct.omapfb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_panel*, align 8
  %5 = alloca %struct.omapfb_device*, align 8
  %6 = alloca %struct.mipid_device*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %4, align 8
  store %struct.omapfb_device* %1, %struct.omapfb_device** %5, align 8
  %7 = load %struct.lcd_panel*, %struct.lcd_panel** %4, align 8
  %8 = call %struct.mipid_device* @to_mipid_device(%struct.lcd_panel* %7)
  store %struct.mipid_device* %8, %struct.mipid_device** %6, align 8
  %9 = load %struct.omapfb_device*, %struct.omapfb_device** %5, align 8
  %10 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %11 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %10, i32 0, i32 6
  store %struct.omapfb_device* %9, %struct.omapfb_device** %11, align 8
  %12 = call i32* @create_singlethread_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %14 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %13, i32 0, i32 5
  store i32* %12, i32** %14, align 8
  %15 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %16 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %21 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %29 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %28, i32 0, i32 3
  %30 = load i32, i32* @mipid_esd_work, align 4
  %31 = call i32 @INIT_DELAYED_WORK(i32* %29, i32 %30)
  %32 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %33 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %32, i32 0, i32 2
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %36 = call i64 @panel_enabled(%struct.mipid_device* %35)
  %37 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %38 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %40 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %45 = call i32 @mipid_esd_start_check(%struct.mipid_device* %44)
  br label %51

46:                                               ; preds = %27
  %47 = load %struct.lcd_panel*, %struct.lcd_panel** %4, align 8
  %48 = call i32 @mipid_get_bklight_level(%struct.lcd_panel* %47)
  %49 = load %struct.mipid_device*, %struct.mipid_device** %6, align 8
  %50 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mipid_device* @to_mipid_device(%struct.lcd_panel*) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @panel_enabled(%struct.mipid_device*) #1

declare dso_local i32 @mipid_esd_start_check(%struct.mipid_device*) #1

declare dso_local i32 @mipid_get_bklight_level(%struct.lcd_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
