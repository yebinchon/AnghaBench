; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c_max1363_store_scan_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c_max1363_store_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32, %struct.max1363_state* }
%struct.max1363_state = type { %struct.max1363_mode*, i32 }
%struct.max1363_mode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max1363_store_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max1363_store_scan_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.max1363_state*, align 8
  %12 = alloca %struct.max1363_mode*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 1
  %18 = load %struct.max1363_state*, %struct.max1363_state** %17, align 8
  store %struct.max1363_state* %18, %struct.max1363_state** %11, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  store %struct.max1363_mode* null, %struct.max1363_mode** %12, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %23 = call i32 @iio_ring_enabled(%struct.iio_dev* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %4
  %26 = load %struct.max1363_state*, %struct.max1363_state** %11, align 8
  %27 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call %struct.max1363_mode* @__max1363_find_mode_in_ci(i32 %28, i8* %29)
  store %struct.max1363_mode* %30, %struct.max1363_mode** %12, align 8
  %31 = load %struct.max1363_mode*, %struct.max1363_mode** %12, align 8
  %32 = icmp ne %struct.max1363_mode* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %54

36:                                               ; preds = %25
  %37 = load %struct.max1363_mode*, %struct.max1363_mode** %12, align 8
  %38 = load %struct.max1363_state*, %struct.max1363_state** %11, align 8
  %39 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %38, i32 0, i32 0
  store %struct.max1363_mode* %37, %struct.max1363_mode** %39, align 8
  %40 = load %struct.max1363_state*, %struct.max1363_state** %11, align 8
  %41 = call i32 @max1363_set_scan_mode(%struct.max1363_state* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %54

45:                                               ; preds = %36
  br label %49

46:                                               ; preds = %4
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %54

49:                                               ; preds = %45
  %50 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %5, align 8
  br label %60

54:                                               ; preds = %46, %44, %33
  %55 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_ring_enabled(%struct.iio_dev*) #1

declare dso_local %struct.max1363_mode* @__max1363_find_mode_in_ci(i32, i8*) #1

declare dso_local i32 @max1363_set_scan_mode(%struct.max1363_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
