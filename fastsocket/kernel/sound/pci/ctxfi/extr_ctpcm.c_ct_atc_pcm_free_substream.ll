; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctpcm.c_ct_atc_pcm_free_substream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctpcm.c_ct_atc_pcm_free_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { %struct.ct_atc_pcm* }
%struct.ct_atc_pcm = type { i32, i32 }
%struct.ct_atc = type { i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_runtime*)* @ct_atc_pcm_free_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_atc_pcm_free_substream(%struct.snd_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_pcm_runtime*, align 8
  %3 = alloca %struct.ct_atc_pcm*, align 8
  %4 = alloca %struct.ct_atc*, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %2, align 8
  %5 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %5, i32 0, i32 0
  %7 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  store %struct.ct_atc_pcm* %7, %struct.ct_atc_pcm** %3, align 8
  %8 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %3, align 8
  %9 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ct_atc* @snd_pcm_substream_chip(i32 %10)
  store %struct.ct_atc* %11, %struct.ct_atc** %4, align 8
  %12 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %13 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %12, i32 0, i32 0
  %14 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %13, align 8
  %15 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %16 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %3, align 8
  %17 = call i32 %14(%struct.ct_atc* %15, %struct.ct_atc_pcm* %16)
  %18 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %3, align 8
  %19 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ct_timer_instance_free(i32 %20)
  %22 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %3, align 8
  %23 = call i32 @kfree(%struct.ct_atc_pcm* %22)
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  store %struct.ct_atc_pcm* null, %struct.ct_atc_pcm** %25, align 8
  ret void
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(i32) #1

declare dso_local i32 @ct_timer_instance_free(i32) #1

declare dso_local i32 @kfree(%struct.ct_atc_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
