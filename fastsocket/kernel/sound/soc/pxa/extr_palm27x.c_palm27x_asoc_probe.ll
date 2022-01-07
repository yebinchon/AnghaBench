; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_palm27x.c_palm27x_asoc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_palm27x.c_palm27x_asoc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.palm27x_asoc_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"please supply platform_data\0A\00", align 1
@hs_jack_gpios = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"soc-audio\00", align 1
@palm27x_snd_device = common dso_local global %struct.TYPE_10__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@palm27x_snd_devdata = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palm27x_asoc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palm27x_asoc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i64 (...) @machine_is_palmtx()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = call i64 (...) @machine_is_palmt5()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = call i64 (...) @machine_is_palmld()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = call i64 (...) @machine_is_palmte2()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %13, %10, %7, %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_13__* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %19
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.palm27x_asoc_info*
  %37 = getelementptr inbounds %struct.palm27x_asoc_info, %struct.palm27x_asoc_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @hs_jack_gpios, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = call %struct.TYPE_10__* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** @palm27x_snd_device, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @palm27x_snd_device, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %63

48:                                               ; preds = %31
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @palm27x_snd_device, align 8
  %50 = call i32 @platform_set_drvdata(%struct.TYPE_10__* %49, %struct.TYPE_11__* @palm27x_snd_devdata)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @palm27x_snd_device, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32* %52, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @palm27x_snd_devdata, i32 0, i32 0), align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @palm27x_snd_device, align 8
  %54 = call i32 @platform_device_add(%struct.TYPE_10__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %63

59:                                               ; preds = %57
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @palm27x_snd_device, align 8
  %61 = call i32 @platform_device_put(%struct.TYPE_10__* %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %58, %45, %25, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @machine_is_palmtx(...) #1

declare dso_local i64 @machine_is_palmt5(...) #1

declare dso_local i64 @machine_is_palmld(...) #1

declare dso_local i64 @machine_is_palmte2(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_10__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
