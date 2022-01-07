; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_capture_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_capture_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.aaci* }
%struct.TYPE_2__ = type { %struct.aaci_runtime* }
%struct.aaci_runtime = type { i32, i32 }
%struct.aaci = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@CR_FEN = common dso_local global i32 0, align 4
@CR_COMPACT = common dso_local global i32 0, align 4
@CR_SZ16 = common dso_local global i32 0, align 4
@CR_SL3 = common dso_local global i32 0, align 4
@CR_SL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @aaci_pcm_capture_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_capture_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.aaci*, align 8
  %6 = alloca %struct.aaci_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.aaci*, %struct.aaci** %9, align 8
  store %struct.aaci* %10, %struct.aaci** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.aaci_runtime*, %struct.aaci_runtime** %14, align 8
  store %struct.aaci_runtime* %15, %struct.aaci_runtime** %6, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = call i32 @aaci_pcm_hw_params(%struct.snd_pcm_substream* %16, %struct.aaci_runtime* %17, %struct.snd_pcm_hw_params* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %2
  %23 = load i32, i32* @CR_FEN, align 4
  %24 = load i32, i32* @CR_COMPACT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CR_SZ16, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %29 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @CR_SL3, align 4
  %31 = load i32, i32* @CR_SL4, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %34 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.aaci*, %struct.aaci** %5, align 8
  %38 = getelementptr inbounds %struct.aaci, %struct.aaci* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %42 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %44 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CR_COMPACT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %22
  %50 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %51 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %22
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @aaci_pcm_hw_params(%struct.snd_pcm_substream*, %struct.aaci_runtime*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
