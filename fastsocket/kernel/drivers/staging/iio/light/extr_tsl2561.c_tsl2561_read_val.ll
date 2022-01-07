; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_tsl2561.c_tsl2561_read_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_tsl2561.c_tsl2561_read_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev_attr = type { i32 }
%struct.iio_dev = type { %struct.tsl2561_state* }
%struct.tsl2561_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tsl2561_read_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2561_read_val(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_dev_attr*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.tsl2561_state*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %14 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %13)
  store %struct.iio_dev_attr* %14, %struct.iio_dev_attr** %10, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = load %struct.tsl2561_state*, %struct.tsl2561_state** %18, align 8
  store %struct.tsl2561_state* %19, %struct.tsl2561_state** %12, align 8
  %20 = load %struct.tsl2561_state*, %struct.tsl2561_state** %12, align 8
  %21 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.tsl2561_state*, %struct.tsl2561_state** %12, align 8
  %24 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.tsl2561_state*, %struct.tsl2561_state** %12, align 8
  %28 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %10, align 8
  %32 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tsl2561_state*, %struct.tsl2561_state** %12, align 8
  %35 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 4
  %38 = load %struct.tsl2561_state*, %struct.tsl2561_state** %12, align 8
  %39 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tsl2561_state*, %struct.tsl2561_state** %12, align 8
  %42 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = bitcast %struct.TYPE_2__* %43 to i8*
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @i2c_smbus_read_word_data(i32 %40, i8 signext %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %7, align 4
  br label %55

51:                                               ; preds = %3
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %49
  %56 = load %struct.tsl2561_state*, %struct.tsl2561_state** %12, align 8
  %57 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  ret i32 %66
}

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
