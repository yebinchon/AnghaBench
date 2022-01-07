; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_spi_read_reg_s16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_spi_read_reg_s16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_message = type { i32 }
%struct.iio_dev = type { i32 }
%struct.lis3l02dq_state = type { i32, i64*, %struct.TYPE_2__*, i8** }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i64*, i8** }

@.str = private unnamed_addr constant [37 x i8] c"problem when reading 16 bit register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i32*)* @lis3l02dq_spi_read_reg_s16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_spi_read_reg_s16(%struct.device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.lis3l02dq_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %8, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %15 = call %struct.lis3l02dq_state* @iio_dev_get_devdata(%struct.iio_dev* %14)
  store %struct.lis3l02dq_state* %15, %struct.lis3l02dq_state** %9, align 8
  %16 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  store i32 8, i32* %17, align 16
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 3
  %21 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %22 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %20, align 16
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 4
  %25 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %26 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %25, i32 0, i32 3
  %27 = load i8**, i8*** %26, align 8
  store i8** %27, i8*** %24, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i64 1
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  store i32 8, i32* %29, align 16
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 1
  store i32 2, i32* %30, align 4
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 3
  %33 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %34 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64* %36, i64** %32, align 16
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 4
  %38 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %39 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  store i8** %41, i8*** %37, align 8
  %42 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %43 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i8* @LIS3L02DQ_READ_REG(i64 %45)
  %47 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %48 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %47, i32 0, i32 3
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %52 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %51, i32 0, i32 3
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* null, i8** %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i8* @LIS3L02DQ_READ_REG(i64 %56)
  %58 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %59 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  store i8* %57, i8** %61, align 8
  %62 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %63 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %62, i32 0, i32 3
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 3
  store i8* null, i8** %65, align 8
  %66 = call i32 @spi_message_init(%struct.spi_message* %7)
  %67 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %68 = call i32 @spi_message_add_tail(%struct.spi_transfer* %67, %struct.spi_message* %7)
  %69 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %70 = call i32 @spi_message_add_tail(%struct.spi_transfer* %69, %struct.spi_message* %7)
  %71 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %72 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i32 @spi_sync(%struct.TYPE_2__* %73, %struct.spi_message* %7)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %3
  %78 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %79 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %99

83:                                               ; preds = %3
  %84 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %85 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %91 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = shl i32 %95, 8
  %97 = or i32 %89, %96
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %83, %77
  %100 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %9, align 8
  %101 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lis3l02dq_state* @iio_dev_get_devdata(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @LIS3L02DQ_READ_REG(i64) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
