; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_initial_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_initial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3l02dq_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SPI_MODE_3 = common dso_local global i32 0, align 4
@LIS3L02DQ_DEFAULT_CTRL1 = common dso_local global i64 0, align 8
@LIS3L02DQ_REG_CTRL_1_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"problem with setup control register 1\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"device not playing ball\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LIS3L02DQ_DEFAULT_CTRL2 = common dso_local global i64 0, align 8
@LIS3L02DQ_REG_CTRL_2_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"problem with setup control register 2\00", align 1
@LIS3L02DQ_REG_WAKE_UP_CFG_LATCH_SRC = common dso_local global i64 0, align 8
@LIS3L02DQ_REG_WAKE_UP_CFG_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"problem with interrupt cfg register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3l02dq_state*)* @lis3l02dq_initial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_initial_setup(%struct.lis3l02dq_state* %0) #0 {
  %2 = alloca %struct.lis3l02dq_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lis3l02dq_state* %0, %struct.lis3l02dq_state** %2, align 8
  %6 = load i32, i32* @SPI_MODE_3, align 4
  %7 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %8 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %6, i32* %10, align 4
  %11 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %12 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @spi_setup(%struct.TYPE_4__* %13)
  %15 = load i64, i64* @LIS3L02DQ_DEFAULT_CTRL1, align 8
  store i64 %15, i64* %4, align 8
  %16 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %17 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %21 = call i32 @lis3l02dq_spi_write_reg_8(i32* %19, i32 %20, i64* %4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %26 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %99

30:                                               ; preds = %1
  %31 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %32 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %36 = call i32 @lis3l02dq_spi_write_reg_8(i32* %34, i32 %35, i64* %4)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %41 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %99

45:                                               ; preds = %30
  %46 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %47 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %51 = call i32 @lis3l02dq_spi_read_reg_8(i32* %49, i32 %50, i64* %5)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54, %45
  %59 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %60 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %99

66:                                               ; preds = %54
  %67 = load i64, i64* @LIS3L02DQ_DEFAULT_CTRL2, align 8
  store i64 %67, i64* %4, align 8
  %68 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %69 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ADDR, align 4
  %73 = call i32 @lis3l02dq_spi_write_reg_8(i32* %71, i32 %72, i64* %4)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %78 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %99

82:                                               ; preds = %66
  %83 = load i64, i64* @LIS3L02DQ_REG_WAKE_UP_CFG_LATCH_SRC, align 8
  store i64 %83, i64* %4, align 8
  %84 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %85 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* @LIS3L02DQ_REG_WAKE_UP_CFG_ADDR, align 4
  %89 = call i32 @lis3l02dq_spi_write_reg_8(i32* %87, i32 %88, i64* %4)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %2, align 8
  %94 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %82
  br label %99

99:                                               ; preds = %98, %76, %58, %39, %24
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @spi_setup(%struct.TYPE_4__*) #1

declare dso_local i32 @lis3l02dq_spi_write_reg_8(i32*, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @lis3l02dq_spi_read_reg_8(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
