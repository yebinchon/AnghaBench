; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.clcd_fb = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (%struct.clcd_fb*)* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @clcdfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clcdfb_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.clcd_fb*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %4 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %5 = call %struct.clcd_fb* @amba_get_drvdata(%struct.amba_device* %4)
  store %struct.clcd_fb* %5, %struct.clcd_fb** %3, align 8
  %6 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %7 = call i32 @amba_set_drvdata(%struct.amba_device* %6, i32* null)
  %8 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %9 = call i32 @clcdfb_disable(%struct.clcd_fb* %8)
  %10 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %11 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %10, i32 0, i32 3
  %12 = call i32 @unregister_framebuffer(%struct.TYPE_5__* %11)
  %13 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %14 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %21 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @fb_dealloc_cmap(%struct.TYPE_6__* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %26 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %30 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_put(i32 %31)
  %33 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %34 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %36, align 8
  %38 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %39 = call i32 %37(%struct.clcd_fb* %38)
  %40 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %41 = call i32 @kfree(%struct.clcd_fb* %40)
  %42 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %43 = call i32 @amba_release_regions(%struct.amba_device* %42)
  ret i32 0
}

declare dso_local %struct.clcd_fb* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, i32*) #1

declare dso_local i32 @clcdfb_disable(%struct.clcd_fb*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.clcd_fb*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
