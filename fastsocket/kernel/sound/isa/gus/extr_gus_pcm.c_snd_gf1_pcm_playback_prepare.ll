; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_gf1_pcm_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.gus_pcm_private*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 0
  %10 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %9, align 8
  store %struct.gus_pcm_private* %10, %struct.gus_pcm_private** %4, align 8
  %11 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %12 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %13)
  %15 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %16 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %17)
  %19 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %20 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %22 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %25 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  %28 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %29 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  ret i32 0
}

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
