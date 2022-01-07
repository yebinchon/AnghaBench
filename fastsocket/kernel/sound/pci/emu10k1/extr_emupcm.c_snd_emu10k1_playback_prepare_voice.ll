; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_prepare_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_prepare_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_voice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_emu10k1_pcm_mixer = type { i32* }

@IFATN = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@DCYSUSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_voice*, i32, i32, %struct.snd_emu10k1_pcm_mixer*)* @snd_emu10k1_playback_prepare_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_playback_prepare_voice(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_voice* %1, i32 %2, i32 %3, %struct.snd_emu10k1_pcm_mixer* %4) #0 {
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_emu10k1_voice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %11 = alloca %struct.snd_pcm_substream*, align 8
  %12 = alloca %struct.snd_pcm_runtime*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %6, align 8
  store %struct.snd_emu10k1_voice* %1, %struct.snd_emu10k1_voice** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_emu10k1_pcm_mixer* %4, %struct.snd_emu10k1_pcm_mixer** %10, align 8
  %17 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %7, align 8
  %18 = icmp eq %struct.snd_emu10k1_voice* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %86

20:                                               ; preds = %5
  %21 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %7, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %24, align 8
  store %struct.snd_pcm_substream* %25, %struct.snd_pcm_substream** %11, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %12, align 8
  %29 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %7, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 255
  store i32 %35, i32* %13, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %45

40:                                               ; preds = %20
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 2
  br label %46

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32 [ %44, %40 ], [ 0, %45 ]
  store i32 %47, i32* %16, align 4
  %48 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %10, align 8
  %49 = icmp ne %struct.snd_emu10k1_pcm_mixer* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %10, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  br label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %50
  %61 = phi i32 [ %58, %50 ], [ 0, %59 ]
  store i32 %61, i32* %14, align 4
  %62 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %63 = load i32, i32* @IFATN, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %68 = load i32, i32* @VTFT, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, 65535
  %72 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %67, i32 %68, i32 %69, i32 %71)
  %73 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %74 = load i32, i32* @CVCF, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, 65535
  %78 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %73, i32 %74, i32 %75, i32 %77)
  %79 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %80 = load i32, i32* @DCYSUSV, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %79, i32 %80, i32 %81, i32 32639)
  %83 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @snd_emu10k1_voice_clear_loop_stop(%struct.snd_emu10k1* %83, i32 %84)
  br label %86

86:                                               ; preds = %60, %19
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_voice_clear_loop_stop(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
