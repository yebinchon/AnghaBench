; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_earpiece_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_earpiece_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@WM8993_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8993_HPOUT2_IN_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @earpiece_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @earpiece_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %7, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %13 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %14 = call i32 @snd_soc_read(%struct.snd_soc_codec* %12, i32 %13)
  %15 = load i32, i32* @WM8993_HPOUT2_IN_ENA, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %33 [
    i32 128, label %19
    i32 129, label %28
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @WM8993_HPOUT2_IN_ENA, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %24 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snd_soc_write(%struct.snd_soc_codec* %23, i32 %24, i32 %25)
  %27 = call i32 @udelay(i32 50)
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %30 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @snd_soc_write(%struct.snd_soc_codec* %29, i32 %30, i32 %31)
  br label %35

33:                                               ; preds = %3
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %28, %19
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
