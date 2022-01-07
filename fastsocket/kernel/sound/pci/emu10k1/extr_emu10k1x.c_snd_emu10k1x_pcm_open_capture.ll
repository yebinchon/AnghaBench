; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_open_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_open_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { %struct.snd_pcm_substream*, %struct.emu10k1x* }
%struct.emu10k1x = type { i32 }

@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_emu10k1x_pcm_free_substream = common dso_local global i32 0, align 4
@snd_emu10k1x_capture_hw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1x_pcm_open_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_pcm_open_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.emu10k1x*, align 8
  %5 = alloca %struct.emu10k1x_pcm*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.emu10k1x* %9, %struct.emu10k1x** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %15 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %21 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %22 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %20, i32 0, i32 %21, i32 64)
  store i32 %22, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %19
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.emu10k1x_pcm* @kzalloc(i32 16, i32 %27)
  store %struct.emu10k1x_pcm* %28, %struct.emu10k1x_pcm** %5, align 8
  %29 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %30 = icmp eq %struct.emu10k1x_pcm* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %36 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %37 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %36, i32 0, i32 1
  store %struct.emu10k1x* %35, %struct.emu10k1x** %37, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %40 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %39, i32 0, i32 0
  store %struct.snd_pcm_substream* %38, %struct.snd_pcm_substream** %40, align 8
  %41 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %5, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 2
  store %struct.emu10k1x_pcm* %41, %struct.emu10k1x_pcm** %43, align 8
  %44 = load i32, i32* @snd_emu10k1x_pcm_free_substream, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @snd_emu10k1x_capture_hw, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %34, %31, %24, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local %struct.emu10k1x_pcm* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
