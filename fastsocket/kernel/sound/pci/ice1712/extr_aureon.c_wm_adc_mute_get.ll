; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_wm_adc_mute_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_wm_adc_mute_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_ice1712 = type { i32 }

@WM_ADC_GAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_adc_mute_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adc_mute_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %18 = load i64, i64* @WM_ADC_GAIN, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call zeroext i16 @wm_get(%struct.snd_ice1712* %17, i64 %21)
  store i16 %22, i16* %6, align 2
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i32
  %25 = xor i32 %24, -1
  %26 = ashr i32 %25, 5
  %27 = and i32 %26, 1
  %28 = trunc i32 %27 to i16
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i16*, i16** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  store i16 %28, i16* %36, align 2
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @wm_get(%struct.snd_ice1712*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
