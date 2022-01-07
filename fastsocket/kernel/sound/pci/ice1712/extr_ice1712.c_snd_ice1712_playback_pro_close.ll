; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_pro_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_pro_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ice1712 = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)* }
%struct.snd_ice1712.0 = type opaque

@PRO_RATE_RESET = common dso_local global i64 0, align 8
@PRO_RATE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ice1712_playback_pro_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_playback_pro_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_ice1712* %5, %struct.snd_ice1712** %3, align 8
  %6 = load i64, i64* @PRO_RATE_RESET, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = load i32, i32* @PRO_RATE_DEFAULT, align 4
  %11 = call i32 @snd_ice1712_set_pro_rate(%struct.snd_ice1712* %9, i32 %10, i32 0)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)*, i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)** %18, align 8
  %20 = icmp ne i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)*, i32 (%struct.snd_ice1712.0*, %struct.snd_pcm_substream*)** %25, align 8
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = bitcast %struct.snd_ice1712* %27 to %struct.snd_ice1712.0*
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %30 = call i32 %26(%struct.snd_ice1712.0* %28, %struct.snd_pcm_substream* %29)
  br label %31

31:                                               ; preds = %21, %12
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ice1712_set_pro_rate(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
