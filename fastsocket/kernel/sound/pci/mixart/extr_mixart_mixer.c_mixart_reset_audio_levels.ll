; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_mixer.c_mixart_reset_audio_levels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_mixer.c_mixart_reset_audio_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixart = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixart*)* @mixart_reset_audio_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixart_reset_audio_levels(%struct.snd_mixart* %0) #0 {
  %2 = alloca %struct.snd_mixart*, align 8
  store %struct.snd_mixart* %0, %struct.snd_mixart** %2, align 8
  %3 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %4 = call i32 @mixart_update_analog_audio_level(%struct.snd_mixart* %3, i32 0)
  %5 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %6 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.snd_mixart*, %struct.snd_mixart** %2, align 8
  %11 = call i32 @mixart_update_analog_audio_level(%struct.snd_mixart* %10, i32 1)
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @mixart_update_analog_audio_level(%struct.snd_mixart*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
