; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.pcmhw*, i32 }
%struct.pcmhw = type { i32*, i32, i32, i32, i32 }
%struct.snd_riptide = type { %struct.snd_pcm_substream* }

@snd_riptide_capture = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lbus_rec_path = common dso_local global i32 0, align 4
@PADC = common dso_local global i32 0, align 4
@ACLNK2PADC = common dso_local global i32 0, align 4
@ST_STOP = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_riptide*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.pcmhw*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_riptide* %7, %struct.snd_riptide** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %13 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %12, i32 0, i32 0
  store %struct.snd_pcm_substream* %11, %struct.snd_pcm_substream** %13, align 8
  %14 = load i32, i32* @snd_riptide_capture, align 4
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pcmhw* @kzalloc(i32 24, i32 %17)
  store %struct.pcmhw* %18, %struct.pcmhw** %5, align 8
  %19 = load i32, i32* @lbus_rec_path, align 4
  %20 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %21 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @PADC, align 4
  %23 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %24 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @ACLNK2PADC, align 4
  %26 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %27 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %29 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 255, i32* %31, align 4
  %32 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %33 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 255, i32* %35, align 4
  %36 = load i32, i32* @ST_STOP, align 4
  %37 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %38 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  store %struct.pcmhw* %39, %struct.pcmhw** %41, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %44 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %42, i32 %43)
  ret i32 %44
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
