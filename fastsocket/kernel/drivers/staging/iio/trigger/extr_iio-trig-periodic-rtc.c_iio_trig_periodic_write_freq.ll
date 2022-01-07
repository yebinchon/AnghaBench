; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/trigger/extr_iio-trig-periodic-rtc.c_iio_trig_periodic_write_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/trigger/extr_iio-trig-periodic-rtc.c_iio_trig_periodic_write_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_trigger = type { %struct.iio_prtc_trigger_info* }
%struct.iio_prtc_trigger_info = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_trig_periodic_write_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iio_trig_periodic_write_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_trigger*, align 8
  %11 = alloca %struct.iio_prtc_trigger_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_trigger* @dev_get_drvdata(%struct.device* %14)
  store %struct.iio_trigger* %15, %struct.iio_trigger** %10, align 8
  %16 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %17 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %16, i32 0, i32 0
  %18 = load %struct.iio_prtc_trigger_info*, %struct.iio_prtc_trigger_info** %17, align 8
  store %struct.iio_prtc_trigger_info* %18, %struct.iio_prtc_trigger_info** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strict_strtoul(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %40

24:                                               ; preds = %4
  %25 = load %struct.iio_prtc_trigger_info*, %struct.iio_prtc_trigger_info** %11, align 8
  %26 = getelementptr inbounds %struct.iio_prtc_trigger_info, %struct.iio_prtc_trigger_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iio_prtc_trigger_info*, %struct.iio_prtc_trigger_info** %11, align 8
  %29 = getelementptr inbounds %struct.iio_prtc_trigger_info, %struct.iio_prtc_trigger_info* %28, i32 0, i32 1
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @rtc_irq_set_freq(i32 %27, i32* %29, i64 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %40

35:                                               ; preds = %24
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.iio_prtc_trigger_info*, %struct.iio_prtc_trigger_info** %11, align 8
  %38 = getelementptr inbounds %struct.iio_prtc_trigger_info, %struct.iio_prtc_trigger_info* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %5, align 8
  br label %43

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local %struct.iio_trigger* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @rtc_irq_set_freq(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
