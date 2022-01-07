; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_hdav_slim_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_hdav_slim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GPIO_SLIM_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@GPIO_SLIM_HDMI_DISABLE = common dso_local global i32 0, align 4
@GPIO_SLIM_FIRMWARE_CLK = common dso_local global i32 0, align 4
@GPIO_SLIM_FIRMWARE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"WM8776\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_hdav_slim_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_hdav_slim_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 1
  %6 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %5, align 8
  store %struct.xonar_wm87x6* %6, %struct.xonar_wm87x6** %3, align 8
  %7 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %8 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 300, i32* %9, align 4
  %10 = load i32, i32* @GPIO_SLIM_OUTPUT_ENABLE, align 4
  %11 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %12 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %15 = call i32 @wm8776_init(%struct.oxygen* %14)
  %16 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %17 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %18 = load i32, i32* @GPIO_SLIM_HDMI_DISABLE, align 4
  %19 = load i32, i32* @GPIO_SLIM_FIRMWARE_CLK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GPIO_SLIM_FIRMWARE_DATA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @oxygen_set_bits16(%struct.oxygen* %16, i32 %17, i32 %22)
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %26 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %25, i32 0, i32 0
  %27 = call i32 @xonar_hdmi_init(%struct.oxygen* %24, i32* %26)
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = call i32 @xonar_enable_output(%struct.oxygen* %28)
  %30 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %31 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snd_component_add(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wm8776_init(%struct.oxygen*) #1

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @xonar_hdmi_init(%struct.oxygen*, i32*) #1

declare dso_local i32 @xonar_enable_output(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
