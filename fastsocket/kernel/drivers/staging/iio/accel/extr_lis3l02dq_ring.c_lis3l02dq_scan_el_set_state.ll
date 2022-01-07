; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_scan_el_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_scan_el_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_scan_el = type { i32 }
%struct.iio_dev = type { i32 }

@LIS3L02DQ_REG_CTRL_1_ADDR = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_1_AXES_X_ENABLE = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_1_AXES_Y_ENABLE = common dso_local global i32 0, align 4
@LIS3L02DQ_REG_CTRL_1_AXES_Z_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_scan_el*, %struct.iio_dev*, i32)* @lis3l02dq_scan_el_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_scan_el_set_state(%struct.iio_scan_el* %0, %struct.iio_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.iio_scan_el*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_scan_el* %0, %struct.iio_scan_el** %4, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 0
  %12 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %13 = call i32 @lis3l02dq_spi_read_reg_8(i32* %11, i32 %12, i32* %7)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.iio_scan_el*, %struct.iio_scan_el** %4, align 8
  %19 = getelementptr inbounds %struct.iio_scan_el, %struct.iio_scan_el* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_AXES_X_ENABLE, align 4
  store i32 %22, i32* %8, align 4
  br label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_AXES_Y_ENABLE, align 4
  store i32 %24, i32* %8, align 4
  br label %30

25:                                               ; preds = %17
  %26 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_AXES_Z_ENABLE, align 4
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %57

30:                                               ; preds = %25, %23, %21
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 0
  %54 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %55 = call i32 @lis3l02dq_spi_write_reg_8(i32* %53, i32 %54, i32* %7)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %30
  br label %57

57:                                               ; preds = %56, %27, %16
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @lis3l02dq_spi_read_reg_8(i32*, i32, i32*) #1

declare dso_local i32 @lis3l02dq_spi_write_reg_8(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
