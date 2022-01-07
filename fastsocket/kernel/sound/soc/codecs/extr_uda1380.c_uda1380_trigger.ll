; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.uda1380_priv* }
%struct.uda1380_priv = type { i32 }
%struct.snd_soc_dai = type { i32 }

@UDA1380_MIXER = common dso_local global i32 0, align 4
@R14_SILENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @uda1380_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_device*, align 8
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca %struct.uda1380_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %7, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %16, align 8
  store %struct.snd_soc_device* %17, %struct.snd_soc_device** %8, align 8
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %8, align 8
  %19 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %21, align 8
  store %struct.snd_soc_codec* %22, %struct.snd_soc_codec** %9, align 8
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %24 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %23, i32 0, i32 0
  %25 = load %struct.uda1380_priv*, %struct.uda1380_priv** %24, align 8
  store %struct.uda1380_priv* %25, %struct.uda1380_priv** %10, align 8
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %27 = load i32, i32* @UDA1380_MIXER, align 4
  %28 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_codec* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %51 [
    i32 129, label %30
    i32 130, label %30
    i32 128, label %41
    i32 131, label %41
  ]

30:                                               ; preds = %3, %3
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %32 = load i32, i32* @UDA1380_MIXER, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @R14_SILENCE, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @uda1380_write_reg_cache(%struct.snd_soc_codec* %31, i32 %32, i32 %36)
  %38 = load %struct.uda1380_priv*, %struct.uda1380_priv** %10, align 8
  %39 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %38, i32 0, i32 0
  %40 = call i32 @schedule_work(i32* %39)
  br label %51

41:                                               ; preds = %3, %3
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %43 = load i32, i32* @UDA1380_MIXER, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @R14_SILENCE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @uda1380_write_reg_cache(%struct.snd_soc_codec* %42, i32 %43, i32 %46)
  %48 = load %struct.uda1380_priv*, %struct.uda1380_priv** %10, align 8
  %49 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %48, i32 0, i32 0
  %50 = call i32 @schedule_work(i32* %49)
  br label %51

51:                                               ; preds = %3, %41, %30
  ret i32 0
}

declare dso_local i32 @uda1380_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @uda1380_write_reg_cache(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
