; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200fb_drv_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200fb_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1200fb_device = type { %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CONFIG_FB_AU1200_DEVS = common dso_local global i32 0, align 4
@_au1200fb_devices = common dso_local global %struct.au1200fb_device* null, align 8
@AU1200_LCD_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1200fb_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1200fb_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.au1200fb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = icmp ne %struct.platform_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %76

11:                                               ; preds = %1
  %12 = call i32 @au1200_setpanel(i32* null)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %68, %11
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CONFIG_FB_AU1200_DEVS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  %18 = load %struct.au1200fb_device*, %struct.au1200fb_device** @_au1200fb_devices, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %18, i64 %20
  store %struct.au1200fb_device* %21, %struct.au1200fb_device** %4, align 8
  %22 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %23 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %22, i32 0, i32 0
  %24 = call i32 @unregister_framebuffer(%struct.TYPE_3__* %23)
  %25 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %26 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %17
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %33 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PAGE_ALIGN(i32 %34)
  %36 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %37 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %40 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_free_noncoherent(i32* %31, i32 %35, i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %29, %17
  %44 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %45 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %52 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = call i32 @fb_dealloc_cmap(%struct.TYPE_4__* %53)
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %57 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.au1200fb_device*, %struct.au1200fb_device** %4, align 8
  %63 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @kfree(i64 %65)
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %13

71:                                               ; preds = %13
  %72 = load i32, i32* @AU1200_LCD_INT, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = bitcast %struct.platform_device* %73 to i8*
  %75 = call i32 @free_irq(i32 %72, i8* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %8
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @au1200_setpanel(i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_free_noncoherent(i32*, i32, i64, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @free_irq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
