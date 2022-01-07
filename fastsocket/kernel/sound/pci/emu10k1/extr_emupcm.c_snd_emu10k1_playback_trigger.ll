; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32, i32* }
%struct.snd_emu10k1 = type { i32, %struct.snd_emu10k1_pcm_mixer* }
%struct.snd_emu10k1_pcm_mixer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm*, align 8
  %8 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %16, align 8
  store %struct.snd_emu10k1_pcm* %17, %struct.snd_emu10k1_pcm** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %107 [
    i32 130, label %22
    i32 132, label %35
    i32 131, label %35
    i32 129, label %85
    i32 133, label %85
    i32 128, label %85
  ]

22:                                               ; preds = %2
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %24 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1* %23, i32 1, i32 %26)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %29 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1* %28, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %2, %2, %22
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 1
  %38 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %37, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %38, i64 %41
  store %struct.snd_emu10k1_pcm_mixer* %42, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %44 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %50 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %43, i32 %48, i32 1, i32 0, %struct.snd_emu10k1_pcm_mixer* %49)
  %51 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %52 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %58 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %51, i32 %56, i32 0, i32 0, %struct.snd_emu10k1_pcm_mixer* %57)
  %59 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %60 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %59, i32 %62, i32 1, i32 1, %struct.snd_emu10k1_pcm_mixer* null)
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %65 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %64, i32 %69, i32 1, i32 0)
  %71 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %72 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %71, i32 %76, i32 0, i32 0)
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %79 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %78, i32 %81, i32 1, i32 1)
  %83 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %110

85:                                               ; preds = %2, %2, %2
  %86 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %87 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %89 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %90 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %88, i32 %93)
  %95 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %96 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %95, i32 %100)
  %102 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %103 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %104 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %102, i32 %105)
  br label %110

107:                                              ; preds = %2
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %85, %35
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %112 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1*, i32, i32, i32, %struct.snd_emu10k1_pcm_mixer*) #1

declare dso_local i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
