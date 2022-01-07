; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_mixer_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_mixer_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { %struct.snd_trident_pcm_mixer* }
%struct.snd_trident_pcm_mixer = type { i32, i32, i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32 }
%struct.snd_pcm_substream = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@T4D_DEFAULT_PCM_VOL = common dso_local global i32 0, align 4
@T4D_DEFAULT_PCM_PAN = common dso_local global i32 0, align 4
@T4D_DEFAULT_PCM_RVOL = common dso_local global i32 0, align 4
@T4D_DEFAULT_PCM_CVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*, %struct.snd_trident_voice*, %struct.snd_pcm_substream*)* @snd_trident_pcm_mixer_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_pcm_mixer_build(%struct.snd_trident* %0, %struct.snd_trident_voice* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca %struct.snd_trident_voice*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_trident_pcm_mixer*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %5, align 8
  store %struct.snd_trident_voice* %1, %struct.snd_trident_voice** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %9 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %10 = icmp ne %struct.snd_trident* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %13 = icmp ne %struct.snd_trident_voice* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %16 = icmp ne %struct.snd_pcm_substream* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %11, %3
  %19 = phi i1 [ true, %11 ], [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %18
  %27 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %28 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %27, i32 0, i32 0
  %29 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %29, i64 %32
  store %struct.snd_trident_pcm_mixer* %33, %struct.snd_trident_pcm_mixer** %8, align 8
  %34 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %35 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %36 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %35, i32 0, i32 4
  store %struct.snd_trident_voice* %34, %struct.snd_trident_voice** %36, align 8
  %37 = load i32, i32* @T4D_DEFAULT_PCM_VOL, align 4
  %38 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %39 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @T4D_DEFAULT_PCM_PAN, align 4
  %41 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %42 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @T4D_DEFAULT_PCM_RVOL, align 4
  %44 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %45 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @T4D_DEFAULT_PCM_CVOL, align 4
  %47 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %48 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %50 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @snd_trident_notify_pcm_change(%struct.snd_trident* %49, %struct.snd_trident_pcm_mixer* %50, i64 %53, i32 1)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %26, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_trident_notify_pcm_change(%struct.snd_trident*, %struct.snd_trident_pcm_mixer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
