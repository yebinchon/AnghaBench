; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_mioa701_wm9713.c_mioa701_wm9713_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_mioa701_wm9713.c_mioa701_wm9713_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [168 x i8] c"Be warned that incorrect mixers/muxes setup willlead to overheating and possible destruction of your device.Do not use without a good knowledge of mio's board design!\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"soc-audio\00", align 1
@mioa701_snd_device = common dso_local global %struct.TYPE_8__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mioa701_snd_devdata = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mioa701_wm9713_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mioa701_wm9713_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 (...) @machine_is_mioa701()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @dev_warn(i32* %12, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str, i64 0, i64 0))
  %14 = call %struct.TYPE_8__* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** @mioa701_snd_device, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mioa701_snd_device, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %10
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mioa701_snd_device, align 8
  %22 = call i32 @platform_set_drvdata(%struct.TYPE_8__* %21, %struct.TYPE_9__* @mioa701_snd_devdata)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mioa701_snd_device, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32* %24, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mioa701_snd_devdata, i32 0, i32 0), align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mioa701_snd_device, align 8
  %26 = call i32 @platform_device_add(%struct.TYPE_8__* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mioa701_snd_device, align 8
  %32 = call i32 @platform_device_put(%struct.TYPE_8__* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %29, %17, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @machine_is_mioa701(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
