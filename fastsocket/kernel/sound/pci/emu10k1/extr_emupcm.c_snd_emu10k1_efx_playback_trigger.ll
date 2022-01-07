; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32, i32* }
%struct.snd_emu10k1 = type { i32, i32* }

@NUM_EFX_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1_efx_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_efx_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
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
  switch i32 %21, label %145 [
    i32 130, label %22
    i32 132, label %46
    i32 131, label %46
    i32 128, label %119
    i32 129, label %119
    i32 133, label %119
  ]

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %29 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1* %28, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %42 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1* %41, i32 1, i32 %44)
  br label %46

46:                                               ; preds = %2, %2, %40
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %48 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %49 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %47, i32 %50, i32 1, i32 1, i32* null)
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %53 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %59 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %52, i32 %57, i32 0, i32 0, i32* %61)
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %83, %46
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %69 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %70 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %68, i32 %75, i32 0, i32 0, i32* %81)
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %63

86:                                               ; preds = %63
  %87 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %88 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %89 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %87, i32 %92, i32 0, i32 0)
  %94 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %95 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %96 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %94, i32 %97, i32 1, i32 1)
  store i32 1, i32* %8, align 4
  br label %99

99:                                               ; preds = %113, %86
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %105 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %106 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %104, i32 %111, i32 0, i32 0)
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %99

116:                                              ; preds = %99
  %117 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %118 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %148

119:                                              ; preds = %2, %2, %2
  %120 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %121 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %136, %119
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %128 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %129 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %127, i32 %134)
  br label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %122

139:                                              ; preds = %122
  %140 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %141 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %142 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1* %140, i32 %143)
  br label %148

145:                                              ; preds = %2
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %145, %139, %116
  %149 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %150 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %149, i32 0, i32 0
  %151 = call i32 @spin_unlock(i32* %150)
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_playback_invalidate_cache(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1*, i32, i32, i32, i32*) #1

declare dso_local i32 @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_playback_stop_voice(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
