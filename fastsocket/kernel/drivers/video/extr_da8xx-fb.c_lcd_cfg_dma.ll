; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_cfg_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_lcd_cfg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_DMA_CTRL_REG = common dso_local global i32 0, align 4
@LCD_DMA_BURST_1 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_2 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_4 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_8 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lcd_cfg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_cfg_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %6 = call i32 @lcdc_read(i32 %5)
  %7 = and i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %34 [
    i32 1, label %9
    i32 2, label %14
    i32 4, label %19
    i32 8, label %24
    i32 16, label %29
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @LCD_DMA_BURST_1, align 4
  %11 = call i32 @LCD_DMA_BURST_SIZE(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load i32, i32* @LCD_DMA_BURST_2, align 4
  %16 = call i32 @LCD_DMA_BURST_SIZE(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load i32, i32* @LCD_DMA_BURST_4, align 4
  %21 = call i32 @LCD_DMA_BURST_SIZE(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load i32, i32* @LCD_DMA_BURST_8, align 4
  %26 = call i32 @LCD_DMA_BURST_SIZE(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* @LCD_DMA_BURST_16, align 4
  %31 = call i32 @LCD_DMA_BURST_SIZE(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %29, %24, %19, %14, %9
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %40 = call i32 @lcdc_write(i32 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @LCD_DMA_BURST_SIZE(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
