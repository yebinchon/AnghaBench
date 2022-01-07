; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.esschan* }
%struct.esschan = type { i32, i32 }
%struct.es1968 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1968_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca %struct.esschan*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.es1968* %7, %struct.es1968** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.esschan*, %struct.esschan** %11, align 8
  store %struct.esschan* %12, %struct.esschan** %4, align 8
  %13 = load %struct.es1968*, %struct.es1968** %3, align 8
  %14 = load %struct.esschan*, %struct.esschan** %4, align 8
  %15 = call i32 @snd_es1968_get_dma_ptr(%struct.es1968* %13, %struct.esschan* %14)
  %16 = load %struct.esschan*, %struct.esschan** %4, align 8
  %17 = getelementptr inbounds %struct.esschan, %struct.esschan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.esschan*, %struct.esschan** %4, align 8
  %25 = getelementptr inbounds %struct.esschan, %struct.esschan* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = urem i32 %23, %26
  %28 = call i32 @bytes_to_frames(%struct.TYPE_2__* %22, i32 %27)
  ret i32 %28
}

declare dso_local %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es1968_get_dma_ptr(%struct.es1968*, %struct.esschan*) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
