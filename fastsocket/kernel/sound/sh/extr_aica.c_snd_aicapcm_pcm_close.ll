; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_snd_aicapcm_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_snd_aicapcm_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_card_aica* }
%struct.snd_card_aica = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@aica_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_aicapcm_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_aicapcm_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_card_aica*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.snd_card_aica*, %struct.snd_card_aica** %7, align 8
  store %struct.snd_card_aica* %8, %struct.snd_card_aica** %3, align 8
  %9 = load i32, i32* @aica_queue, align 4
  %10 = call i32 @flush_workqueue(i32 %9)
  %11 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %12 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %18 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %17, i32 0, i32 1
  %19 = call i32 @del_timer(%struct.TYPE_4__* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %22 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kfree(i32 %23)
  %25 = call i32 (...) @spu_disable()
  ret i32 0
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spu_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
