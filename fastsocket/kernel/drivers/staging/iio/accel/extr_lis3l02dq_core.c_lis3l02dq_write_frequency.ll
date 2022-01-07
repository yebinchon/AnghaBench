; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_write_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_write_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }

@LIS3L02DQ_REG_CTRL_1_ADDR = common dso_local global i32 0, align 4
@LIS3L02DQ_DEC_MASK = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_1_DF_128 = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_1_DF_64 = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_1_DF_32 = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_1_DF_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lis3l02dq_write_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_write_frequency(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strict_strtol(i8* %16, i32 10, i64* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %75

22:                                               ; preds = %4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %28 = call i32 @lis3l02dq_spi_read_reg_8(%struct.device* %26, i32 %27, i32* %13)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %61

32:                                               ; preds = %22
  %33 = load i32, i32* @LIS3L02DQ_DEC_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %13, align 4
  %37 = load i64, i64* %11, align 8
  switch i64 %37, label %54 [
    i64 280, label %38
    i64 560, label %42
    i64 1120, label %46
    i64 4480, label %50
  ]

38:                                               ; preds = %32
  %39 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_DF_128, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %57

42:                                               ; preds = %32
  %43 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_DF_64, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %57

46:                                               ; preds = %32
  %47 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_DF_32, align 4
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %57

50:                                               ; preds = %32
  %51 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_DF_8, align 4
  %52 = load i32, i32* %13, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %61

57:                                               ; preds = %50, %46, %42, %38
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %60 = call i32 @lis3l02dq_spi_write_reg_8(%struct.device* %58, i32 %59, i32* %13)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %57, %54, %31
  %62 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  br label %72

70:                                               ; preds = %61
  %71 = load i64, i64* %9, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i64 [ %69, %67 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %20
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lis3l02dq_spi_read_reg_8(%struct.device*, i32, i32*) #1

declare dso_local i32 @lis3l02dq_spi_write_reg_8(%struct.device*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
