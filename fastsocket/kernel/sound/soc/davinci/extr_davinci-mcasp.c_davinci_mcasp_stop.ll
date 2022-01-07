; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_mcasp_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_mcasp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_audio_dev = type { i64, i64, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@DAVINCI_MCASP_WFIFOCTL = common dso_local global i64 0, align 8
@FIFO_ENABLE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RFIFOCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_audio_dev*, i32)* @davinci_mcasp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_mcasp_stop(%struct.davinci_audio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.davinci_audio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.davinci_audio_dev* %0, %struct.davinci_audio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %15 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DAVINCI_MCASP_WFIFOCTL, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @FIFO_ENABLE, align 4
  %20 = call i32 @mcasp_clr_bits(i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %8
  %22 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %23 = call i32 @mcasp_stop_tx(%struct.davinci_audio_dev* %22)
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %31 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DAVINCI_MCASP_RFIFOCTL, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @FIFO_ENABLE, align 4
  %36 = call i32 @mcasp_clr_bits(i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %39 = call i32 @mcasp_stop_rx(%struct.davinci_audio_dev* %38)
  br label %40

40:                                               ; preds = %37, %21
  ret void
}

declare dso_local i32 @mcasp_clr_bits(i64, i32) #1

declare dso_local i32 @mcasp_stop_tx(%struct.davinci_audio_dev*) #1

declare dso_local i32 @mcasp_stop_rx(%struct.davinci_audio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
