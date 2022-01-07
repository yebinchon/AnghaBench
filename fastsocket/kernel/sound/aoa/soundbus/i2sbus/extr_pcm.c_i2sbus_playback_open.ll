; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_pcm.c_i2sbus_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_pcm.c_i2sbus_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.i2sbus_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @i2sbus_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2sbus_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.i2sbus_dev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = call %struct.i2sbus_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.i2sbus_dev* %6, %struct.i2sbus_dev** %4, align 8
  %7 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %4, align 8
  %8 = icmp ne %struct.i2sbus_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %4, align 8
  %15 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %16, align 8
  %17 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %4, align 8
  %18 = call i32 @i2sbus_pcm_open(%struct.i2sbus_dev* %17, i32 0)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.i2sbus_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @i2sbus_pcm_open(%struct.i2sbus_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
