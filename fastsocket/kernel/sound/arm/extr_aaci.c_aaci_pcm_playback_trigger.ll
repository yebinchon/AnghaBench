; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.aaci* }
%struct.TYPE_2__ = type { %struct.aaci_runtime* }
%struct.aaci_runtime = type { i32 }
%struct.aaci = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @aaci_pcm_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aaci*, align 8
  %6 = alloca %struct.aaci_runtime*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.aaci*, %struct.aaci** %10, align 8
  store %struct.aaci* %11, %struct.aaci** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.aaci_runtime*, %struct.aaci_runtime** %15, align 8
  store %struct.aaci_runtime* %16, %struct.aaci_runtime** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.aaci*, %struct.aaci** %5, align 8
  %18 = getelementptr inbounds %struct.aaci, %struct.aaci* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %36 [
    i32 130, label %22
    i32 131, label %25
    i32 129, label %28
    i32 128, label %31
    i32 133, label %34
    i32 132, label %35
  ]

22:                                               ; preds = %2
  %23 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %24 = call i32 @aaci_pcm_playback_start(%struct.aaci_runtime* %23)
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %27 = call i32 @aaci_pcm_playback_start(%struct.aaci_runtime* %26)
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %30 = call i32 @aaci_pcm_playback_stop(%struct.aaci_runtime* %29)
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %33 = call i32 @aaci_pcm_playback_stop(%struct.aaci_runtime* %32)
  br label %39

34:                                               ; preds = %2
  br label %39

35:                                               ; preds = %2
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %35, %34, %31, %28, %25, %22
  %40 = load %struct.aaci*, %struct.aaci** %5, align 8
  %41 = getelementptr inbounds %struct.aaci, %struct.aaci* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aaci_pcm_playback_start(%struct.aaci_runtime*) #1

declare dso_local i32 @aaci_pcm_playback_stop(%struct.aaci_runtime*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
