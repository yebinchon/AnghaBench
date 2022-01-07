; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c___lis3l02dq_write_data_ready_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c___lis3l02dq_write_data_ready_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_event_handler_list = type { i32 }
%struct.iio_dev = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@LIS3L02DQ_REG_CTRL_2_ADDR = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_2_ENABLE_DATA_READY_GENERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.iio_event_handler_list*, i32)* @__lis3l02dq_write_data_ready_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lis3l02dq_write_data_ready_config(%struct.device* %0, %struct.iio_event_handler_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iio_event_handler_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iio_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.iio_event_handler_list* %1, %struct.iio_event_handler_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %11, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ADDR, align 4
  %16 = call i32 @lis3l02dq_spi_read_reg_8(%struct.device* %14, i32 %15, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %83

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ENABLE_DATA_READY_GENERATION, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ENABLE_DATA_READY_GENERATION, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ADDR, align 4
  %36 = call i32 @lis3l02dq_spi_write_reg_8(%struct.device* %34, i32 %35, i32* %9)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %83

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ADDR, align 4
  %43 = call i32 @lis3l02dq_spi_write_reg_8(%struct.device* %41, i32 %42, i32* %9)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %83

47:                                               ; preds = %40
  %48 = load %struct.iio_event_handler_list*, %struct.iio_event_handler_list** %6, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @iio_remove_event_from_list(%struct.iio_event_handler_list* %48, i32* %54)
  br label %82

56:                                               ; preds = %26, %20
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ENABLE_DATA_READY_GENERATION, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.iio_event_handler_list*, %struct.iio_event_handler_list** %6, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @iio_add_event_to_list(%struct.iio_event_handler_list* %66, i32* %72)
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load i32, i32* @LIS3L02DQ_REG_CTRL_2_ADDR, align 4
  %76 = call i32 @lis3l02dq_spi_write_reg_8(%struct.device* %74, i32 %75, i32* %9)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %83

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %59, %56
  br label %82

82:                                               ; preds = %81, %47
  store i32 0, i32* %4, align 4
  br label %85

83:                                               ; preds = %79, %46, %39, %19
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lis3l02dq_spi_read_reg_8(%struct.device*, i32, i32*) #1

declare dso_local i32 @lis3l02dq_spi_write_reg_8(%struct.device*, i32, i32*) #1

declare dso_local i32 @iio_remove_event_from_list(%struct.iio_event_handler_list*, i32*) #1

declare dso_local i32 @iio_add_event_to_list(%struct.iio_event_handler_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
