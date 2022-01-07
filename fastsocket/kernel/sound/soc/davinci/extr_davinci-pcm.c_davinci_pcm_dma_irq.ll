; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_dma_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.davinci_runtime_data* }
%struct.davinci_runtime_data = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"davinci_pcm: lch=%d, status=0x%x\0A\00", align 1
@DMA_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @davinci_pcm_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_pcm_dma_irq(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.davinci_runtime_data*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %10, %struct.snd_pcm_substream** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %14, align 8
  store %struct.davinci_runtime_data* %15, %struct.davinci_runtime_data** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @DMA_COMPLETE, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %28 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %32 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %31)
  %33 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %8, align 8
  %34 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %37 = call i32 @davinci_pcm_enqueue_dma(%struct.snd_pcm_substream* %36)
  %38 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %8, align 8
  %39 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  br label %41

41:                                               ; preds = %25, %30, %26
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @davinci_pcm_enqueue_dma(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
