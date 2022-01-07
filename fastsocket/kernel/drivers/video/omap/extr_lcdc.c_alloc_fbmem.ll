; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_alloc_fbmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_alloc_fbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.lcd_panel* }
%struct.lcd_panel = type { i32, i32, i32 }
%struct.omapfb_mem_region = type { i32, i32, i32*, i32 }

@lcdc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to allocate FB DMA memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_mem_region*)* @alloc_fbmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_fbmem(%struct.omapfb_mem_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_mem_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lcd_panel*, align 8
  store %struct.omapfb_mem_region* %0, %struct.omapfb_mem_region** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 3), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.lcd_panel*, %struct.lcd_panel** %8, align 8
  store %struct.lcd_panel* %9, %struct.lcd_panel** %6, align 8
  %10 = load %struct.lcd_panel*, %struct.lcd_panel** %6, align 8
  %11 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 16, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.lcd_panel*, %struct.lcd_panel** %6, align 8
  %18 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sdiv i32 %21, 8
  %23 = load %struct.lcd_panel*, %struct.lcd_panel** %6, align 8
  %24 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = call i32 @PAGE_ALIGN(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %29 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %35 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %16
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 3), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @dma_alloc_writecombine(i32 %41, i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 2), i32 %43)
  store i32* %44, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 3), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %37
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %57 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 2), align 8
  %59 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %60 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  %62 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %63 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %65 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %68 = call i32 @memset(i32* %66, i32 0, i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %54, %47
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32* @dma_alloc_writecombine(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
