; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_playback_silence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_playback_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_korg1212 = type { i64, i32 }

@.str = private unnamed_addr constant [49 x i8] c"K1212_DEBUG: snd_korg1212_playback_silence [%s]\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i32, i32)* @snd_korg1212_playback_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_playback_silence(%struct.snd_pcm_substream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_korg1212*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = call %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_korg1212* %11, %struct.snd_korg1212** %9, align 8
  %12 = load i32*, i32** @stateName, align 8
  %13 = load %struct.snd_korg1212*, %struct.snd_korg1212** %9, align 8
  %14 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @K1212_DEBUG_PRINTK_VERBOSE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.snd_korg1212*, %struct.snd_korg1212** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.snd_korg1212*, %struct.snd_korg1212** %9, align 8
  %23 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 2
  %26 = call i32 @snd_korg1212_silence(%struct.snd_korg1212* %19, i32 %20, i32 %21, i32 0, i32 %25)
  ret i32 %26
}

declare dso_local %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @K1212_DEBUG_PRINTK_VERBOSE(i8*, i32) #1

declare dso_local i32 @snd_korg1212_silence(%struct.snd_korg1212*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
