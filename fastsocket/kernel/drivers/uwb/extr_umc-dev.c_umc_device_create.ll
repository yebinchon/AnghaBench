; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-dev.c_umc_device_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_umc-dev.c_umc_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@umc_bus_type = common dso_local global i32 0, align 4
@umc_device_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.umc_dev* @umc_device_create(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umc_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.umc_dev* @kzalloc(i32 24, i32 %6)
  store %struct.umc_dev* %7, %struct.umc_dev** %5, align 8
  %8 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %9 = icmp ne %struct.umc_dev* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %12 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_name(%struct.device* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_set_name(%struct.TYPE_2__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %19 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store %struct.device* %17, %struct.device** %20, align 8
  %21 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %22 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32* @umc_bus_type, i32** %23, align 8
  %24 = load i32, i32* @umc_device_release, align 4
  %25 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %26 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %32 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %10, %2
  %35 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  ret %struct.umc_dev* %35
}

declare dso_local %struct.umc_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
