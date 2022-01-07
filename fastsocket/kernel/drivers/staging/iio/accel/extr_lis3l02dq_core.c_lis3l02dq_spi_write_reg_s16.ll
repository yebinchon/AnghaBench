; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_spi_write_reg_s16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_spi_write_reg_s16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_message = type { i32 }
%struct.iio_dev = type { i32 }
%struct.lis3l02dq_state = type { i32*, i32, i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i32)* @lis3l02dq_spi_write_reg_s16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_spi_write_reg_s16(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.lis3l02dq_state*, align 8
  %11 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %9, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %15 = call %struct.lis3l02dq_state* @iio_dev_get_devdata(%struct.iio_dev* %14)
  store %struct.lis3l02dq_state* %15, %struct.lis3l02dq_state** %10, align 8
  %16 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  %18 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %19 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 1
  store i32 8, i32* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 2
  store i32 2, i32* %22, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 3
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i64 1
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 0
  %26 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %27 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %25, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 1
  store i32 8, i32* %30, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 2
  store i32 2, i32* %31, align 4
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 3
  store i32 1, i32* %32, align 8
  %33 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %34 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i8* @LIS3L02DQ_WRITE_REG(i64 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %40 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 255
  %45 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %46 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i8* @LIS3L02DQ_WRITE_REG(i64 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %54 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %61 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %59, i32* %63, align 4
  %64 = call i32 @spi_message_init(%struct.spi_message* %8)
  %65 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %66 = call i32 @spi_message_add_tail(%struct.spi_transfer* %65, %struct.spi_message* %8)
  %67 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %68 = call i32 @spi_message_add_tail(%struct.spi_transfer* %67, %struct.spi_message* %8)
  %69 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %70 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @spi_sync(i32 %71, %struct.spi_message* %8)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %10, align 8
  %74 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lis3l02dq_state* @iio_dev_get_devdata(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @LIS3L02DQ_WRITE_REG(i64) #1

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
