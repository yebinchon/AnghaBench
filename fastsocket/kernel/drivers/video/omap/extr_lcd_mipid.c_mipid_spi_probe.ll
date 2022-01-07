; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_spi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_mipid_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.mipid_device = type { i32, %struct.spi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@mipid_panel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mipid_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mipid_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mipid_device* @kzalloc(i32 16, i32 %6)
  store %struct.mipid_device* %7, %struct.mipid_device** %4, align 8
  %8 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %9 = icmp eq %struct.mipid_device* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @SPI_MODE_0, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %22 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %21, i32 0, i32 1
  store %struct.spi_device* %20, %struct.spi_device** %22, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %26 = call i32 @dev_set_drvdata(i32* %24, %struct.mipid_device* %25)
  %27 = load i32, i32* @mipid_panel, align 4
  %28 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %29 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %31 = call i32 @mipid_detect(%struct.mipid_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %16
  %37 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %38 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %37, i32 0, i32 0
  %39 = call i32 @omapfb_register_panel(i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %34, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.mipid_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.mipid_device*) #1

declare dso_local i32 @mipid_detect(%struct.mipid_device*) #1

declare dso_local i32 @omapfb_register_panel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
