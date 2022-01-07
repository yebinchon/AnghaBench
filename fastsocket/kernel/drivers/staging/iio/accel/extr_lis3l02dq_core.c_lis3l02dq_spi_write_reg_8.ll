; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_spi_write_reg_8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_spi_write_reg_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_message = type { i32 }
%struct.iio_dev = type { i32 }
%struct.lis3l02dq_state = type { i32, i32, i32* }
%struct.spi_transfer = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3l02dq_spi_write_reg_8(%struct.device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.lis3l02dq_state*, align 8
  %11 = alloca %struct.spi_transfer, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %9, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %15 = call %struct.lis3l02dq_state* @iio_dev_get_devdata(%struct.iio_dev* %14)
  store %struct.lis3l02dq_state* %15, %struct.lis3l02dq_state** %10, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i32 8, i32* %16, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 3
  %20 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %21 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %19, align 8
  %23 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %24 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @LIS3L02DQ_WRITE_REG(i32 %26)
  %28 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %29 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %35 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = call i32 @spi_message_init(%struct.spi_message* %8)
  %39 = call i32 @spi_message_add_tail(%struct.spi_transfer* %11, %struct.spi_message* %8)
  %40 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %41 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @spi_sync(i32 %42, %struct.spi_message* %8)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %45 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lis3l02dq_state* @iio_dev_get_devdata(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @LIS3L02DQ_WRITE_REG(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
