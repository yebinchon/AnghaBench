; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_cfg_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_cfg_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_ctrl_config = type { i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_TFT_MODE = common dso_local global i32 0, align 4
@LCD_MONO_8BIT_MODE = common dso_local global i32 0, align 4
@LCD_MONOCHROME_MODE = common dso_local global i32 0, align 4
@LCD_TFT_ALT_ENABLE = common dso_local global i32 0, align 4
@LCD_STN_565_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LCD_UNDERFLOW_INT_ENA = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_2_REG = common dso_local global i32 0, align 4
@LCD_SYNC_CTRL = common dso_local global i32 0, align 4
@LCD_SYNC_EDGE = common dso_local global i32 0, align 4
@LCD_INVERT_LINE_CLOCK = common dso_local global i32 0, align 4
@LCD_INVERT_FRAME_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_ctrl_config*)* @lcd_cfg_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_cfg_display(%struct.lcd_ctrl_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_ctrl_config*, align 8
  %4 = alloca i32, align 4
  store %struct.lcd_ctrl_config* %0, %struct.lcd_ctrl_config** %3, align 8
  %5 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %6 = call i32 @lcdc_read(i32 %5)
  %7 = load i32, i32* @LCD_TFT_MODE, align 4
  %8 = load i32, i32* @LCD_MONO_8BIT_MODE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @LCD_MONOCHROME_MODE, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %6, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %15 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %14, i32 0, i32 7
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %55 [
    i32 128, label %19
    i32 130, label %32
    i32 129, label %45
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @LCD_MONOCHROME_MODE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %24 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @LCD_MONO_8BIT_MODE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %19
  br label %58

32:                                               ; preds = %1
  %33 = load i32, i32* @LCD_TFT_MODE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %37 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @LCD_TFT_ALT_ENABLE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %32
  br label %58

45:                                               ; preds = %1
  %46 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %47 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @LCD_STN_565_ENABLE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %45
  br label %58

55:                                               ; preds = %1
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %126

58:                                               ; preds = %54, %44, %31
  %59 = load i32, i32* @LCD_UNDERFLOW_INT_ENA, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %64 = call i32 @lcdc_write(i32 %62, i32 %63)
  %65 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %66 = call i32 @lcdc_read(i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %68 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i32, i32* @LCD_SYNC_CTRL, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  br label %80

75:                                               ; preds = %58
  %76 = load i32, i32* @LCD_SYNC_CTRL, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %82 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @LCD_SYNC_EDGE, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %94

89:                                               ; preds = %80
  %90 = load i32, i32* @LCD_SYNC_EDGE, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %96 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @LCD_INVERT_LINE_CLOCK, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %108

103:                                              ; preds = %94
  %104 = load i32, i32* @LCD_INVERT_LINE_CLOCK, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %99
  %109 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %3, align 8
  %110 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @LCD_INVERT_FRAME_CLOCK, align 4
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %4, align 4
  br label %122

117:                                              ; preds = %108
  %118 = load i32, i32* @LCD_INVERT_FRAME_CLOCK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %125 = call i32 @lcdc_write(i32 %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %55
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
