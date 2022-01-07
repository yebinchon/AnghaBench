; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_show_bklight_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_show_bklight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.omapfb_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @omapfb_show_bklight_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_show_bklight_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.omapfb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.omapfb_device* @dev_get_drvdata(%struct.device* %9)
  store %struct.omapfb_device* %10, %struct.omapfb_device** %7, align 8
  %11 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %12 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_3__*)* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %21 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %23, align 8
  %25 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %26 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 %24(%struct.TYPE_3__* %27)
  %29 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.omapfb_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
