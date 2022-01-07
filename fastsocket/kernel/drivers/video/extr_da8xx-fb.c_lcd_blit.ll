; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32, i32 }

@LCD_DMA_FRM_BUF_BASE_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LOAD_DATA = common dso_local global i32 0, align 4
@PALETTE_AND_DATA = common dso_local global i32 0, align 4
@LOAD_PALETTE = common dso_local global i32 0, align 4
@PALETTE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.da8xx_fb_par*)* @lcd_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_blit(i32 %0, %struct.da8xx_fb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da8xx_fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.da8xx_fb_par* %1, %struct.da8xx_fb_par** %4, align 8
  %7 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %8 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %11 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  %14 = sub nsw i32 %13, 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %16 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_0_REG, align 4
  %19 = call i32 @lcdc_write(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG, align 4
  %22 = call i32 @lcdc_write(i32 %20, i32 %21)
  %23 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %24 = call i32 @lcdc_read(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, -3145729
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @LOAD_DATA, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @PALETTE_AND_DATA, align 4
  %32 = call i32 @LCD_PALETTE_LOAD_MODE(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @LOAD_PALETTE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @PALETTE_ONLY, align 4
  %41 = call i32 @LCD_PALETTE_LOAD_MODE(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %48 = call i32 @lcdc_write(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @LCD_PALETTE_LOAD_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
