; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_efx_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32*, i32 }
%struct.snd_emu10k1 = type { i32* }

@NUM_EFX_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_efx_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_efx_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_emu10k1_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %4, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %16, align 8
  store %struct.snd_emu10k1_pcm* %17, %struct.snd_emu10k1_pcm** %5, align 8
  %18 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %24)
  %26 = add i32 %23, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub i32 %27, %28
  %30 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %31 = udiv i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %33 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = udiv i32 %38, 2
  %40 = add i32 %37, %39
  %41 = call i32 @snd_emu10k1_pcm_init_voice(%struct.snd_emu10k1* %32, i32 1, i32 1, i32 %35, i32 %36, i32 %40, i32* null)
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %43 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %49, %50
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @snd_emu10k1_pcm_init_voice(%struct.snd_emu10k1* %42, i32 1, i32 0, i32 %47, i32 %48, i32 %51, i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %87, %1
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NUM_EFX_PLAYBACK, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %66 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %67 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %74, %75
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %78 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @snd_emu10k1_pcm_init_voice(%struct.snd_emu10k1* %65, i32 0, i32 0, i32 %72, i32 %73, i32 %76, i32* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %64
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %60

90:                                               ; preds = %60
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_pcm_init_voice(%struct.snd_emu10k1*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
