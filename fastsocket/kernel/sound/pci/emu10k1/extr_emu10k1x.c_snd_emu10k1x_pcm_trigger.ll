; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.emu10k1x_pcm* }
%struct.emu10k1x_pcm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.emu10k1x = type { i32 }

@INTE_CH_0_LOOP = common dso_local global i32 0, align 4
@INTE_CH_0_HALF_LOOP = common dso_local global i32 0, align 4
@TRIGGER_CHANNEL = common dso_local global i32 0, align 4
@TRIGGER_CHANNEL_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1x_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu10k1x*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.emu10k1x_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.emu10k1x* %11, %struct.emu10k1x** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %16, align 8
  store %struct.emu10k1x_pcm* %17, %struct.emu10k1x_pcm** %7, align 8
  %18 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %7, align 8
  %19 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %77 [
    i32 129, label %24
    i32 128, label %56
  ]

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %31 = load i32, i32* @INTE_CH_0_LOOP, align 4
  %32 = load i32, i32* @INTE_CH_0_HALF_LOOP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %33, %34
  %36 = call i32 @snd_emu10k1x_intr_enable(%struct.emu10k1x* %30, i32 %35)
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %39 = load i32, i32* @INTE_CH_0_LOOP, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @snd_emu10k1x_intr_enable(%struct.emu10k1x* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %7, align 8
  %45 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %47 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %48 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %49 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %50 = call i32 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %48, i32 %49, i32 0)
  %51 = load i32, i32* @TRIGGER_CHANNEL_0, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %46, i32 %47, i32 0, i32 %54)
  br label %80

56:                                               ; preds = %2
  %57 = load %struct.emu10k1x_pcm*, %struct.emu10k1x_pcm** %7, align 8
  %58 = getelementptr inbounds %struct.emu10k1x_pcm, %struct.emu10k1x_pcm* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %60 = load i32, i32* @INTE_CH_0_LOOP, align 4
  %61 = load i32, i32* @INTE_CH_0_HALF_LOOP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %62, %63
  %65 = call i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x* %59, i32 %64)
  %66 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %67 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %68 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %69 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %70 = call i32 @snd_emu10k1x_ptr_read(%struct.emu10k1x* %68, i32 %69, i32 0)
  %71 = load i32, i32* @TRIGGER_CHANNEL_0, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %70, %74
  %76 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %66, i32 %67, i32 0, i32 %75)
  br label %80

77:                                               ; preds = %2
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %56, %43
  %81 = load i32, i32* %9, align 4
  ret i32 %81
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
