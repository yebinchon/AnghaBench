; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_ds_handle_hp_jack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_ds_handle_hp_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32*, i32 }

@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_DS_HP_DETECT = common dso_local global i32 0, align 4
@GPIO_DS_OUTPUT_FRONTLR = common dso_local global i32 0, align 4
@WM8766_DAC_CTRL = common dso_local global i64 0, align 8
@WM8766_MUTEALL = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_ds_handle_hp_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_ds_handle_hp_jack(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 1
  %8 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %7, align 8
  store %struct.xonar_wm87x6* %8, %struct.xonar_wm87x6** %3, align 8
  %9 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %10 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %13 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %14 = call i32 @oxygen_read16(%struct.oxygen* %12, i32 %13)
  %15 = load i32, i32* @GPIO_DS_HP_DETECT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %21 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @GPIO_DS_OUTPUT_FRONTLR, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 0, %24 ], [ %26, %25 ]
  %29 = load i32, i32* @GPIO_DS_OUTPUT_FRONTLR, align 4
  %30 = call i32 @oxygen_write16_masked(%struct.oxygen* %20, i32 %21, i32 %28, i32 %29)
  %31 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %32 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @WM8766_DAC_CTRL, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @WM8766_MUTEALL, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i32, i32* @WM8766_MUTEALL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = load i64, i64* @WM8766_DAC_CTRL, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @wm8766_write_cached(%struct.oxygen* %47, i64 %48, i32 %49)
  %51 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %52 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = call i32 @snd_jack_report(i32 %53, i32 %60)
  %62 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %63 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @oxygen_read16(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @wm8766_write_cached(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @snd_jack_report(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
