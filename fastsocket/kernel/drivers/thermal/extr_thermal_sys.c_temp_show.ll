; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/thermal/extr_thermal_sys.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/thermal/extr_thermal_sys.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.thermal_zone_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_zone_device*, i64*)* }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.thermal_zone_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.thermal_zone_device* @to_thermal_zone(%struct.device* %11)
  store %struct.thermal_zone_device* %12, %struct.thermal_zone_device** %8, align 8
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %14 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.thermal_zone_device*, i64*)*, i32 (%struct.thermal_zone_device*, i64*)** %16, align 8
  %18 = icmp ne i32 (%struct.thermal_zone_device*, i64*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %24 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.thermal_zone_device*, i64*)*, i32 (%struct.thermal_zone_device*, i64*)** %26, align 8
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %29 = call i32 %27(%struct.thermal_zone_device* %28, i64* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %22
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %32, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.thermal_zone_device* @to_thermal_zone(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
