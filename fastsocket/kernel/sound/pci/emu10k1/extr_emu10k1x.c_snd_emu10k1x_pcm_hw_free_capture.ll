; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_hw_free_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_hw_free_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1x_pcm_hw_free_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_pcm_hw_free_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.emu10k1x_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %4, align 8
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %10, align 8
  %12 = icmp eq %struct.emu10k1x_pcm* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %16, align 8
  store %struct.emu10k1x_pcm* %17, %struct.emu10k1x_pcm** %5, align 8
  %18 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %32 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %31, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %32, align 8
  br label %33

33:                                               ; preds = %22, %14
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
