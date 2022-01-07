; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_show_measurement_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_show_measurement_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SCA3000_REG_ADDR_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"0 - normal mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"3 - motion detection\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"1 - narrow mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"1 - bypass mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"2 - wide mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sca3000_show_measurement_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_show_measurement_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.sca3000_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %15, align 8
  store %struct.sca3000_state* %16, %struct.sca3000_state** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %18 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %21 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %22 = call i32 @sca3000_read_data(%struct.sca3000_state* %20, i32 %21, i32** %11, i32 1)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %89

26:                                               ; preds = %3
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 3
  store i32 %30, i32* %28, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %88 [
    i32 133, label %34
    i32 134, label %42
    i32 132, label %50
    i32 131, label %73
  ]

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %88

42:                                               ; preds = %26
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %88

50:                                               ; preds = %26
  %51 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %52 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %72 [
    i32 129, label %56
    i32 130, label %64
  ]

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %72

64:                                               ; preds = %50
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %50, %64, %56
  br label %88

73:                                               ; preds = %26
  %74 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %75 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %87 [
    i32 128, label %79
  ]

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i32 @sprintf(i8* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %73, %79
  br label %88

88:                                               ; preds = %26, %87, %72, %42, %34
  br label %89

89:                                               ; preds = %88, %25
  %90 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %91 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  ret i32 %100
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
