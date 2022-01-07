; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@iio_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Failed to get id\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"device%d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to register sysfs interfaces\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to register event set \0A\00", align 1
@INDIO_RING_TRIGGERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_device_register(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = call i32 @iio_device_register_id(%struct.iio_dev* %5, i32* @iio_idr)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 1
  %12 = call i32 @dev_err(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_set_name(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 1
  %22 = call i32 @device_add(%struct.TYPE_5__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %66

26:                                               ; preds = %13
  %27 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %28 = call i32 @iio_device_register_sysfs(%struct.iio_dev* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @dev_err(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %62

37:                                               ; preds = %26
  %38 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %39 = call i32 @iio_device_register_eventset(%struct.iio_dev* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @dev_err(%struct.TYPE_5__* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %59

48:                                               ; preds = %37
  %49 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @INDIO_RING_TRIGGERED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %57 = call i32 @iio_device_register_trigger_consumer(%struct.iio_dev* %56)
  br label %58

58:                                               ; preds = %55, %48
  store i32 0, i32* %2, align 4
  br label %71

59:                                               ; preds = %42
  %60 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %61 = call i32 @iio_device_unregister_sysfs(%struct.iio_dev* %60)
  br label %62

62:                                               ; preds = %59, %31
  %63 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  %65 = call i32 @device_del(%struct.TYPE_5__* %64)
  br label %66

66:                                               ; preds = %62, %25
  %67 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %68 = call i32 @iio_device_unregister_id(%struct.iio_dev* %67)
  br label %69

69:                                               ; preds = %66, %9
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @iio_device_register_id(%struct.iio_dev*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @iio_device_register_sysfs(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register_eventset(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register_trigger_consumer(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister_sysfs(%struct.iio_dev*) #1

declare dso_local i32 @device_del(%struct.TYPE_5__*) #1

declare dso_local i32 @iio_device_unregister_id(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
