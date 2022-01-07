; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_mixer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_pcm_mixer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { %struct.snd_trident_pcm_mixer* }
%struct.snd_trident_pcm_mixer = type { i32* }
%struct.snd_trident_voice = type { i32 }
%struct.snd_pcm_substream = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*, %struct.snd_trident_voice*, %struct.snd_pcm_substream*)* @snd_trident_pcm_mixer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_pcm_mixer_free(%struct.snd_trident* %0, %struct.snd_trident_voice* %1, %struct.snd_pcm_substream* %2) #0 {
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
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %13 = icmp ne %struct.snd_pcm_substream* %12, null
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %15
  %24 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %25 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %24, i32 0, i32 0
  %26 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %25, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %26, i64 %29
  store %struct.snd_trident_pcm_mixer* %30, %struct.snd_trident_pcm_mixer** %8, align 8
  %31 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %32 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %34 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %8, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @snd_trident_notify_pcm_change(%struct.snd_trident* %33, %struct.snd_trident_pcm_mixer* %34, i64 %37, i32 0)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_trident_notify_pcm_change(%struct.snd_trident*, %struct.snd_trident_pcm_mixer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
