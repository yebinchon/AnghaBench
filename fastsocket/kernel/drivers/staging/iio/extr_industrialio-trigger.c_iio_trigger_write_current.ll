; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_write_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_write_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i64, %struct.iio_trigger*, i32 }
%struct.iio_trigger = type { i32 }

@INDIO_RING_TRIGGERED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@IIO_TRIGGER_NAME_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_trigger_write_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iio_trigger_write_current(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.iio_trigger*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %10, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 1
  %16 = load %struct.iio_trigger*, %struct.iio_trigger** %15, align 8
  store %struct.iio_trigger* %16, %struct.iio_trigger** %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INDIO_RING_TRIGGERED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i64, i64* @EBUSY, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %72

31:                                               ; preds = %4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 2
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @IIO_TRIGGER_NAME_LENGTH, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load i64, i64* @IIO_TRIGGER_NAME_LENGTH, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  store i64 %43, i64* %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call %struct.iio_trigger* @iio_trigger_find_by_name(i8* %44, i64 %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 1
  store %struct.iio_trigger* %46, %struct.iio_trigger** %48, align 8
  %49 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %50 = icmp ne %struct.iio_trigger* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 1
  %54 = load %struct.iio_trigger*, %struct.iio_trigger** %53, align 8
  %55 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %56 = icmp ne %struct.iio_trigger* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %59 = call i32 @iio_put_trigger(%struct.iio_trigger* %58)
  br label %60

60:                                               ; preds = %57, %51, %42
  %61 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 1
  %63 = load %struct.iio_trigger*, %struct.iio_trigger** %62, align 8
  %64 = icmp ne %struct.iio_trigger* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 1
  %68 = load %struct.iio_trigger*, %struct.iio_trigger** %67, align 8
  %69 = call i32 @iio_get_trigger(%struct.iio_trigger* %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %70, %25
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.iio_trigger* @iio_trigger_find_by_name(i8*, i64) #1

declare dso_local i32 @iio_put_trigger(%struct.iio_trigger*) #1

declare dso_local i32 @iio_get_trigger(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
