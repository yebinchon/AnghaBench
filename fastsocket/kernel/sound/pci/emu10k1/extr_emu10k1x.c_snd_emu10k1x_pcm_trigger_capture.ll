; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_trigger_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_trigger_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { i32 }
%struct.emu10k1x = type { i32 }

@INTE_CAP_0_LOOP = common dso_local global i32 0, align 4
@INTE_CAP_0_HALF_LOOP = common dso_local global i32 0, align 4
@TRIGGER_CHANNEL = common dso_local global i32 0, align 4
@TRIGGER_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1x_pcm_trigger_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_pcm_trigger_capture(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu10k1x*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.emu10k1x_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.emu10k1x* %10, %struct.emu10k1x** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %15, align 8
  store %struct.emu10k1x_pcm* %16, %struct.emu10k1x_pcm** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %51 [
    i32 129, label %18
    i32 128, label %34
  ]

18:                                               ; preds = %2
  %19 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %20 = load i32, i32* @INTE_CAP_0_LOOP, align 4
  %21 = load i32, i32* @INTE_CAP_0_HALF_LOOP, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @snd_emu10k1x_intr_enable(%struct.emu10k1x* %19, i32 %22)
  %24 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %25 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %26 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %27 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %28 = call i32 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %26, i32 %27, i32 0)
  %29 = load i32, i32* @TRIGGER_CAPTURE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %24, i32 %25, i32 0, i32 %30)
  %32 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %7, align 8
  %33 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %54

34:                                               ; preds = %2
  %35 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %7, align 8
  %36 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %38 = load i32, i32* @INTE_CAP_0_LOOP, align 4
  %39 = load i32, i32* @INTE_CAP_0_HALF_LOOP, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x* %37, i32 %40)
  %42 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %43 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %44 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %45 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %46 = call i32 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %44, i32 %45, i32 0)
  %47 = load i32, i32* @TRIGGER_CAPTURE, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %42, i32 %43, i32 0, i32 %49)
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %34, %18
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1x_intr_enable(%struct.emu10k1x*, i32) #1

declare dso_local i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1x_ptr_read(%struct.emu10k1x*, i32, i32) #1

declare dso_local i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
