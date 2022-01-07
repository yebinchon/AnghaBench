; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32 }

@SCA3000_REG_ADDR_TEMP_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sca3000_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.sca3000_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %8, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %17, align 8
  store %struct.sca3000_state* %18, %struct.sca3000_state** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %20 = load i32, i32* @SCA3000_REG_ADDR_TEMP_MSB, align 4
  %21 = call i32 @sca3000_read_data(%struct.sca3000_state* %19, i32 %20, i32** %13, i32 2)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %50

25:                                               ; preds = %3
  %26 = load i32*, i32** %13, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 63
  %30 = shl i32 %29, 3
  %31 = load i32*, i32** %13, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 224
  %35 = ashr i32 %34, 5
  %36 = or i32 %30, %35
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @sprintf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %24
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
