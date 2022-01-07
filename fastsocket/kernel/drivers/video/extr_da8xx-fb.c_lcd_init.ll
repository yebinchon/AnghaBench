; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32 }
%struct.lcd_ctrl_config = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.da8xx_panel = type { i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }

@LCD_RASTER_MODE = common dso_local global i32 0, align 4
@LCD_CTRL_REG = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_2_REG = common dso_local global i32 0, align 4
@LCD_INVERT_PIXEL_CLOCK = common dso_local global i32 0, align 4
@QVGA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da8xx_fb_par*, %struct.lcd_ctrl_config*, %struct.da8xx_panel*)* @lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_init(%struct.da8xx_fb_par* %0, %struct.lcd_ctrl_config* %1, %struct.da8xx_panel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.da8xx_fb_par*, align 8
  %6 = alloca %struct.lcd_ctrl_config*, align 8
  %7 = alloca %struct.da8xx_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.da8xx_fb_par* %0, %struct.da8xx_fb_par** %5, align 8
  store %struct.lcd_ctrl_config* %1, %struct.lcd_ctrl_config** %6, align 8
  store %struct.da8xx_panel* %2, %struct.da8xx_panel** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %11 = call i32 @lcd_reset(%struct.da8xx_fb_par* %10)
  %12 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %13 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @LCD_CLK_DIVISOR(i32 %14)
  %16 = load i32, i32* @LCD_RASTER_MODE, align 4
  %17 = and i32 %16, 1
  %18 = or i32 %15, %17
  %19 = load i32, i32* @LCD_CTRL_REG, align 4
  %20 = call i32 @lcdc_write(i32 %18, i32 %19)
  %21 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %22 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %27 = call i32 @lcdc_read(i32 %26)
  %28 = load i32, i32* @LCD_INVERT_PIXEL_CLOCK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %31 = call i32 @lcdc_write(i32 %29, i32 %30)
  br label %40

32:                                               ; preds = %3
  %33 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %34 = call i32 @lcdc_read(i32 %33)
  %35 = load i32, i32* @LCD_INVERT_PIXEL_CLOCK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %39 = call i32 @lcdc_write(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %42 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lcd_cfg_dma(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %160

49:                                               ; preds = %40
  %50 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %51 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %54 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lcd_cfg_ac_bias(i32 %52, i32 %55)
  %57 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %58 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %61 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %64 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lcd_cfg_vertical_sync(i32 %59, i32 %62, i32 %65)
  %67 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %68 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %71 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %74 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @lcd_cfg_horizontal_sync(i32 %69, i32 %72, i32 %75)
  %77 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %78 = call i32 @lcd_cfg_display(%struct.lcd_ctrl_config* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %49
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %160

83:                                               ; preds = %49
  %84 = load i64, i64* @QVGA, align 8
  %85 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %86 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %160

94:                                               ; preds = %83
  %95 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %96 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %99 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %98, i32 0, i32 3
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %97, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %94
  %105 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %106 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %109 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %107, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %116 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %8, align 4
  br label %126

119:                                              ; preds = %104, %94
  %120 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %121 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 12
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 16, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %132 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %133 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.da8xx_panel*, %struct.da8xx_panel** %7, align 8
  %137 = getelementptr inbounds %struct.da8xx_panel, %struct.da8xx_panel* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %142 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @lcd_cfg_frame_buffer(%struct.da8xx_fb_par* %131, i32 %135, i32 %139, i32 %140, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %130
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %160

149:                                              ; preds = %130
  %150 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %151 = call i32 @lcdc_read(i32 %150)
  %152 = and i32 %151, -1044481
  %153 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %154 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 %155, 12
  %157 = or i32 %152, %156
  %158 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %159 = call i32 @lcdc_write(i32 %157, i32 %158)
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %149, %147, %91, %81, %47
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @lcd_reset(%struct.da8xx_fb_par*) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @LCD_CLK_DIVISOR(i32) #1

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcd_cfg_dma(i32) #1

declare dso_local i32 @lcd_cfg_ac_bias(i32, i32) #1

declare dso_local i32 @lcd_cfg_vertical_sync(i32, i32, i32) #1

declare dso_local i32 @lcd_cfg_horizontal_sync(i32, i32, i32) #1

declare dso_local i32 @lcd_cfg_display(%struct.lcd_ctrl_config*) #1

declare dso_local i32 @lcd_cfg_frame_buffer(%struct.da8xx_fb_par*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
