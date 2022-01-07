; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.aaci* }
%struct.TYPE_2__ = type { %struct.aaci_runtime* }
%struct.aaci_runtime = type { i32, i32 }
%struct.aaci = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@channels_to_txmask = common dso_local global i32* null, align 8
@CR_FEN = common dso_local global i32 0, align 4
@CR_COMPACT = common dso_local global i32 0, align 4
@CR_SZ16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @aaci_pcm_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.aaci*, align 8
  %6 = alloca %struct.aaci_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
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
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %18 = call i32 @params_channels(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** @channels_to_txmask, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp uge i32 %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** @channels_to_txmask, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %23, %2
  %32 = phi i1 [ true, %2 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %38 = call i32 @aaci_pcm_hw_params(%struct.snd_pcm_substream* %35, %struct.aaci_runtime* %36, %struct.snd_pcm_hw_params* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %31
  %42 = load i32, i32* @CR_FEN, align 4
  %43 = load i32, i32* @CR_COMPACT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CR_SZ16, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %48 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** @channels_to_txmask, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %55 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.aaci*, %struct.aaci** %5, align 8
  %59 = getelementptr inbounds %struct.aaci, %struct.aaci* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 4
  %62 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %63 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %65 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CR_COMPACT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %41
  %71 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %72 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %41
  br label %76

76:                                               ; preds = %75, %31
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @aaci_pcm_hw_params(%struct.snd_pcm_substream*, %struct.aaci_runtime*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
