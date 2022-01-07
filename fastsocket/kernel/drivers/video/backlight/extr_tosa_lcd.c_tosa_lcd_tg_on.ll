; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_tg_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_tg_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tosa_lcd_data = type { i32, %struct.spi_device*, i64 }
%struct.spi_device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i8*, %struct.spi_device*, i32 }

@TG_REG0_COLOR = common dso_local global i32 0, align 4
@TG_REG0_UD = common dso_local global i32 0, align 4
@TG_REG0_LR = common dso_local global i32 0, align 4
@TG_REG0_VQV = common dso_local global i32 0, align 4
@TG_PNLCTL = common dso_local global i32 0, align 4
@TG_PINICTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tosa-bl\00", align 1
@DAC_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tosa_lcd_data*)* @tosa_lcd_tg_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosa_lcd_tg_on(%struct.tosa_lcd_data* %0) #0 {
  %2 = alloca %struct.tosa_lcd_data*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_board_info, align 8
  store %struct.tosa_lcd_data* %0, %struct.tosa_lcd_data** %2, align 8
  %7 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %2, align 8
  %8 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %7, i32 0, i32 1
  %9 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  store %struct.spi_device* %9, %struct.spi_device** %3, align 8
  %10 = load i32, i32* @TG_REG0_COLOR, align 4
  %11 = load i32, i32* @TG_REG0_UD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @TG_REG0_LR, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %2, align 8
  %16 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @TG_REG0_VQV, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load i32, i32* @TG_PNLCTL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @tosa_tg_send(%struct.spi_device* %24, i32 %25, i32 %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load i32, i32* @TG_PINICTL, align 4
  %30 = call i32 @tosa_tg_send(%struct.spi_device* %28, i32 %29, i32 4)
  %31 = call i32 @mdelay(i32 50)
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = load i32, i32* @TG_PINICTL, align 4
  %34 = call i32 @tosa_tg_send(%struct.spi_device* %32, i32 %33, i32 0)
  %35 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %2, align 8
  %36 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %23
  %40 = call %struct.i2c_adapter* @i2c_get_adapter(i32 0)
  store %struct.i2c_adapter* %40, %struct.i2c_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 1
  %43 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %2, align 8
  %44 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %43, i32 0, i32 1
  %45 = load %struct.spi_device*, %struct.spi_device** %44, align 8
  store %struct.spi_device* %45, %struct.spi_device** %42, align 8
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 2
  %47 = load i32, i32* @DAC_BASE, align 4
  store i32 %47, i32* %46, align 8
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %49 = call i32 @i2c_new_device(%struct.i2c_adapter* %48, %struct.i2c_board_info* %6)
  %50 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %2, align 8
  %51 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %39, %23
  ret void
}

declare dso_local i32 @tosa_tg_send(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
