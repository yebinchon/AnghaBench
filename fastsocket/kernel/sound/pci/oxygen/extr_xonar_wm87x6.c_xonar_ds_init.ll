; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_ds_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_ds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GPIO_DS_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@GPIO_DS_INPUT_ROUTE = common dso_local global i32 0, align 4
@GPIO_DS_OUTPUT_FRONTLR = common dso_local global i32 0, align 4
@GPIO_DS_HP_DETECT = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@OXYGEN_GPIO_INTERRUPT_MASK = common dso_local global i32 0, align 4
@OXYGEN_INT_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"WM8776\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"WM8766\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_ds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_ds_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %5, align 8
  store %struct.xonar_wm87x6* %6, %struct.xonar_wm87x6** %3, align 8
  %7 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %8 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 300, i32* %9, align 4
  %10 = load i32, i32* @GPIO_DS_OUTPUT_ENABLE, align 4
  %11 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %12 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %15 = call i32 @wm8776_init(%struct.oxygen* %14)
  %16 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %17 = call i32 @wm8766_init(%struct.oxygen* %16)
  %18 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %19 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %20 = load i32, i32* @GPIO_DS_INPUT_ROUTE, align 4
  %21 = load i32, i32* @GPIO_DS_OUTPUT_FRONTLR, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @oxygen_set_bits16(%struct.oxygen* %18, i32 %19, i32 %22)
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %26 = load i32, i32* @GPIO_DS_HP_DETECT, align 4
  %27 = call i32 @oxygen_clear_bits16(%struct.oxygen* %24, i32 %25, i32 %26)
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %30 = load i32, i32* @GPIO_DS_INPUT_ROUTE, align 4
  %31 = call i32 @oxygen_set_bits16(%struct.oxygen* %28, i32 %29, i32 %30)
  %32 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %33 = load i32, i32* @OXYGEN_GPIO_INTERRUPT_MASK, align 4
  %34 = load i32, i32* @GPIO_DS_HP_DETECT, align 4
  %35 = call i32 @oxygen_set_bits16(%struct.oxygen* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @OXYGEN_INT_GPIO, align 4
  %37 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %38 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %42 = call i32 @xonar_enable_output(%struct.oxygen* %41)
  %43 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %44 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %47 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %48 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %47, i32 0, i32 0
  %49 = call i32 @snd_jack_new(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46, i32* %48)
  %50 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %51 = call i32 @xonar_ds_handle_hp_jack(%struct.oxygen* %50)
  %52 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %53 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_component_add(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %57 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snd_component_add(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wm8776_init(%struct.oxygen*) #1

declare dso_local i32 @wm8766_init(%struct.oxygen*) #1

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @xonar_enable_output(%struct.oxygen*) #1

declare dso_local i32 @snd_jack_new(i32, i8*, i32, i32*) #1

declare dso_local i32 @xonar_ds_handle_hp_jack(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
