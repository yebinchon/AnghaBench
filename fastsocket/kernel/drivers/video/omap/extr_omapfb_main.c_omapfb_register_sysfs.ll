; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@dev_attr_caps_num = common dso_local global i32 0, align 4
@dev_attr_caps_text = common dso_local global i32 0, align 4
@panel_attr_grp = common dso_local global i32 0, align 4
@ctrl_attr_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to register sysfs interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @omapfb_register_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_register_sysfs(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  %5 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %6 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @device_create_file(%struct.TYPE_4__* %7, i32* @dev_attr_caps_num)
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %13 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @device_create_file(%struct.TYPE_4__* %14, i32* @dev_attr_caps_text)
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %46

18:                                               ; preds = %11
  %19 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %20 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @sysfs_create_group(i32* %22, i32* @panel_attr_grp)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %41

26:                                               ; preds = %18
  %27 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %28 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @sysfs_create_group(i32* %30, i32* @ctrl_attr_grp)
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %57

35:                                               ; preds = %33
  %36 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %37 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @sysfs_remove_group(i32* %39, i32* @panel_attr_grp)
  br label %41

41:                                               ; preds = %35, %25
  %42 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %43 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @device_remove_file(%struct.TYPE_4__* %44, i32* @dev_attr_caps_text)
  br label %46

46:                                               ; preds = %41, %17
  %47 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %48 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @device_remove_file(%struct.TYPE_4__* %49, i32* @dev_attr_caps_num)
  br label %51

51:                                               ; preds = %46, %10
  %52 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %53 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @dev_err(%struct.TYPE_4__* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %34
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @device_create_file(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
