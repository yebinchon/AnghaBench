; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_generic_bl.c_genericbl_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_generic_bl.c_genericbl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_bl_info = type { i32, i8*, i32, i32 }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.generic_bl_info* }

@.str = private unnamed_addr constant [11 x i8] c"generic-bl\00", align 1
@bl_machinfo = common dso_local global %struct.generic_bl_info* null, align 8
@genericbl_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@generic_backlight_device = common dso_local global %struct.backlight_device* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Generic Backlight Driver Initialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @genericbl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genericbl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.generic_bl_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.generic_bl_info*, %struct.generic_bl_info** %9, align 8
  store %struct.generic_bl_info* %10, %struct.generic_bl_info** %4, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %11 = load %struct.generic_bl_info*, %struct.generic_bl_info** %4, align 8
  store %struct.generic_bl_info* %11, %struct.generic_bl_info** @bl_machinfo, align 8
  %12 = load %struct.generic_bl_info*, %struct.generic_bl_info** %4, align 8
  %13 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.generic_bl_info*, %struct.generic_bl_info** %4, align 8
  %18 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.generic_bl_info*, %struct.generic_bl_info** %4, align 8
  %21 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.generic_bl_info*, %struct.generic_bl_info** %4, align 8
  %26 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.backlight_device* @backlight_device_register(i8* %29, %struct.TYPE_4__* %31, i32* null, i32* @genericbl_ops)
  store %struct.backlight_device* %32, %struct.backlight_device** %6, align 8
  %33 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %34 = call i64 @IS_ERR(%struct.backlight_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.backlight_device* %37)
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %28
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.backlight_device* %41)
  %43 = load %struct.generic_bl_info*, %struct.generic_bl_info** %4, align 8
  %44 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %47 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %50 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %51 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.generic_bl_info*, %struct.generic_bl_info** %4, align 8
  %54 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %57 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %60 = call i32 @backlight_update_status(%struct.backlight_device* %59)
  %61 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  store %struct.backlight_device* %61, %struct.backlight_device** @generic_backlight_device, align 8
  %62 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %39, %36
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
