; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_soc-of-simple.c_of_snd_soc_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_soc-of-simple.c_of_snd_soc_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_snd_soc_device = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.of_snd_soc_device* }
%struct.platform_device = type { %struct.TYPE_3__ }

@.str = private unnamed_addr constant [55 x i8] c"platform<-->codec match achieved; registering machine\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"soc-audio\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"of_soc: platform_device_alloc() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"of_soc: platform_device_add() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.of_snd_soc_device*)* @of_snd_soc_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_snd_soc_register_device(%struct.of_snd_soc_device* %0) #0 {
  %2 = alloca %struct.of_snd_soc_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.of_snd_soc_device* %0, %struct.of_snd_soc_device** %2, align 8
  %5 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %2, align 8
  %6 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %2, align 8
  %12 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %46

16:                                               ; preds = %10
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %2, align 8
  %19 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store %struct.platform_device* %21, %struct.platform_device** %3, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = icmp ne %struct.platform_device* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %46

26:                                               ; preds = %16
  %27 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %2, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.of_snd_soc_device* %27, %struct.of_snd_soc_device** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %2, align 8
  %33 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %32, i32 0, i32 0
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.TYPE_4__* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.of_snd_soc_device*, %struct.of_snd_soc_device** %2, align 8
  %38 = getelementptr inbounds %struct.of_snd_soc_device, %struct.of_snd_soc_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i32 @platform_device_add(%struct.platform_device* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %15, %24, %44, %26
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
