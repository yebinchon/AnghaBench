; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_corgi_lcd.c_setup_gpio_backlight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_corgi_lcd.c_setup_gpio_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_lcd = type { i32, i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.corgi_lcd_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"BL_ON\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to request GPIO%d for backlight_on\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BL_CONT\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"failed to request GPIO%d for backlight_cont\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.corgi_lcd*, %struct.corgi_lcd_platform_data*)* @setup_gpio_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_gpio_backlight(%struct.corgi_lcd* %0, %struct.corgi_lcd_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.corgi_lcd*, align 8
  %5 = alloca %struct.corgi_lcd_platform_data*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.corgi_lcd* %0, %struct.corgi_lcd** %4, align 8
  store %struct.corgi_lcd_platform_data* %1, %struct.corgi_lcd_platform_data** %5, align 8
  %8 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %9 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %8, i32 0, i32 3
  %10 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  store %struct.spi_device* %10, %struct.spi_device** %6, align 8
  %11 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %12 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %14 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @gpio_is_valid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpio_request(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %105

35:                                               ; preds = %20
  %36 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %37 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %40 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %42 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gpio_direction_output(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %35, %2
  %46 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %47 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @gpio_is_valid(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %45
  %52 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gpio_request(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %62 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %92

65:                                               ; preds = %51
  %66 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %67 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %70 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %72 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @gpio_is_valid(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %78 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %80 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @gpio_direction_output(i32 %81, i32 1)
  br label %90

83:                                               ; preds = %65
  %84 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %85 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %87 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gpio_direction_output(i32 %88, i32 0)
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %45
  store i32 0, i32* %3, align 4
  br label %105

92:                                               ; preds = %58
  %93 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %94 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @gpio_is_valid(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %100 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @gpio_free(i32 %101)
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %91, %27
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
